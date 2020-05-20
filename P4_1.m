% Backward difference system y[n] =0.8y[n-1] x[n] - x[n-1]
a = [1 -0.8];
b = [1 -1.0];
x = [2 3 4 5];
y = filter(b,a,x);