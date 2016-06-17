

/etc/init.d/irqbalance stop

echo "1" > /proc/irq/default_smp_affinity
echo "1" > /proc/irq/1/smp_affinity
echo "1" > /proc/irq/7/smp_affinity
echo "1" > /proc/irq/8/smp_affinity
echo "1" > /proc/irq/9/smp_affinity
echo "1" > /proc/irq/12/smp_affinity
echo "1" > /proc/irq/17/smp_affinity
echo "1" > /proc/irq/18/smp_affinity
echo "1" > /proc/irq/120/smp_affinity
echo "1" > /proc/irq/123/smp_affinity
echo "1" > /proc/irq/124/smp_affinity
echo "1" > /proc/irq/125/smp_affinity
echo "1" > /proc/irq/126/smp_affinity
echo "1" > /proc/irq/127/smp_affinity
echo "1" > /proc/irq/128/smp_affinity
echo "1" > /proc/irq/129/smp_affinity
echo "1" > /proc/irq/130/smp_affinity
echo "1" > /proc/irq/131/smp_affinity
echo "1" > /proc/irq/132/smp_affinity
echo "1" > /proc/irq/133/smp_affinity

ifconfig eth0 down
ifconfig lo down
ifconfig wlan0 down
