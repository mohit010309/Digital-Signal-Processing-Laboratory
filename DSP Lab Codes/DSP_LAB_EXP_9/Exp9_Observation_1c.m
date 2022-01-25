% 19ucc023
% Mohit Akhouri
% Experiment 9 - Observation 1c

% In this code , we will implement a band pass filter based on various
% windowing techniques - like rectangular , hamming and blackman. We design
% band pass filter for cutoff frequencies - wc(low) = pi/4 and wc(high) =
% pi/2. We also plot the magnitude and phase spectrum of the designed
% filter.

clc;
clear all;
close all;

M = 31; % delay in time domain

wc_low = pi/4; % low frequency cutoff for band pass filter
wc_high = pi/2; % high frequency cutoff for band pass filter

hd = zeros(1,M); % to store the filter impulse response
w1 = zeros(1,M); % to store the window function for rectangular window
w2 = zeros(1,M); % to store the window function for hamming window
w3 = zeros(1,M); % to store the window function for blackman window

% main loop algorithm for calculation of window functions and filter
% impulse response for various cases
for n=0:M-1
    H = @(w) exp(-1j*w*(n-((M-1)/2))); % response of the band pass filter
    hd(n+1) = (integral(H,-wc_high,-wc_low) + integral(H,wc_low,wc_high))/(2*pi); % filter impulse response
    w1(n+1) = 1; % window function for rectangular window
    w2(n+1) = 0.42 - 0.5*cos((2*pi*n)/(M-1)) + 0.08*cos((4*pi*n)/(M-1)); % window function for hamming window
    w3(n+1) = 0.54 - 0.46*cos((2*pi*n)/(M-1)); % window function for blackman window
end

h1 = hd .* w1; % finite impulse response of rectangular window based band pass filter
h2 = hd .* w2; % finite impulse response of hamming window based band pass filter
h3 = hd .* w3; % finite impulse response of blackman window based band pass filter

% Plotting the magnitude and phase responses of various band pass filter
figure;
freqz(h1);
title('19ucc023 - Mohit Akhouri','Rectangular window for band pass filter for cutoff frequency as w_{c}(low) = \pi/4 and w_{c}(high) = \pi/2');
grid on;

figure;
freqz(h2);
title('19ucc023 - Mohit Akhouri','Hamming window for band pass filter for cutoff frequency as w_{c}(low) = \pi/4 and w_{c}(high) = \pi/2');
grid on;

figure;
freqz(h3);
title('19ucc023 - Mohit Akhouri','Blackman window for band pass filter for cutoff frequency as w_{c}(low) = \pi/4 and w_{c}(high) = \pi/2');
grid on;