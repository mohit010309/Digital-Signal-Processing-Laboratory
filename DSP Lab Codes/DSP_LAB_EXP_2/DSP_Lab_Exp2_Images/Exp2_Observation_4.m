% 19ucc023
% Mohit Akhouri
% Experiment 2 - Observation 4

clc;
clear all;
close all;

n_cycles = 5; % defining number of cycles
f = 3000; % defining message signal frequency
fs_sampled = 8000; % defining Sampling frequency
A = 1; % defining Amplitude
L = 8; % defining number of levels for the quantizer

n_sampled = 0:1:floor(n_cycles*(fs_sampled/f))-1; % defining the range of "n"
x_sampled = A*cos(2*pi*f*n_sampled*(1/fs_sampled)); % defining the sampled signal

y = myquantizer(x_sampled,L); % calculating the quantized value of sampled signal 

% plotting sampled and quantized signal separately
figure;
subplot(2,1,1);
stem(n_sampled,x_sampled,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('Amplitude ->');
title('Sampled signal for F_{s} = 8000 Hz');
grid on;
subplot(2,1,2);
stem(n_sampled,y,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('Amplitude ->');
title('Quantized signal for L = 8');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

% plotting sampled and quantized signal together
figure;
stem(n_sampled,x_sampled,'Linewidth',1.2);
hold on;
stem(n_sampled,y,'Linewidth',1.2);
xlabel('Samples(n) ->');
ylabel('Amplitude ->');
title('19ucc023 - Mohit Akhouri','Sampled Signal and Quantized signal for L = 8');
grid on;
legend('Sampled Signal','Quantized Signal');
hold off;

% doing encoding of quantized signal
y_encoded = myencoder(y,L); % calling myencoder function for encoding of quantized signal
display('The encoded signal is :');
for i=1:length(y)
    display(sprintf('%-10f = %s',y(i),y_encoded(i))); % displaying the encoded values
end

