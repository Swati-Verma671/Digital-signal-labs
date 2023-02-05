%For the LTI systems described by the following difference equations, generate its frequency 
%response. Comment on the type of response.
%y[n]-0.3695y[n-1]+0.1958y[n-2]=0.2066x[n]+0.4131x[n-1] +0.2066x[n-2]

% Frequency domain response of
% difference equations
% y[n]–0.3695y[n-1]+0.1958y[n-2] =
% 0.2066x[n]+0.4131x[n-1]+
% 0.2066x[n-2]
b1 = [0.2066 0.4131 0.2066];
a1 = [1 -0.3695 0.1958];
freqz(b1,a1,64);
title(" Frequency response")