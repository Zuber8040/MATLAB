%16,z
clc;
close all;
s=input("Enter the number of codewords: ");

if(s==1)
   z=1;
elseif(s==2)
   z=[1 1;1 -1];
else
  x= [1 1;1 -1];
  z=[];
  s=log(s)/log(2);
for i=1:s-1
   z=[x x;x -x];
   x=z;
end
end