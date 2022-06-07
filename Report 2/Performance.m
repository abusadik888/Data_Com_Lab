A=2; %20-42615-1
B=0;
C=4;
D=2;
E=6;
F=1;
G=5;
H=1;
a1=G+1; %2
a2=F+2; %3
a3=E+3; %9
f1=E+1; %7
f2=F+2; %3
f3=G+3; %8
fs=5000;
t=0:1/fs:2;
x1 = a1*cos(2*pi*f1*t);
x2 = a2*sin(2*pi*f2*t);
x3 = a3*cos(2*pi*f3*t);
subplot(2,1,1);
 signal_x = x1 + x2 + x3 ;
 plot(t,signal_x)
 xlabel('time') 
 ylabel('amplitude')
 title('Signal__x') 
subplot(2,1,2);
signal_x = x1 + x2 + x3 ;
sig_freq=abs(fftshift(fft(signal_x)))/(length(signal_x)/2);
f=linspace(-fs/2,+fs/2,length(signal_x));
bar(f,sig_freq)
xlim([-15 15])
xlabel('Frquency (Hz)');
ylabel('Amplitude');
title('Frequency Domain of Signal__X')
partition= -1.5:1.5;
codebook = ;
[index,quants] = quantiz(signal_x,partition,codebook); 
figure
plot(t,signal_x,'*',t,quants,'.')
legend('Original signal','Quantized signal');








