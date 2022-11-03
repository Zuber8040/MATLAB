
clc;
snrdb =[1 5 10 15 20 25]; 
power=(0.1.*snrdb);
p=10.*power;
b =500;
m=1;
n=1;
c11=b*(log2(1+m*n*p));
subplot(2,3,1);

plot(snrdb,c11);
m=2;
n=2; 
c22=b*(log2(1+m*n*p));
subplot(2,3,2);
plot(snrdb,c22);


m=3;
n=3;
c33=b*(log2(1+m*n*p));
subplot(2,3,3);
plot(snrdb,c33);
subplot(2,3,5);

plot(p,c11,p,c22,p,c33);
xlabel('Channel Capacity');
ylabel('Linear SNR');
title(('Channel Capacity'));
legend('m=1,n=1','m=2,n=2','m=3 n=3');
grid on