amplitude_x1=2;
phase_x1=23*(pi/180);
frequency_x1=17;
time_array=0:0.0001:.583;

amplitude_x2=4;
phase_x2=30*(pi/180);
frequency_x2=11;

figure

signal_x1 = amplitude_x1*cos(2*pi*time_array*frequency_x1+phase_x1)
signal_x2 = amplitude_x2*cos(2*pi*time_array*frequency_x2+phase_x2)


plot(time_array,signal_x1)
plot(time_array,signal_x2)


figure
subplot (3,1,1)
plot(time_array,signal_x1)
xlabel('time')
ylabel('amplitude')
title('The Cosine Function x1')

subplot(3,1,2)
plot(time_array,signal_x2)
xlabel('time')
ylabel('amplitude')
title('The Cosine Function x2')

subplot(3,1,3)
plot(time_array,(signal_x1+signal_x2))
xlabel('time')
ylabel('amplitude')
title('Final Result')

                                                                                                                                                                                                                                                                                                                             ,mnnnnnkknnnnnnnnnnnnn                 jj