% 19ucc023
% Mohit Akhouri
% Experiment 2 - Observation 3
clc;
clear all;
close all;

n_cycles = 5; % defining number of cycles
f = 3000; % defining message signal frequency
fs_sampled = 8000; % defining Sampling frequency
L = 64; % defining number of levels for the quantizer
b = 6; % defining the number of bits for calculation of SQNR

voltage_array = 0.1:0.1:1; % defining the voltage array at 0.1 increments
len = length(voltage_array); % calculating length of voltage array

SQNR_practical = zeros(1,len); % initializing SQNR_practical array
SQNR_Theoretical = zeros(1,len); % initializing SQNR_theoretical array

for i=1:len
    A = voltage_array(i); % defining amplitude of x_sampled
    n_sampled = 0:1:floor(n_cycles*(fs_sampled/f))-1; % defining range of n
    x_sampled = A*cos(2*pi*f*n_sampled*(1/fs_sampled)); % creating sampled signal
    
    y = myquantizer(x_sampled,L); % quantized signal of sampled signal for L=64
    noise_mse = mean((y-x_sampled).*(y-x_sampled)); % MSE for the quantized and sampled signal
    signal_noise_ratio = (A*A/2)/(noise_mse); % SQNR practical
    
    % storing corresponding values in arrays
    SQNR_practical(i) = 10*log10(signal_noise_ratio);
    SQNR_Theoretical(i) = 1.76 + 6.02*b;
end
% plotting SQNR practical and SQNR Theoretical vs. Voltage
figure;
subplot(2,1,1);
stem(voltage_array,SQNR_practical,'Linewidth',1.2);
xlabel('Voltage(V) ->');
ylabel('SQNR(dB) practical ->');
title('SQNR(dB) PRACTICAL vs. Voltage(V)');
grid on;
subplot(2,1,2);
stem(voltage_array,SQNR_Theoretical,'Linewidth',1.2);
xlabel('Voltage(V) ->');
ylabel('SQNR(dB) theoretical ->');
title('SQNR(dB) THEORETICAL vs. Voltage(V)');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');



    