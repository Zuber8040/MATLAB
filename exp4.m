%12,1
clc;

clear all;

close all;

Er1=input('relative value of permitivity 1:');

Er2=input('relative value of permitivity 2:');

theta = 0:1:90;

theta_rad=theta*(pi/180);

par_refcoeff1= (-Er1*sin(theta_rad) +sqrt(Er1-cos(theta_rad).^2 ))./(sin(theta_rad)*Er1 +sqrt(Er1-cos(theta_rad).^2));

par_refcoeff2= (-Er2*sin(theta_rad) +sqrt(Er2-cos(theta_rad).^2 ))./(sin(theta_rad)*Er2 +sqrt(Er2-cos(theta_rad).^2));

per_refcoeff1= (sin(theta_rad) -sqrt(Er1-cos(theta_rad).^2 ))./(sin(theta_rad) +sqrt(Er1-cos(theta_rad).^2));

per_refcoeff2= (sin(theta_rad) -sqrt(Er2-cos(theta_rad).^2 ))./(sin(theta_rad) +sqrt(Er2-cos(theta_rad).^2));

ref_coe1=abs(par_refcoeff1);

ref_coe2=abs(par_refcoeff2);

ref_coe3=abs(per_refcoeff1);

ref_coe4=abs(per_refcoeff2);

disp(ref_coe1);

disp(ref_coe2);

disp(ref_coe3);

disp(ref_coe4);

subplot (2,1,1)

hold on

plot(theta,ref_coe1);

plot(theta,ref_coe2);

title('Parallel polarization')

xlabel('Angle of incidence');

ylabel('refection coefficient');

text(50,0.3,'Er1=4');

text(50,0.5,'Er2=12')

 

subplot (2,1,2)

hold on

plot(theta,ref_coe3)

plot(theta,ref_coe4)

title('Perpendicular polarization')

xlabel('Angle of incidence');

ylabel('refection coefficient');

text(60,0.4,'Er1=4');

text(50,0.65,'Er2=12')

