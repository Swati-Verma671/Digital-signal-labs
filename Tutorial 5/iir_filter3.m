%Generate a signal s(n) with three sinusoidal components at 5, 15 and 30Hz and sampled 
%at 100Hz. Design an bandpass elliptic filter to keep the 15Hz sinusoid and eliminate the 
%5 and 30Hz harmonics.
fs=100; t=(1:100)/fs;
s= sin(2*pi*5*t)+sin(2*pi*15*t)+sin(2*pi*30*t);
plot(t,s); grid;
title('Time domain waveform (5,15,30 Hz)');
% Design filter to keep 15 Hz and remove others
wp1=10/50; wp2=20/50; ws1=5/50; ws2=25/50;
wp=[wp1,wp2]; ws=[ws1,ws2]; rp=0.1; rs=40;
[n,wn]=ellipord(wp,ws,rp,rs)
[b,a] = ellip(n,rp,rs,wn);
freqz(b,a);
[H,w] = freqz(b,a);
plot(w*fs/(2*pi),abs(H)); grid;
sf = filter(b,a,s);
subplot(211); plot(t,sf); grid;
title('Filtered signal 15Hz');
S= fft(s,512); SF=fft(sf,512);
f=(0:255)/256*(fs/2);
subplot(212); plot(f, abs([S(1:256)', SF(1:256)'])); grid