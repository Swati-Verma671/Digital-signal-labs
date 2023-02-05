%Design a linear phase FIR bandpass filter to satisfy the following specifications:
%Passband 8-12 kHz
%Stopband ripple 0.001
%Peak passband ripple 0.0015
%Sampling frequency 44.14 kHz
%Transition width 3 kHz
%Obtain the filter coefficients and compare the frequency response for the filter using (a) 
%window method (b) frequency sampling method and (c) optimal method




clear; clc; close all;
h=fir1(82,[0.3624 0.5437],blackman(83));
freqz(h,1,512)
figure
% mod5_7b
f = [0 5 8 12 15 22.07]/22.07; 
m = [0 0 1 1 0 0];
b = fir2(80,f,m);
[h,w] = freqz(b,1,128);
plot(f,m,w/pi,abs(h));
legend('ldeal','fir2 Designed')
title('Comparison of Frequency Response Magnitudes');
figure
% mod5_7c
rp = 0.0015; % Passband ripple
rs = 0.001; % Stopband ripple
fs = 44140; % Sampling frequency
f = [5000 8000 12000 15000]; % Cutoff frequencies 
a = [0 1 0 ]; % Desired amplitudes
dev=[rs rp rs]; % deviations
[n, fo, mo, w]=remezord(f, a, dev, fs);
hopt = remez(n,fo,mo,w);
[H ,W]=freqz(hopt,1,1024);
