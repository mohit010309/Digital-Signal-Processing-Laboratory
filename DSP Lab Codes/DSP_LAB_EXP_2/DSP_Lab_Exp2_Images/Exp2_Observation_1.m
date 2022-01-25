% 19ucc023
% Mohit Akhouri
% Experiment 2 - Observation 1

clc;
clear all;
close all;

% generating Ideal Signal for Fs = 100000 Hz

A = 1; % defining Amplitude
n_cycles = 5; % defining number of cycles
fs_ideal = 100000; % defining ideal frequency
f = 3000; % defining message signal frequency

n_ideal = 0:1:floor(n_cycles*(fs_ideal/f))-1; % defining range of n
x_ideal = A*cos(2*pi*f*n_ideal*(1/fs_ideal)); % generating Ideal signal

figure; % plotting Ideal signal
stem(n_ideal,x_ideal);
ylabel('Amplitude ->');
xlabel('Samples(n) ->');
title('19ucc023 - Mohit Akhouri','Generation of Ideal Signal for F_{s} = 100000 Hz');
grid on;

% generating Sampled signal for Fs = 8000 Hz
fs_sampled = 8000;
n_sampled = 0:1:floor(n_cycles*(fs_sampled/f))-1;
x_sampled = A*cos(2*pi*f*n_sampled*(1/fs_sampled));

figure;
stem(n_sampled,x_sampled,'Linewidth',1.5);
ylabel('Amplitude ->');
xlabel('Samples(n) ->');
title('19ucc023 - Mohit Akhouri','Sampled Signal for F_{s} = 8000 Hz');
grid on;

y_quant_8 = myquantizer(x_sampled,8); % calculating quantized signal for L=8
y_quant_16 = myquantizer(x_sampled,16); % calculating quantized signal for L=16
y_quant_32 = myquantizer(x_sampled,32); % calculating quantized signal for L=32
y_quant_64 = myquantizer(x_sampled,64); % calculating quantized signal for L=64

% plotting Sampled signal and Quantized signal in 2 different plots
% for L = 8 and L = 16
figure;
subplot(2,2,1);
stem(n_sampled,x_sampled,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('Amplitude ->');
title('Sampled signal for F_{s} = 8000 Hz');
grid on;
subplot(2,2,2);
stem(n_sampled,y_quant_8,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('Amplitude ->');
title('Quantized signal for L = 8');
grid on;

subplot(2,2,3);
stem(n_sampled,x_sampled,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('Amplitude ->');
title('Sampled signal for F_{s} = 8000 Hz');
grid on;
subplot(2,2,4);
stem(n_sampled,y_quant_16,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('Amplitude ->');
title('Quantized signal for L = 16');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

% plotting Sampled signal and Quantized signal in 2 different plots
% for L = 32 and L = 64
figure;
subplot(2,2,1);
stem(n_sampled,x_sampled,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('Amplitude ->');
title('Sampled signal for F_{s} = 8000 Hz');
grid on;
subplot(2,2,2);
stem(n_sampled,y_quant_32,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('Amplitude ->');
title('Quantized signal for L = 32');
grid on;

subplot(2,2,3);
stem(n_sampled,x_sampled,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('Amplitude ->');
title('Sampled signal for F_{s} = 8000 Hz');
grid on;
subplot(2,2,4);
stem(n_sampled,y_quant_64,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('Amplitude ->');
title('Quantized signal for L = 64');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

% plotting sampled signal and Quantized signal together in one plot
% for L = 8,16,32 and 64
figure;
stem(n_sampled,x_sampled,'Linewidth',1.2);
hold on;
stem(n_sampled,y_quant_8,'Linewidth',1.2);
xlabel('Samples(n) ->');
ylabel('Amplitude ->');
title('19ucc023 - Mohit Akhouri','Sampled Signal and Quantized signal for L = 8');
grid on;
legend('Sampled Signal','Quantized Signal');
hold off;

figure;
stem(n_sampled,x_sampled,'Linewidth',1.2);
hold on;
stem(n_sampled,y_quant_16,'Linewidth',1.2);
xlabel('Samples(n) ->');
ylabel('Amplitude ->');
title('19ucc023 - Mohit Akhouri','Sampled Signal and Quantized signal for L = 16');
grid on;
legend('Sampled Signal','Quantized Signal');
hold off;

figure;
stem(n_sampled,x_sampled,'Linewidth',1.2);
hold on;
stem(n_sampled,y_quant_32,'Linewidth',1.2);
xlabel('Samples(n) ->');
ylabel('Amplitude ->');
title('19ucc023 - Mohit Akhouri','Sampled Signal and Quantized signal for L = 32');
grid on;
legend('Sampled Signal','Quantized Signal');
hold off;

figure;
stem(n_sampled,x_sampled,'Linewidth',1.2);
hold on;
stem(n_sampled,y_quant_64,'Linewidth',1.2);
xlabel('Samples(n) ->');
ylabel('Amplitude ->');
title('19ucc023 - Mohit Akhouri','Sampled Signal and Quantized signal for L = 64');
grid on;
legend('Sampled Signal','Quantized Signal');
hold off;