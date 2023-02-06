%Design an IIR low pass filter for the above specifications using direct method. Use MATLAB 
%function yulewalk.
clear; clc; close all;
Fs=8000;
wp=1000*2/Fs; ws=1500*2/Fs;
wpa=1000*2*pi; wsa=1500*2*pi;
Rp=0.5; Rs=30; 
% Direct method
f = [0 wp ws 1];
m = [1 1 0 0];
[b,a] = yulewalk(10,f,m);
[h,w] = freqz(b,a,128);
plot(f,m,w/pi,abs(h),'--')
legend('Ideal','yulewalk Designed')
title('Comparison of Frequency Response Magnitudes')