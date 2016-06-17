

cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_swap

cd /home/shuai/Desktop/mytools/
./preempt 3 3 2 10000 1 7 2 0 0
./preempt 3 3 2 10000 1 7 2 1 0
./preempt 3 3 2 10000 1 7 2 2 0




cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_pull

cd /home/shuai/Desktop/mytools/
./preempt 3 3 2 10000 1 7 1 0 0
./preempt 3 3 2 10000 1 7 1 1 0
./preempt 3 3 2 10000 1 7 1 2 0



cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_push

cd /home/shuai/Desktop/mytools/
./preempt 3 3 2 10000 1 7 3 0 0
./preempt 3 3 2 10000 1 7 3 1 0
./preempt 3 3 2 10000 1 7 3 2 0


cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_challenge

cd /home/shuai/Desktop/mytools/
./preempt 3 3 2 10000 1 7 4 0 0
./preempt 3 3 2 10000 1 7 4 1 0
./preempt 3 3 2 10000 1 7 4 2 0

cd /home/shuai/Desktop/liblitmus/
./setsched Linux

cd /home/shuai/Desktop/mytools/
./mrsp 3 3 2 10000 1 7 0 
./mrsp 3 3 2 10000 1 7 1
./mrsp 3 3 2 10000 1 7 2 
