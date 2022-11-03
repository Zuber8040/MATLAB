%I=1,J=2,N=4
clc;
i=input('Enter non negative value of i = ');
j=input('enter non negative value of j =');
n=input('enter pathloss exponent n =');
N=i^2+j^2+i*j;
disp('cluster size =N= ');
disp(N);
disp('cochannel reuse ratio=Q=');
Q=sqrt(3*N);
disp(Q);
StoIidealomni=Q^n/6;
disp('S/I for ideal case omnidireational ');
StoIidealomni_db=10*log10(StoIidealomni);
disp(StoIidealomni_db);
disp('S/I for worst case omniditerctinal antena');
StoIworstOMNI=1/(2*Q^-n +2*(Q-1)^-n + 2*(Q+1)^-n);
StoIworstOMNI_db=10*log10(StoIworstOMNI);
disp(StoIworstOMNI_db);
StoIidealsect3=Q^n/2;
StoIidealsect3_db=10*log10(StoIidealsect3);
disp('S/I in ideal case 120 degree sectoring=');
disp(StoIidealsect3_db);
StoIworst_Sect3=1/(Q^-n +(Q+0.7)^-n);
StoIworst_Sect3_db=10*log10(StoIworst_Sect3);
disp('S/I for 120 degree sectoring in worstcase condition' )
disp(StoIworst_Sect3_db);
disp('S/I for 60 degree setoring ideal case');
StoIidealsect2=Q^n/1;
StoIidealsect2_db=10*log10(StoIidealsect2);
disp(StoIidealsect2_db);
StoIworst_Sect2=1/((Q+0.7)^-n);
StoIworst_Sect2_db=10*log10(StoIworst_Sect2);
disp('S/I for 60 degree sectoring in worstcase condition' )
disp(StoIworst_Sect2_db)