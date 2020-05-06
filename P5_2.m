Fs = 8000;
Wk = [261.6, 293.67, 329.63, 349.23, 392.00, 440.0, 493.88, 523.25];%Do to Do
Bk = [277.18, 311.13, 369.99, 415.30, 466.16];
sheet = [Wk(3), Wk(3), Wk(6), Wk(6), Wk(1) ,Wk(2), Wk(3), Wk(3)];
Ts  = 1/Fs;
T = 0.25;
t  = 0:Ts:T-Ts;
a  = @(fk) sin(2*pi*fk.*t);
s = [];
for i = 1 : length(sheet)-1
    s= [s [a(sheet(i)) zeros(1,Fs/4)] + [zeros(1,Fs/4) a(sheet(i+1))]] ;
end
sound(s);

