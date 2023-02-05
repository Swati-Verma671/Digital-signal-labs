%Generate a signal s[n] with three sinusoidal components at 50, 120 and 240Hz corrupted 
%by AWGN. Plot the spectrum and identify the signal components.
% identification of sinusoids in noise
fs=2000; 
t = (0:199)/fs;
s = sin(2*pi*50.*t) + sin(2*pi*120.*t) +sin(2*pi*240.*t);
awgn = (0.5*randn(1,200)+.25); % N(0.25, 0.25)
sn = s+awgn;
subplot(211), plot(t,sn);
title(' Sinusoid with noise'); grid;
Sn = fft(sn,200);
f = 0:10:990;
sfmag = abs(Sn);
subplot(212), plot(f,sfmag(1:100));
title(' Spectral estimation'); grid;
