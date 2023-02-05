%Determine the lattice form structure for the filter transfer functions given below. Use 
%MATLAB function poly2rc. Also check the stability of the filters.

num2a = [1 1.2 1.12 0.12 -0.08];
den2a = [1];
k2a = poly2rc(num2a);

num2b = [1 1.6 0.6];
den2b = [1 -1 -0.25 0.25]; 
[k2b,v2b] = tf2latc(num2b,den2b);