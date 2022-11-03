clc;
%inputing the values from the user
i = input('Enter the value of i : ');
j = input('Enter the value of j : ');
R = input('Enter the radius: ');
%for calculation of city area cell area, and the value of N
city_area = input('enter the area of the city : ');
N = i^2+j^2+i*j;
cell_area = 2.5981 * R^2
%channel bandwidth and spectrum band
bandwidth = 60*10^3
spectrum = 40*10^6
%calculating the total cells and channel
total_cells = city_area/cell_area;
tot_channels = spectrum/bandwidth;
%calculating the values of k, M and C
k = tot_channels/N;
M = total_cells/N;
C = M*k*N
n = 4
s_i = ((sqrt(3*N))^n)/6 % 6 is the total number of co-channel present
s_idb = 10*log(s_i)
%printing the outputs
fprintf('Number of cells per cluster: %d \n',N);
fprintf('Number of times cluster is replicated: %f \n',M);
fprintf('group of channels: %f \n',k);
fprintf('channel capacity: %f \n',C);
fprintf('S/I ratio is: %f \n',s_idb);


