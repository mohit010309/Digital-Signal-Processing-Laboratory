% 19ucc023
% Mohit Akhouri
% Experiment 9 - Observation 4

% This code will call the simulink model and perform the filtering
% operations on the given audio signal with the help of IDEAL LOW PASS
% FILTER and NOTCH FILTER

sim('Simulink_Observation_5'); % calling the simulink model
fs = 32000; % Sampling frequency of audio signal

% Uncomment the below lines if you want to hear the audio signals
% sound(out.input_lowpass_filter.data,fs); 
% sound(out.output_lowpass_filter.data,fs);

% Plots of input audio signal to LOWPASS FILTER and corresponding output
% obtained via SIMULINK MODEL
figure;
subplot(2,1,1);
plot(abs(fftshift(fft(out.input_lowpass_filter.data))));
xlabel('frequency (radians/sec) ->');
ylabel('X(\omega) ->');
title('Frequency spectrum of original input audio signal with hiss frequency greater than \pi/2');
grid on;
subplot(2,1,2);
plot(abs(fftshift(fft(out.output_lowpass_filter.data))));
xlabel('frequency (radians/sec) ->');
ylabel('Y(\omega) ->');
title('Frequency spectrum of smoothened output audio signal after passing through LOW PASS FILTER');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

% Uncomment the below lines if you want to hear the audio signals
% sound(out.input_notch_filter.data,fs);
% sound(out.output_notch_filter.data,fs);

% Plots of input audio signal to NOTCH FILTER and corresponding output
% obtained via SIMULINK MODEL
figure;
subplot(2,1,1);
plot(abs(fftshift(fft(out.input_notch_filter.data))));
xlabel('frequency (radians/sec) ->');
ylabel('X(\omega) ->');
title('Frequency spectrum of original input audio signal with hiss frequency present at 3^{rd} and 7^{th} samples');
grid on;
subplot(2,1,2);
plot(abs(fftshift(fft(out.output_notch_filter.data))));
xlabel('frequency (radians/sec) ->');
ylabel('Y(\omega) ->');
title('Frequency spectrum of smoothened output audio signal after passing through NOTCH FILTER');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');