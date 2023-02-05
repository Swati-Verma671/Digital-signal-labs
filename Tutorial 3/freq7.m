%Compute and plot the DFT of the following sequences and observe their properties
%Three point boxcar; xb = {1 1 1 0 0 0 0 0}

%solution for 7(iii)
N = 8; nn = 0:(N-1); kk = nn; 
xb = [1 1 1 0 0 0 0 0];
Xb = fft(xb,N);
subplot(221), stem(nn,xb);
title(' x(n) '); xlabel(' Index (n) ');
axis([0 7 0 1]);
subplot(222), stem(kk,real(Xb));
title(' Real part of DFT ');
xlabel(' Index (k) ');
axis([0 7 -1 4]);
subplot(224), stem(kk,imag(Xb));
title(' Imag part of DFT '); 
xlabel(' Index (k) ');
axis([0 7 -2 2]);
