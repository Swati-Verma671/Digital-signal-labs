%Write a function that can synthesise a waveform in the form 
%where fo is the fundamental frequency.
%For fo = 25Hz, Xk = j4/k for k odd and 0 for k even, plot x(t) for N=5,10 and 25. Explain 
%what happens when N. repeat the synthesis with fo=1kHz and listen to the cases 
%N=1,2,3,4,5,10. Ensure that the sampling frequency fs in sound(x,fs) is high to prevent 
%aliasing.

clear; clc; clf; 
T = 0.12; sum = 0; f0 = 25; fs = 1000;
%Change f0 and N values 
N=25;
t = 0; i = 1;
while t < T
 sum = 0;
 k = 1;
 while k <= N
 X = j*4/(k*pi);
 sum = sum+X*exp(j*2*pi*k*f0*t);
 k=k+2;
 end;
 x(i)=real(sum);
 t=t+1/fs;
 i=i+1;
end;
t= 0:1/fs:T-1/fs;
plot(t,x)
title('Wave form for N=25')