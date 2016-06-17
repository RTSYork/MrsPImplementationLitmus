


cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_push

cd /home/shuai/Desktop/mytools/
./preempt 3 3 2 10000 1 7 2 0 1
./preempt 3 3 2 10000 1 7 2 0 0

cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_challenge

cd /home/shuai/Desktop/mytools/
./preempt 3 3 2 10000 1 7 2 0 1
./preempt 3 3 2 10000 1 7 2 0 0


