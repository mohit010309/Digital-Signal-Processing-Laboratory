clc;
clear all;
close all;

% This code will calculate the 8-point DFT of a random sequence x[n] by
% using both inbuilt function 'fft' and user-defined function
% 'my_radix2_fft'

% This code will also plot the respective graphs of the DFT obtained

x = [2 1 8 1 4 5 6 7]; % random 8-length sequence
N = 8; % Size of the sequence x[n]

fft_ib = fft(x,N); % 8-point DFT via inbuilt function fft
fft_ud = my_radix2_fft(x,N); % 8-point DFT via user-defined function my_radix2_fft

% Plots of sequence x[n], inbuilt fft and user-defined fft of sequence x[n]
figure;
subplot(3,1,1);
stem(x,'Linewidth',1.5);
xlabel('sample(n) ->');
ylabel('x[n] ->');
title('plot of input seqeunce x[n] of length 8');
grid on;
subplot(3,1,2);
stem(fft_ib,'Linewidth',1.5);
xlabel('sample(k) ->');
ylabel('X(k) ->');
title('8-point DFT of seqeunce x[n] using inbuilt function ( fft )');
grid on;
subplot(3,1,3);
stem(fft_ud,'Linewidth',1.5);
xlabel('sample(k) ->');
ylabel('X(k) ->');
title('8-point DFT of seqeunce x[n] using user-defined function ( my\_radix2\_fft )');
grid on;