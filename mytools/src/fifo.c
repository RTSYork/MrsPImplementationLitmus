#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <pthread.h>
#include <unistd.h>
#include <litmus.h>

#define PERIOD 100000
#define	RELATIVE_DEADLINE 100000
#define	EXEC_COST 50000

struct thread_context {
	int id;
};

void* rt_thread(void *tcontext);


#define CALL( exp ) do { \
		int ret; \
		ret = exp; \
		if (ret != 0) \
			fprintf(stderr, "%s failed: %m\n", #exp); \
		else \
			fprintf(stderr, "%s ok.\n", #exp); \
	} while (0)


void busy_waiting(long wake_up){
	long i;
	i=0;

	while(i<wake_up){
		i++;
	}
};

int main(int argc, char** argv)
{
	int i;
	int thread_count = 5;
	struct thread_context ctx[thread_count];
	pthread_t             task[thread_count];

	CALL(init_litmus());

	for (i = 0; i < thread_count; i++) {
		ctx[i].id = i+1;
		pthread_create(task + i, NULL, rt_thread, (void *) (ctx + i));
	}

	for (i = 0; i < thread_count; i++)
		pthread_join(task[i], NULL);

	printf("%s\n", "fifo_test finished.");
	return 0;
}

void* rt_thread(void *tcontext)
{
	struct thread_context *ctx = (struct thread_context *) tcontext;
	struct rt_task param;
	int lock_1 =-1;

	CALL(be_migrate_to_domain(ctx->id));
	//printf("id: %d\n", ctx->id);

	/* Set up task parameters */
	init_rt_task_param(&param);
	param.exec_cost = ms2ns(2000);
	param.period = ms2ns(2000);
	param.relative_deadline = ms2ns(2000);
	param.budget_policy = NO_ENFORCEMENT;
	param.cls = RT_CLASS_HARD;
	param.cpu = ctx->id;
	param.priority = 500;

	CALL( init_rt_thread() );

	CALL( set_rt_task_param(gettid(), &param) );

	CALL( task_mode(LITMUS_RT_TASK) );

	CALL(lock_1 = litmus_open_lock(7, 1, "b", init_prio_per_cpu(6, 500, 400, 300, 200, 100, 10)));
	//printf("lock generated: %d\n", lock_1);


	CALL(litmus_lock(lock_1));
	printf("in lock: %d\n", ctx->id);
	
	if(ctx->id == 1)
		sleep_next_period();
	//busy_waiting(ctx->id);

	CALL(litmus_unlock(lock_1));
	printf("after unlock: %d\n", ctx->id);

	CALL( task_mode(BACKGROUND_TASK) );
	printf("task finished: %d\n", ctx->id);

	return NULL;
}
