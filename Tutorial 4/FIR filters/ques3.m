%Determine the impulse response of an ideal lowpass filter with linear phase characteristics. 
%Truncate the impulse response at different lengths, say N=11, 21, 31, 41 and observe the 
%magnitude response of the filters. Gibbs phenomenon
clear;clc;clf;
M=input('enter the length of the filter:'); 
w_c=pi/3;
Mby2=(M-1)/2;
n=0:M-1;
h_d = sin(w_c*(n-Mby2))./(pi*(n-Mby2)); 
h_d(Mby2+1) = w_c/pi;
[H,w] = freqz(h_d,1);
subplot(211), stem(n,h_d); 
subplot(212), plot(w/pi,abs(H));
figure
freqz(h_d,1);