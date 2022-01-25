% 19ucc023
% Mohit Akhouri
% Experiment 1 - Observation 2

clc;
clear all;
close all;

A = 1; % defining amplitude
n_cycles = 5; % defining number of cycles
fs_ideal = 100000; % defining ideal frequency
f = 3000; % defining message signal frequency

N = 64; % defining number of samples
fs = N; % defining nyquist frequency
sf=linspace(-fs,fs,N); % defining frequency range

% generating ideal signal

n_ideal = 0:1:floor(n_cycles*(fs_ideal/f))-1;
x_ideal = A*cos(2*pi*f*n_ideal*(1/fs_ideal));

figure;
subplot(2,1,1);
stem(n_ideal,x_ideal);
xlabel('samples(n) ->');
ylabel('amplitude ->');
title('Generation of Ideal Signal for F_{s} = 100000 Hz');
grid on;

ft_ideal = abs(fftshift(fft(x_ideal,N))); % fourier transform of ideal signal

subplot(2,1,2);
stem(sf,ft_ideal);
xlabel('frequency(Hz)->');
ylabel('Amplitude->');
title('Fourier transform for the ideal signal with F_{s}=100000 Hz');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');


% generating sampled signals
fs1 = 10000;
ns1 = 0:1:floor(n_cycles*(fs1/f))-1;
x_sampled_1 = A*cos(2*pi*f*ns1*(1/fs1));

fs2 = 6000;
ns2 = 0:1:floor(n_cycles*(fs2/f))-1;
x_sampled_2 = A*cos(2*pi*f*ns2*(1/fs2));

fs3 = 12000;
ns3 = 0:1:floor(n_cycles*(fs3/f))-1;
x_sampled_3 = A*cos(2*pi*f*ns3*(1/fs3));

fs4 = 4000;
ns4 = 0:1:floor(n_cycles*(fs4/f))-1;
x_sampled_4 = A*cos(2*pi*f*ns4*(1/fs4));

fs5 = 5000;
ns5 = 0:1:floor(n_cycles*(fs5/f))-1;
x_sampled_5 = A*cos(2*pi*f*ns5*(1/fs5));

% generating the fourier transform of the sampled signals
ft_sample1 = abs(fftshift(fft(x_sampled_1,N))); % fourier transform of sampled signal with 10000Hz
ft_sample2 = abs(fftshift(fft(x_sampled_2,N))); % fourier transform of sampled signal with 6000Hz
ft_sample3 = abs(fftshift(fft(x_sampled_3,N))); % fourier transform of sampled signal with 12000Hz
ft_sample4 = abs(fftshift(fft(x_sampled_4,N))); % fourier transform of sampled signal with 4000Hz
ft_sample5 = abs(fftshift(fft(x_sampled_5,N))); % fourier transform of sampled signal with 5000Hz

% plotting the sampled signals and their fourier transforms
figure;
subplot(2,1,1);
stem(ns1,x_sampled_1);
xlabel('samples(n)->');
ylabel('amplitude->');
title('sampling for f_{s}=10000Hz');
grid on;

subplot(2,1,2);
stem(sf,ft_sample1);
xlabel('frequency(Hz)->');
ylabel('Amplitude->');
title('Fourier transform for the sampled signal 1 with F_{s}=10000 Hz');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

figure;
subplot(2,1,1);
stem(ns2,x_sampled_2);
xlabel('samples(n)->');
ylabel('amplitude->');
title('sampling for f_{s}=6000Hz');
grid on;

subplot(2,1,2);
stem(sf,ft_sample2);
xlabel('frequency(Hz)->');
ylabel('Amplitude->');
title('Fourier transform for the sampled signal 2 with F_{s}=6000 Hz');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

figure;
subplot(2,1,1);
stem(ns3,x_sampled_3);
xlabel('samples(n)->');
ylabel('amplitude->');
title('sampling for f_{s}=12000Hz');
grid on;

subplot(2,1,2);
stem(sf,ft_sample3);
xlabel('frequency(Hz)->');
ylabel('Amplitude->');
title('Fourier transform for the sampled signal 3 with F_{s}=12000 Hz');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

figure;
subplot(2,1,1);
stem(ns4,x_sampled_4);
xlabel('samples(n)->');
ylabel('amplitude->');
title('sampling for f_{s}=4000Hz');
grid on;

subplot(2,1,2);
stem(sf,ft_sample4);
xlabel('frequency(Hz)->');
ylabel('Amplitude->');
title('Fourier transform for the sampled signal 4 with F_{s}=4000 Hz');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

figure;
subplot(2,1,1);
stem(ns5,x_sampled_5);
xlabel('samples(n)->');
ylabel('amplitude->');
title('sampling for f_{s}=5000Hz');
grid on;

subplot(2,1,2);
stem(sf,ft_sample5);
xlabel('frequency(Hz)->');
ylabel('Amplitude->');
title('Fourier transform for the sampled signal 5 with F_{s}=5000 Hz');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');