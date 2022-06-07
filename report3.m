%ID = 20-42615-1
clc
clear all
close all

A=2;
B=0;
C=4;
D=2;
E=6;
F=1;
G=5;
H=1;
 A1= 3;
 A2= 5;
 s= 0.23;
 fs= 5000;
 t= 0:1/fs:3;
 sig = 3*sin(2*pi*700*t)+5*cos(2*pi*900*t);
 noi_se= 0.23*randn(size(t));
 ps= 3^2/2 + 5^2/2;
 pn = 0.23^2;
 snr_theory= (ps/pn)
 snr_theory_dB= 10*log10(ps/pn)
 
 snr_function= snr(sig,noi_se)
 
 bw= obw(sig,fs)
 snr_reg=10^(snr(sig,noi_se)/10);
 capa_city= bw*log2(1+snr_reg)
 L= floor(2^(capa_city/(2*bw)))
 
 
 
 
 

 