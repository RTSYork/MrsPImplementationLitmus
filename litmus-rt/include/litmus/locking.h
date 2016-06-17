#ifndef LITMUS_LOCKING_H
#define LITMUS_LOCKING_H

struct litmus_lock_ops;

/* Generic base struct for LITMUS^RT userspace semaphores.
 * This structure should be embedded in protocol-specific semaphores.
 */
struct litmus_lock {
	struct litmus_lock_ops *ops;
	int type;
};

struct litmus_lock_ops {
	/* Current task tries to obtain / drop a reference to a lock.
	 * Optional methods, allowed by default. */
	int (*open)(struct litmus_lock*, void* __user);
	int (*close)(struct litmus_lock*);

	/* Current tries to lock/unlock this lock (mandatory methods). */
	int (*lock)(struct litmus_lock*);
	int (*unlock)(struct litmus_lock*);

	/* The lock is no longer being referenced (mandatory method). */
	void (*deallocate)(struct litmus_lock*);
};

struct mrsp_semaphore {
	struct litmus_lock litmus_lock;

	/* current resource holder */
	struct task_struct *head;
	struct task_struct *helper;

	/* priority queue? of waiting tasks */
	spinlock_t lock;

	/* priority ceiling per cpu */
	int *prio_per_cpu;

	/*FIFO*/
	atomic_t owner_ticket;
	atomic_t next_ticket;

	atomic_t lock_holder_preempted;
	atomic_t helper_migrate_back;

	atomic_t preempted_running;
	atomic_t preempted_waiting;
	atomic_t preempted_again;

	atomic_t resume_itself;
	atomic_t resume_by_help;
	atomic_t resume_by_push;
	atomic_t resume_by_pull;
	atomic_t bug_migration;

	unsigned int order;
	struct cpumask resource_affinity;
};

#endif
