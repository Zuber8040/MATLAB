clc;
clear;
g=[1 0 0 1 1];
init=[1 1 0 0];
curr=[1 1 0 0];
mask=[0 0 0 1];
NoOfOutBits=15;

h=comm.PNS('GenPoly',g,'InitialState',init,'CurrentStates',curr,'Mask',mask,'Numbitsout',NoOfOutBits);

h.generate'