% 19ucc023 
% Mohit Akhouri
% Experiment 3 - Observation 5

% This code will deploy the simulink model to calculate convolution of two
% random sequences x[n] and h[n] 

sim('Simulink_Observation_5'); % calling the simulink model
y_conv_inbuilt = conv(out.xn.data,out.hn.data); % Convolution from INBUILT function for cross-checking

% plotting of signals x[n],h[n] and convolved signal y[n]

figure;
subplot(2,2,1);
stem(out.xn.data,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('x[n]->');
title('random input signal x[n] from Simulink Model');
grid on;
subplot(2,2,2);
stem(out.hn.data,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('h[n]->');
title('random impulse response h[n] from Simulink Model');
grid on;
subplot(2,2,3);
stem(out.yn.data,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('y[n] = x[n] * h[n]');
title('Convolved signal y[n] obtained from Simulink Model');
grid on;
subplot(2,2,4);
stem(y_conv_inbuilt,'Linewidth',1.5);
xlabel('samples(n)->');
ylabel('y[n] = x[n] * h[n]');
title('Convolved signal y[n] obtained from INBUILT function conv');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');