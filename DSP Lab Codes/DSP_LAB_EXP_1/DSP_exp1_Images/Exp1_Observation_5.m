% 19ucc023
% Mohit Akhouri
% Experiment 1 - Observation 5

sim('observation1_simulink'); % calling the simulink model

figure;
subplot(2,3,1);
stem(out.Ideal_signal.data);
xlabel('samples(n)->');
ylabel('amplitude->');
title('Ideal signal');
grid on;

subplot(2,3,2);
stem(out.x_sampled_1.data);
xlabel('samples(n)->');
ylabel('amplitude->');
title('sampled signal for fs = 10000 Hz');
grid on;

subplot(2,3,3);
stem(out.x_sampled_2.data);
xlabel('samples(n)->');
ylabel('amplitude->');
title('sampled signal for fs = 6000 Hz');
grid on;

subplot(2,3,4);
stem(out.x_sampled_3.data);
xlabel('samples(n)->');
ylabel('amplitude->');
title('sampled signal for fs = 12000 Hz');
grid on;

subplot(2,3,5);
stem(out.x_sampled_4.data);
xlabel('samples(n)->');
ylabel('amplitude->');
title('sampled signal for fs = 4000 Hz');
grid on;

subplot(2,3,6);
stem(out.x_sampled_5.data);
xlabel('samples(n)->');
ylabel('amplitude->');
title('sampled signal for fs = 5000 Hz');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

% plotting MSE vs. Fs for different sampling rates through linear
% interpolation techniques
fs1 = 10000;
fs2 = 6000;
fs3 = 12000;
fs4 = 4000;
fs5 = 5000;
figure;
stem(fs1,out.mse_s1.data,'Linewidth',1.5);
hold on;
stem(fs2,out.mse_s2.data,'Linewidth',1.5);
hold on;
stem(fs3,out.mse_s3.data,'Linewidth',1.5);
hold on;
stem(fs4,out.mse_s4.data,'Linewidth',1.5);
hold on;
stem(fs5,out.mse_s5.data,'Linewidth',1.5);

xlabel('F_{s} ->');
ylabel('MSE->');
title('19ucc023 - Mohit Akhouri','MSE vs. F_{s} for different sampling rates using LINEAR INTERPOLATION');
grid on;