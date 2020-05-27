%% Practice 3-4
Ts = 0.01;
T  =    1;
N  = T/Ts;
n  = 0:N-1;
f1 = 10;
f2 = 30;
x  = @(f) sin(2*pi*f*n*Ts);
fft_x1 = abs(fft(x(f1)+x(f2)));
subplot(221); stem(n,x(f1)+x(f2));
title('sampling time = 0.01sec');
subplot(223); stem(n,fft_x1);
%% Practice 3-5
Ts = 0.02;
N  = T/Ts;
n  = 0:N-1;
x  = @(f) sin(2*pi*f*n*Ts);
fft_x2 = abs(fft(x(f1)+x(f2)));
subplot(222); stem(n,x(f1)+x(f2));
title('sampling time = 0.02sec');
subplot(224); stem(n,fft_x2);