clear;
recObj = audiorecorder(16000, 16, 1);
disp('Strat speaking.');
recordblocking(recObj, 5);
disp('End of Recording.');

play(recObj);

x = getaudiodata(recObj,'int16');

plot(x);

fp = fopen('16kHz.pcm', 'wb');
fwrite(fp, x, 'short');
fclose(fp);




fs = 50;
T = 1/fs;
x = sin(2*pi*(0:fs-1)*T) + sin(2*pi*(0:fs-1)*7*T);
rate = 2;
x_ds = decimate(x,rate);
x_us = interp(x,rate);
rate1 = 4;
rate2 = 3;
x_us1 = interp(x,rate1);
x_ds1 = decimate(x_us1,rate2);
figure;
subplot(221); stem(1:length(x),x);
title('Original figure');
subplot(222); stem(1:length(x_ds),x_ds);
title([num2str(rate),'times downsampling']);
subplot(223); stem(1:length(x_us),x_us);
title([num2str(rate),'times upsampling']);
subplot(224); stem(1:length(x_ds1),x_ds1);
title([num2str(rate1,'%d/') num2str(rate2) 'times upsampling']);
figure;
subplot(221); specgram(x,1024,fs,320);
title('Original figure');
subplot(222); specgram(x_ds,1024,fs,320);
title([num2str(rate),'times downsampling']);
subplot(223); specgram(x_us,1024,fs,320);
title([num2str(rate),'times upsampling']);
subplot(224); specgram(x_ds1,1024,fs,320);
title([num2str(rate1,'%d/') num2str(rate2) 'times upsampling']);



