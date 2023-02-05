%Three domains: Relation between location of poles and zeroes in z plane, impulse response 
%and frequency response.
%y(n) = 0.77y(n-1)+x(n)+x(n-1)
%solution for 6(i)
clear; clc; clf;
num=[1 1]; den=[1 -0.77];
[z,p,k]=tf2zp(num,den);
% pole-zero plot
figure(1);
zplane(z,p);
title('Pole-zero plot');
% impulse response plot
figure(2);
impz(num,den,20);
title('Impulse response plot');
% Frequency response plot
figure(3);
freqz(num,den,64);
title('Frequency response plot');