%v=26,f=1850000000,angle=0
prompt_v='Enter the value of v: ';
v=input(prompt_v);
prompt_f='Enter the value of frequency(f): '; 
f=input(prompt_f);
c=300000000;
lambda=c./f;
fprintf('lambda: %d\n',lambda);
a=v./lambda;
prompt_x='Enter the value of angle: ';
x=input (prompt_x);
b=cos(x);
fprintf('cos(x): %d\n',b);
del_f=a*b;
fprintf('doppler effect: %f \n',del_f);
fr=f+del_f;
fprintf('received frequency: %f \n',fr);