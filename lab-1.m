amplitude_x1=2;
phase_x1=23*pi/180;
frequency_x1=17;
time_array=0:0.0001:3;

signal_x1 = amplitude_x1*cos(2*pi*time_array*frequency_x1+phase_x1)

plot(time_array,signal_x1,'*')