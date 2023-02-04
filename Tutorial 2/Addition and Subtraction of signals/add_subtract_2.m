%Compute and plot the output response of the LTI system whose impulse response 
%h[n] = 1 ; 0 n  5
%0 ; otherwise for the input, x[n] = {1 4 2 6}

clf;
clear
x=input('enter input sequence') %x = [1 4 2 6];
h=input('enter h(n)') %h = [1 1 1 1 1 1];
x1=length(x); 
h1=length(h);
s1=x1+h1-1; n=0:s1-1;
y = conv(x,h)
stem(n,y)