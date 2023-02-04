%Compute the overall impulse response of the system shown in figure.
%h1[n] = (½)n 0 <= n => 5
% 0 otherwise
%h2[n] = 1 0 <= n => 5
% 0 otherwise
%y3[n] = 0.25 x[n] + 0.5x[n-1] + 0.25 x[n-2]
%y[n] = 0.9 y[n-1] – 0.81 y[n-2] + v[n] + v[n-1]
n=0:5;
h1=(0.5).^n; h2=ones(1,6);
h5=conv(h1,h2);
% y3(n) = 0.25 x(n)+0.5 x(n-1)+0.25 x(n-2);
h3 = impz([0.25 0.5 0.25],1,max(size(h5)));
h6 = h5 + h3';
% y(n) = 0.9 y(n-1) - 0.81 y(n-2)+v(n)+v(n-1);
n4=[1 1 0]; d4=[1 -0.9 0.81];
 h4 = impz(n4,d4,20);
h = conv (h6, h4); x=0:29;
stem(x,h); grid on; title('Overall Impulse Response')