%%A small set of elementary signals is needed in this exercise. To begin, create the 
%following signals of length 16 (0 ≤ 𝑛 ≤ 15)
%b[n], a 16-point block sequence with unit amplitude.
%r[n), the first 16 points of the ramp function, defined as nu[n].
%t[n], 16 points of a periodic triangular wave with period 8, a maximum value of
%one, a minimum value of 0, and starting point n = 0.
%e[n], the first 16 points of the one-sided exponential, (5/6)nu[n).
%Write the MATLAB code to plot the above signals. Using the elementary signals just 
%created, write the code to plot the following new signals:
%i. 𝑣[𝑛] = 𝑟[𝑛 − 6]𝑢[𝑛]
%ii. 𝑧[𝑛] = 𝑡[𝑛](𝑢[𝑛] − 𝑢[𝑛 − 10])


%% Workspace Initialization.
clc; clear; close all;
%% Generate the basic signals of common length 16.
N = 16;
n = 0:N-1;
b = ones(1,N); % Block of ones.
r = n; % Ramp function.
P = 8; % Triangular wave period.
n1 = 0:P/2-1;
n2 = P/2:P-1;
P1 = P*ones(1,length(n2));
A = 1;
tri_block = [2*A*n1/P 2*A*(P1-n2)/P] ; 
t = [tri_block tri_block]; % % Periodic Triangular wave 
e = (5/6).^n; % One sided exponential.
figure(1)
stem(n,b);
figure(2)
stem(n,r);
figure(3)
stem(n,t);
figure(4)
stem(n,e);
%% i. Create and display r[n-6]*u[n].
figure('Name', 'Tutorial-2. Elementary Signals');
stem(n,r);
grid;
hold on;
stem(n+6,r,'r*');
title('r[n] (blue) and v[n]=r[n-6]*u[n] (red)');
%% ii. Create and display z[n]=t[n]*(u[n]-u[n-10]).
z = [t(1:10) zeros(1,6);]; 
figure('Name',' Tutorial-2. Elementary Signals');
stem(n,t);
grid;
hold on;
stem(n,z,'r*');
title('t[n] (blue) and z[n]=t[n]*(u[n]-u[n-10]) (red)');