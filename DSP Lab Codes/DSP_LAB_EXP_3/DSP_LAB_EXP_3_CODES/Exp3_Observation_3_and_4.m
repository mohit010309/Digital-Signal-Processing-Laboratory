% 19ucc023
% Mohit Akhouri
% Experiment 3 - Observation 3 and Observation 4

% This code will utilize the myDft function to calculate N-point DFT
% of any random sequence and compare the results with in-built fft function

% ALGORITHM : First we calculate the N-point DFT matrix and multiply the 
% DFT matrix with input sequence x[n] to obtain N-point DFT

clc;
clear all;
close all;

x_8_point = rand(1,8); % A random 1 row * 8 columns array
x_16_point = rand(1,16); % A random 1 row * 16 columns array
x_32_point = rand(1,32); % A random 1 row * 32 columns array
x_64_point = rand(1,64); % A random 1 row * 64 columns array

% DFT of sequence x_8_point
dft_8_user_defined = myDft(x_8_point,8); % DFT through function myDft
dft_8_inbuilt = fft(x_8_point,8); % DFT through INBUILT function fft

% DFT of sequence x_16_point
dft_16_user_defined = myDft(x_16_point,16); % DFT through function myDft
dft_16_inbuilt = fft(x_16_point,16); % DFT through INBUILT function fft

% DFT of sequence x_32_point
dft_32_user_defined = myDft(x_32_point,32); % DFT through function myDft
dft_32_inbuilt = fft(x_32_point,32); % DFT through INBUILT function fft

% DFT of sequence x_64_point
dft_64_user_defined = myDft(x_64_point,64); % DFT through function myDft
dft_64_inbuilt = fft(x_64_point,64); % DFT through INBUILT function fft

% plotting of various signal x[n] and X(w) for different N-point
figure;
subplot(3,1,1);
stem(x_8_point,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('x[n]->');
title('RANDOM x[n] sequence for 8-point DFT');
grid on;
subplot(3,1,2);
stem(dft_8_user_defined,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('X[\omega]->');
title('Discrete fourier transform (DFT) of x[n] using USER-DEFINED myDft function');
grid on;
subplot(3,1,3);
stem(dft_8_inbuilt,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('X[\omega]->');
title('Discrete fourier transform (DFT) of x[n] using INBUILT fft function');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

figure;
subplot(3,1,1);
stem(x_16_point,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('x[n]->');
title('RANDOM x[n] sequence for 16-point DFT');
grid on;
subplot(3,1,2);
stem(dft_16_user_defined,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('X[\omega]->');
title('Discrete fourier transform (DFT) of x[n] using USER-DEFINED myDft function');
grid on;
subplot(3,1,3);
stem(dft_16_inbuilt,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('X[\omega]->');
title('Discrete fourier transform (DFT) of x[n] using INBUILT fft function');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

figure;
subplot(3,1,1);
stem(x_32_point,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('x[n]->');
title('RANDOM x[n] sequence for 32-point DFT');
grid on;
subplot(3,1,2);
stem(dft_32_user_defined,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('X[\omega]->');
title('Discrete fourier transform (DFT) of x[n] using USER-DEFINED myDft function');
grid on;
subplot(3,1,3);
stem(dft_32_inbuilt,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('X[\omega]->');
title('Discrete fourier transform (DFT) of x[n] using INBUILT fft function');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

figure;
subplot(3,1,1);
stem(x_64_point,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('x[n]->');
title('RANDOM x[n] sequence for 64-point DFT');
grid on;
subplot(3,1,2);
stem(dft_64_user_defined,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('X[\omega]->');
title('Discrete fourier transform (DFT) of x[n] using USER-DEFINED myDft function');
grid on;
subplot(3,1,3);
stem(dft_64_inbuilt,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('X[\omega]->');
title('Discrete fourier transform (DFT) of x[n] using INBUILT fft function');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');
