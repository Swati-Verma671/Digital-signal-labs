%Compute and plot the DTFT of the following sequence and observe the properties
%s[n]= A cos(2pif0n + phi) Try for fo=100Hz, phi=pi/6 and different lengths of sequence.

clear; clc; clf;
A = 1; f0 = 100; phi = pi/6; fs = 2000;
N= input('Enter the length of sequence:');
n = 0: 1/fs : (N-1)/fs;
sig = A * cos (2*pi*f0*n + phi);
w_axis = linspace(-1, 1, 1024);
time_axis=0:length(sig)-1;
F=fftshift(fft(sig,1024));
sig_dtft=abs(F);
subplot(2,1,1), stem(time_axis,sig);
title('Signal');
xlabel('Index');
subplot(2,1,2), plot(w_axis,sig_dtft);
title('DTFT Magnitude');
xlabel('Digital Frequency');