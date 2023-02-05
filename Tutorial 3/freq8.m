%Generate a real-valued test signal v[n] using the MATLAB function rand of length N=15 
%or 16. Compute DFT of v[n] to get V[k] and then try the following for even and odd lengths
%Compare DFT ve[n] with Re V[k] and DFT vo[n] with Im V[k]

clear;clc;clf;
N=15;nn=0:(N-1);kk=nn;
v=rand(1,N);
V=fft(v,N);
vfold=[v(1) v(N:-1:2)];
veven=0.5*(v+vfold);
vodd=0.5*(v-vfold);
Veven=fft(veven,N);
Vodd=fft(vodd,N);
subplot(321), stem(nn,veven);
title('veven(n)');
axis([0 N-1 0 1]);
subplot(322), stem(nn,vodd);
title('vodd(n)');
axis([0 N-1 -1 1]);
subplot(323), stem(kk,real(V));
title('ReV(k)');
axis([0 N-1 -2 10]);
subplot(324), stem(kk,Veven);
title('Ve(k)');
axis([0 N-1 -2 10]);
subplot(325), stem(kk,imag(V));
title('ImV(k)');
axis([0 N-1 -2 2]);
subplot(326), stem(kk,imag(Vodd));
title('Im(Vo(k))');
axis([0 N-1 -2 2]);