%Find the DFS coefficients of the signal x[n]=1+sin(pin/12 + 3pi/8)
clear; clc;
n= 0:23; phi=3*pi/8;
x=1+sin(pi*n/12 + phi);
X=fft(x,24)/24;