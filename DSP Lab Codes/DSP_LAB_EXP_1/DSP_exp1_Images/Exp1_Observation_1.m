% 19ucc023
% Mohit Akhouri
% Experiment 1 - Observation 1

clc;
clear all;
close all;

A = 1; % defining amplitude
n_cycles = 5; % defining number of cycles
fs_ideal = 100000; % defining ideal frequency
f = 3000; % defining message signal frequency

% generating ideal signal

n_ideal = 0:1:floor(n_cycles*(fs_ideal/f))-1;
x_ideal = A*cos(2*pi*f*n_ideal*(1/fs_ideal));

figure;
stem(n_ideal,x_ideal);
xlabel('samples(n) ->');
ylabel('amplitude ->');
title('19ucc023 - Mohit Akhouri','Generation of Ideal Signal for F_{s} = 100000 Hz');
grid on;

% generating sampled signals
fs1 = 10000;
ns1 = 0:1:floor(n_cycles*(fs1/f))-1;
x_sampled_1 = A*cos(2*pi*f*ns1*(1/fs1)); % sampled signal 1

fs2 = 6000;
ns2 = 0:1:floor(n_cycles*(fs2/f))-1;
x_sampled_2 = A*cos(2*pi*f*ns2*(1/fs2)); % sampled signal 2

fs3 = 12000;
ns3 = 0:1:floor(n_cycles*(fs3/f))-1;
x_sampled_3 = A*cos(2*pi*f*ns3*(1/fs3)); % sampled signal 3

fs4 = 4000;
ns4 = 0:1:floor(n_cycles*(fs4/f))-1;
x_sampled_4 = A*cos(2*pi*f*ns4*(1/fs4)); % sampled signal 4

fs5 = 5000;
ns5 = 0:1:floor(n_cycles*(fs5/f))-1;
x_sampled_5 = A*cos(2*pi*f*ns5*(1/fs5)); % sampled signal 5

% plotting the sampled signals
figure;
subplot(2,1,1);
stem(ns1,x_sampled_1);
xlabel('samples(n)->');
ylabel('amplitude->');
title('sampling for f_{s}=10000Hz');
grid on;

subplot(2,1,2);
stem(ns2,x_sampled_2);
xlabel('samples(n)->');
ylabel('amplitude->');
title('sampling for f_{s}=6000Hz');
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
stem(ns4,x_sampled_4);
xlabel('samples(n)->');
ylabel('amplitude->');
title('sampling for f_{s}=4000Hz');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

figure;
stem(ns5,x_sampled_5);
xlabel('samples(n)->');
ylabel('amplitude->');
title('19ucc023 - Mohit Akhouri','sampling for f_{s}=5000Hz');
grid on;