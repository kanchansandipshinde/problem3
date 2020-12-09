%design of high pass filter
fs=5000;
ws=2*350/5000;
wp=2*1000/5000;
rp=3;
rs=10;
[N,wn]=buttord(wp,ws,rp,rs)
disp('order=');
disp(N)
disp('wn=')
disp(wn)
[b,a]=butter(N,wn,'high')
[z,p,k]=butter(N,wn,'high')
[H,f]=freqz(b,a,512,fs)
plot(f,20*log(abs(H)))
title('high pass filter using blt method')