

cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_swap

cd /home/shuai/Desktop/mytools/
./preempt 3 4 3 10000 0 7 2 2 1


cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_pull

cd /home/shuai/Desktop/mytools/
./preempt 3 4 3 10000 0 7 1 2 1





cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_push

cd /home/shuai/Desktop/mytools/
./preempt 3 4 3 10000 0 7 3 2 1


cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_challenge

cd /home/shuai/Desktop/mytools/
./preempt 3 4 3 10000 0 7 4 2 1

