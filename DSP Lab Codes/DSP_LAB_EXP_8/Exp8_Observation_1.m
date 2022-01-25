% 19ucc023
% Mohit Akhouri
% Experiment 8 - Observation 1

% In this code, we will take a random 2-length sequence x[n]
% Then we will find its FFT using both INBUILT function fft and
% USER-DEFINED function my_dit_fft and also plot the graphs respectively

clc;
clear all;
close all;

N = 2; % Size of the seqeunce x[n]
x = randperm(4,N); % using randperm(k,N) to select RANDOM N integers from range 1-k , here it selects N=2 integers from range 1-4

% Plot of random seqeunce x[n]
figure;
stem(x,'Linewidth',1.8);
xlabel('samples(n) ->');
ylabel('x[n] ->');
title('19ucc023 - Mohit Akhouri','Plot of Input Sequence x[n] of length = 2');
grid on;

fft_inbuilt = fft(x,N); % Calculation of N-point DFT via INBUILT function fft
fft_user_defined = my_dit_fft(x,N); % Calculation of N-point DFT using RADIX-2 fft algorithm via USER-DEFINED function my_dit_fft

% Plot of N-point DFT obtained via INBUILT function fft(x,N)
figure;
subplot(2,1,1);
stem(fft_inbuilt,'Linewidth',1.8);
xlabel('samples(k) ->');
ylabel('X(k) ->');
title('2-point DFT of sequence x[n] using INBUILT function fft(x,N)');
grid on;

% Plot of N-point DFT obtained via USER-DEFINED function my_dit_fft(x,N)
subplot(2,1,2);
stem(fft_user_defined,'Linewidth',1.8);
xlabel('samples(k) ->');
ylabel('X(k) ->');
title('2-point DFT of sequence x[n] using USER-DEFINED function my\_dit\_fft(x,N)');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');


