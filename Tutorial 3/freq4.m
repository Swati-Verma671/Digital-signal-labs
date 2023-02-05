%Determine and plot the real and imaginary parts and the magnitude and phase spectra of 
%the following DTFT for various values of r and theta.

clear; clc;
theta=60*pi/180; 
r=0.5
w= -pi:pi/100:pi;
den = 1 -2*r*cos(theta)*exp(-j*w) +r^2*exp(-j*2*w);
G=1./den;
subplot (221), plot(w, real(G));
title('Real part')
subplot (222), plot(w, imag(G));
title('Imaginary part')
subplot (223), plot(w, abs(G));
title('Magnitude')
subplot (224), plot(w, angle(G));
title('Phase')