% y[n]=x1[n] * x2[n]
clear;
clc;
n=10000;
x1(n)=0;
x2(n)=0;

for i=1:n
    x1(i)=mod(i,5);
    x2(i)=mod(i,4);
end

n1=1:n;
figure(1);
subplot(211);
stem(n1,x1);
xlabel('time n'); ylabel('x1[n]');
subplot(212);
stem(n1,x2);
xlabel('time n'); ylabel('x2[n]');

y_My=Myconv(x1,x2);
y_cov=conv(x1,x2);

n2=1:length(y_My);
figure(2);
subplot(211);
stem(n2,y_My);
xlabel('time n'); ylabel('y_My[n]');
subplot(212);
stem(n2,y_cov);
xlabel('time n'); ylabel('y_cov[n]');