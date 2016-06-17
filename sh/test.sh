
#cd /home/shuai/Desktop/liblitmus/
#./setsched mrsp_swap

#cd /home/shuai/Desktop/mytools/
#./preempt 1 3 2 10000 0 7 2 0 1




#cd /home/shuai/Desktop/liblitmus/
#./setsched mrsp_pull

#cd /home/shuai/Desktop/mytools/
#./preempt 1 3 2 10000 0 7 1 0 1



#cd /home/shuai/Desktop/liblitmus/
#./setsched mrsp_push

#cd /home/shuai/Desktop/mytools/
#./preempt 1 3 2 10000 0 7 3 0 1


#cd /home/shuai/Desktop/liblitmus/
#./setsched mrsp_challenge

#cd /home/shuai/Desktop/mytools/
#./preempt 1 3 2 10000 0 7 4 0 1


#cd /home/shuai/Desktop/liblitmus/
#./setsched Linux

#cd /home/shuai/Desktop/mytools/
#./mrsp 1 3 2 10000 0 7 0

cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_challenge

cd /home/shuai/Desktop/mytools/
./preempt 1 3 2 10000 0 7 4 0 1
./preempt 1 3 2 10000 0 7 4 1 1
./preempt 1 3 2 10000 0 7 4 2 1


cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_challenge

cd /home/shuai/Desktop/mytools/
./preempt 2 3 2 10000 0 7 4 0 1
./preempt 2 3 2 10000 0 7 4 1 1
./preempt 2 3 2 10000 0 7 4 2 1


cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_challenge

cd /home/shuai/Desktop/mytools/
./preempt 3 3 2 10000 0 7 4 0 1
./preempt 3 3 2 10000 0 7 4 1 1
./preempt 3 3 2 10000 0 7 4 2 1


cd /home/shuai/Desktop/liblitmus/
./setsched mrsp_challenge

cd /home/shuai/Desktop/mytools/
./preempt 3 3 2 10000 1 7 4 0 1
./preempt 3 3 2 10000 1 7 4 1 1
./preempt 3 3 2 10000 1 7 4 2 1
