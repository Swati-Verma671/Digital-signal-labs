%Determine the Cascade and Parallel form structure for the filter with transfer function
num = [0 0.44 0.362 .02];
den = [1 0.4 0.18 -0.2]; 
[cascade_sos,G] = tf2sos(num,den); 
[r p k] = residuez(num,den)
