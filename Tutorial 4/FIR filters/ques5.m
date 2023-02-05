%Design the above filter using Hanning window, Hamming window, Blackmann window, 
%and Bartlett window. Plot the impulse response, amplitude response and zero locations of 
%the designed filter and compare their performance



% lowpass design using window functions clear;close all;
w_p=0.2*pi;
M = input('Enter order of filter:');
h_hann=fir1 (M,w_p/pi,hann(M+1));
h_hamm=fir1 (M,w_p/pi,hamming(M+1));
h_blackman=fir1 (M,w_p/pi,blackman(M+1));
h_bartlett=fir1 (M,w_p/pi,bartlett(M+1));
freqz(h_hann, 1,512);title(['Hanning window, M=' ,int2str(M)]);
figure;
freqz(h_hamm,1,512);title(['Hamming window, M=' ,int2str(M)]);
figure;
freqz(h_blackman,1,512);title(['Blackman window, M=',int2str(M)]);
figure;
freqz(h_bartlett,1 ,512);title(['Bartlett window, M=' ,int2str(M)]);
figure;
n=0:M;
subplot(2,2,1 ),stem(n,h_hann);
title(['Hanning window, M=',int2str(M)]);
subplot(2,2,2),stem(n,h_hamm);
title(['Hamming window, M=' ,int2str(M)]); 
subplot(2,2,3),stem(n,h_blackman);
title(['Blackman window, M=' ,int2str(M)]);
subplot(2,2,4) ,stem(n ,h_bartlett);
title(['Bartlett window, M=' ,int2str(M)]);
figure;
subplot(2,2,1 ),zplane(h_hann,1 );
title(['Hanning window, M=' ,int2str(M)]);
subplot(2,2,2),zplane(h_hamm,1 );
title(['Hamming window, M=' ,int2str(M)]); 
subplot(2,2,3),zplane(h_blackman,1 );
title(['Blackman window, M=' ,int2str(M)]);
subplot(2,2,4 ),zplane(h_bartlett,1 );
title(['Bartlett window, M=' ,int2str(M)]);