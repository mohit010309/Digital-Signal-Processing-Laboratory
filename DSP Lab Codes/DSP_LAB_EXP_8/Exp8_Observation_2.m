% 19ucc023
% Mohit Akhouri
% Experiment 8 - Observation 2

% In this code, we will take a random 4-length sequence x[n]
% Then we will find its FFT using both INBUILT function fft and
% USER-DEFINED function my_dit_fft and also plot the graphs respectively

clc;
clear all;
close all;

N = 4; % Size of the seqeunce x[n]
x = randperm(6,N); % using randperm(k,N) to select RANDOM N integers from range 1-k , here it selects N=4 integers from range 1-6

% Plot of random seqeunce x[n]
figure;
stem(x,'Linewidth',1.8);
xlabel('samples(n) ->');
ylabel('x[n] ->');
title('19ucc023 - Mohit Akhouri','Plot of Input Sequence x[n] of length = 4');
grid on;

fft_inbuilt = fft(x,N); % Calculation of N-point DFT via INBUILT function fft
fft_user_defined = my_dit_fft(x,N); % Calculation of N-point DFT using RADIX-2 fft algorithm via USER-DEFINED function my_dit_fft

% Plot of N-point DFT obtained via INBUILT function fft(x,N)
figure;
subplot(2,1,1);
stem(fft_inbuilt,'Linewidth',1.8);
xlabel('samples(k) ->');
ylabel('X(k) ->');
title('4-point DFT of sequence x[n] using INBUILT function fft(x,N)');
grid on;

% Plot of N-point DFT obtained via USER-DEFINED function my_dit_fft(x,N)
subplot(2,1,2);
stem(fft_user_defined,'Linewidth',1.8);
xlabel('samples(k) ->');
ylabel('X(k) ->');
title('4-point DFT of sequence x[n] using USER-DEFINED function my\_dit\_fft(x,N)');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');