%%Perform the operations 𝑥1 + 𝑥2and 𝑥1 − 𝑥2 where 𝑥1 = 0.5
%n
%and 𝑥2 = 0.8
%n
%for −10 ≤ 𝑛 ≤ 10
clf;
clear
n=-10:10;
x1= 0.5.^n;
x2= 0.8.^n;
x=x1+x2;
y=x1-x2;
subplot(221)
stem(n,x1)
subplot(222)
stem(n,x2)
subplot(223)
stem(n,x)
subplot(224)
stem(n,y)
