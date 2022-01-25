% 19ucc023
% Mohit Akhouri
% Experiment 1 - Observation 4

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

% generating the parameters x and xq for use in interp1 function for
% different sampling rates
x_s1 = 0:1:max(ns1);
xq_s1 = 0:max(ns1)/max(n_ideal):max(ns1);

x_s2 = 0:1:max(ns2);
xq_s2 = 0:max(ns2)/max(n_ideal):max(ns2);

x_s3 = 0:1:max(ns3);
xq_s3 = 0:max(ns3)/max(n_ideal):max(ns3);

x_s4 = 0:1:max(ns4);
xq_s4 = 0:max(ns4)/max(n_ideal):max(ns4);

x_s5 = 0:1:max(ns5);
xq_s5 = 0:max(ns5)/max(n_ideal):max(ns5);

inter_method1 = 'linear';
inter_method2 = 'spline';
inter_method3 = 'cubic';

% calculating MSE vs. Fs for linear interpolation
inter_s1_m1 = interp1(x_s1,x_sampled_1,xq_s1,inter_method1);
inter_s2_m1 = interp1(x_s2,x_sampled_2,xq_s2,inter_method1);
inter_s3_m1 = interp1(x_s3,x_sampled_3,xq_s3,inter_method1);
inter_s4_m1 = interp1(x_s4,x_sampled_4,xq_s4,inter_method1);
inter_s5_m1 = interp1(x_s5,x_sampled_5,xq_s5,inter_method1);

mse_s1_m1 = mean((x_ideal - inter_s1_m1).^2);
mse_s2_m1 = mean((x_ideal - inter_s2_m1).^2);
mse_s3_m1 = mean((x_ideal - inter_s3_m1).^2);
mse_s4_m1 = mean((x_ideal - inter_s4_m1).^2);
mse_s5_m1 = mean((x_ideal - inter_s5_m1).^2);

figure;
stem(fs1,mse_s1_m1,'Linewidth',1.5);
hold on;
stem(fs2,mse_s2_m1,'Linewidth',1.5);
hold on;
stem(fs3,mse_s3_m1,'Linewidth',1.5);
hold on;
stem(fs4,mse_s4_m1,'Linewidth',1.5);
hold on;
stem(fs5,mse_s5_m1,'Linewidth',1.5);

xlabel('F_{s} ->');
ylabel('MSE->');
title('19ucc023 - Mohit Akhouri','MSE vs. F_{s} for different sampling rates for LINEAR INTERPOLATION');
grid on;


% calculating MSE vs. Fs for spline interpolation
inter_s1_m2 = interp1(x_s1,x_sampled_1,xq_s1,inter_method2);
inter_s2_m2 = interp1(x_s2,x_sampled_2,xq_s2,inter_method2);
inter_s3_m2 = interp1(x_s3,x_sampled_3,xq_s3,inter_method2);
inter_s4_m2 = interp1(x_s4,x_sampled_4,xq_s4,inter_method2);
inter_s5_m2 = interp1(x_s5,x_sampled_5,xq_s5,inter_method2);

mse_s1_m2 = mean((x_ideal - inter_s1_m2).^2);
mse_s2_m2 = mean((x_ideal - inter_s2_m2).^2);
mse_s3_m2 = mean((x_ideal - inter_s3_m2).^2);
mse_s4_m2 = mean((x_ideal - inter_s4_m2).^2);
mse_s5_m2 = mean((x_ideal - inter_s5_m2).^2);

figure;
stem(fs1,mse_s1_m2,'Linewidth',1.5);
hold on;
stem(fs2,mse_s2_m2,'Linewidth',1.5);
hold on;
stem(fs3,mse_s3_m2,'Linewidth',1.5);
hold on;
stem(fs4,mse_s4_m2,'Linewidth',1.5);
hold on;
stem(fs5,mse_s5_m2,'Linewidth',1.5);

xlabel('F_{s} ->');
ylabel('MSE->');
title('19ucc023 - Mohit Akhouri','MSE vs. F_{s} for different sampling rates for SPLINE INTERPOLATION');
grid on;


% calculating MSE vs. Fs for cubic interpolation
inter_s1_m3 = interp1(x_s1,x_sampled_1,xq_s1,inter_method3);
inter_s2_m3 = interp1(x_s2,x_sampled_2,xq_s2,inter_method3);
inter_s3_m3 = interp1(x_s3,x_sampled_3,xq_s3,inter_method3);
inter_s4_m3 = interp1(x_s4,x_sampled_4,xq_s4,inter_method3);
inter_s5_m3 = interp1(x_s5,x_sampled_5,xq_s5,inter_method3);

mse_s1_m3 = mean((x_ideal - inter_s1_m3).^2);
mse_s2_m3 = mean((x_ideal - inter_s2_m3).^2);
mse_s3_m3 = mean((x_ideal - inter_s3_m3).^2);
mse_s4_m3 = mean((x_ideal - inter_s4_m3).^2);
mse_s5_m3 = mean((x_ideal - inter_s5_m3).^2);

figure;
stem(fs1,mse_s1_m3,'Linewidth',1.5);
hold on;
stem(fs2,mse_s2_m3,'Linewidth',1.5);
hold on;
stem(fs3,mse_s3_m3,'Linewidth',1.5);
hold on;
stem(fs4,mse_s4_m3,'Linewidth',1.5);
hold on;
stem(fs5,mse_s5_m3,'Linewidth',1.5);

xlabel('F_{s} ->');
ylabel('MSE->');
title('19ucc023 - Mohit Akhouri','MSE vs. F_{s} for different sampling rates for CUBIC INTERPOLATION');
grid on;





