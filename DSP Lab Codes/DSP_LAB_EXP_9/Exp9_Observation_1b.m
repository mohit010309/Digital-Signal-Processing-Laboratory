% 19ucc023
% Mohit Akhouri
% Experiment 9 - Observation 1b

% In this code , we will implement a high pass filter based on various
% windowing techniques - like rectangular , hamming and blackman. We design
% the high pass filter for various cutoff frequencies like pi/2,pi/4 and
% pi/6. We plot the amplitude and phase response of the various high pass
% filter.

clc;
clear all;
close all;

M = 31; % delay in time domain

wc = pi/2; % cutoff frequency
hd = zeros(1,M); % to store the filter impulse response
w1 = zeros(1,M); % to store the window function for rectangular window
w2 = zeros(1,M); % to store the window function for hamming window
w3 = zeros(1,M); % to store the window function for blackman window

% main loop algorithm for calculation of window functions and filter
% impulse response for various cases
for n=0:M-1
    H = @(w) exp(-1j*w*(n-((M-1)/2))); % response of the high pass filter
    hd(n+1) = (integral(H,-pi,-wc) + integral(H,wc,pi))/(2*pi); % filter impulse response
    w1(n+1) = 1; % window function for rectangular window
    w2(n+1) = 0.42 - 0.5*cos((2*pi*n)/(M-1)) + 0.08*cos((4*pi*n)/(M-1)); % window function for hamming window
    w3(n+1) = 0.54 - 0.46*cos((2*pi*n)/(M-1)); % window function for blackman window
end

h1 = hd .* w1; % finite impulse response of rectangular window based high pass filter
h2 = hd .* w2; % finite impulse response of hamming window based high pass filter
h3 = hd .* w3; % finite impulse response of blackman window based high pass filter

% Plotting the magnitude and phase responses of various high pass filter
figure;
freqz(h1);
title('19ucc023 - Mohit Akhouri','Rectangular window for high pass filter for cutoff frequency = \pi/2');
grid on;

figure;
freqz(h2);
title('19ucc023 - Mohit Akhouri','Hamming window for high pass filter for cutoff frequency = \pi/2');
grid on;

figure;
freqz(h3);
title('19ucc023 - Mohit Akhouri','Blackman window for high pass filter for cutoff frequency = \pi/2');
grid on;

wc = pi/4; % cutoff frequency
hd = zeros(1,M); % to store the filter impulse response
w1 = zeros(1,M); % to store the window function for rectangular window
w2 = zeros(1,M); % to store the window function for hamming window
w3 = zeros(1,M); % to store the window function for blackman window

% main loop algorithm for calculation of window functions and filter
% impulse response for various cases
for n=0:M-1
    H = @(w) exp(-1j*w*(n-((M-1)/2))); % response of the high pass filter
    hd(n+1) = (integral(H,-pi,-wc) + integral(H,wc,pi))/(2*pi); % filter impulse response
    w1(n+1) = 1; % window function for rectangular window
    w2(n+1) = 0.42 - 0.5*cos((2*pi*n)/(M-1)) + 0.08*cos((4*pi*n)/(M-1)); % window function for hamming window
    w3(n+1) = 0.54 - 0.46*cos((2*pi*n)/(M-1)); % window function for blackman window
end

h1 = hd .* w1; % finite impulse response of rectangular window based high pass filter
h2 = hd .* w2; % finite impulse response of hamming window based high pass filter
h3 = hd .* w3; % finite impulse response of blackman window based high pass filter

% Plotting the magnitude and phase responses of various high pass filter
figure;
freqz(h1);
title('19ucc023 - Mohit Akhouri','Rectangular window for high pass filter for cutoff frequency = \pi/4');
grid on;

figure;
freqz(h2);
title('19ucc023 - Mohit Akhouri','Hamming window for high pass filter for cutoff frequency = \pi/4');
grid on;

figure;
freqz(h3);
title('19ucc023 - Mohit Akhouri','Blackman window for high pass filter for cutoff frequency = \pi/4');
grid on;

wc = pi/6; % cutoff frequency
hd = zeros(1,M); % to store the filter impulse response
w1 = zeros(1,M); % to store the window function for rectangular window
w2 = zeros(1,M); % to store the window function for hamming window
w3 = zeros(1,M); % to store the window function for blackman window

% main loop algorithm for calculation of window functions and filter
% impulse response for various cases
for n=0:M-1
    H = @(w) exp(-1j*w*(n-((M-1)/2))); % response of the high pass filter
    hd(n+1) = (integral(H,-pi,-wc) + integral(H,wc,pi))/(2*pi); % filter impulse response
    w1(n+1) = 1; % window function for rectangular window
    w2(n+1) = 0.42 - 0.5*cos((2*pi*n)/(M-1)) + 0.08*cos((4*pi*n)/(M-1)); % window function for hamming window
    w3(n+1) = 0.54 - 0.46*cos((2*pi*n)/(M-1)); % window function for blackman window
end

h1 = hd .* w1; % finite impulse response of rectangular window based high pass filter
h2 = hd .* w2; % finite impulse response of hamming window based high pass filter
h3 = hd .* w3; % finite impulse response of blackman window based high pass filter

% Plotting the magnitude and phase responses of various high pass filter
figure;
freqz(h1);
title('19ucc023 - Mohit Akhouri','Rectangular window for high pass filter for cutoff frequency = \pi/6');
grid on;

figure;
freqz(h2);
title('19ucc023 - Mohit Akhouri','Hamming window for high pass filter for cutoff frequency = \pi/6');
grid on;

figure;
freqz(h3);
title('19ucc023 - Mohit Akhouri','Blackman window for high pass filter for cutoff frequency = \pi/6');
grid on;