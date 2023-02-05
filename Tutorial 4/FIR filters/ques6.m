%Design a FIR low pass filter of order 20 with the following frequency response using Remez 
%exchange algorithm
% FIR filter design using Remez Exchange method
n = 20; % length of filter
f = [0 0.4 0.5 1]; % filter specs
m = [1 1 0 0];
bfir = remez(n,f,m)
[hfir,wfir] = freqz(bfir);
plot(f,m,wfir/pi,abs(hfir),'-');
title(' n=20 FIR LPF');
