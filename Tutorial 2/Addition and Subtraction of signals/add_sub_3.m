%For the LTI systems described by the following difference equations, generate its 
%impulse response, and unit step response.
 % y[n] – 0.3695 y[n-1]+0.1958y[n-2]=0.2066x[n]+0.4131x[n-1]+0.2066x[n-2]
b1 = [0.2066 0.4131 0.2066];
a1 = [1 -0.3695 0.1958];
 % Impulse response of the system
impz(b1,a1,20);
title("Impulse response"); 
 % Step response of the system
step_n = [ones(1,20)];
y = filter(b1,a1,step_n);
stem(y);
title("Step response");