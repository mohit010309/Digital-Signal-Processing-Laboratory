% 19ucc023
% Mohit Akhouri
% Experiment 4 - Observation 5

% This code will call the simulink model 'Simulink_Observation_5' for
% calculation of circular convolution between x[n] and h[n]

sim('Simulink_Observation_5'); % calling the simulink model

% plotting the two circular convolutions obtained via Simulink Model

figure;
subplot(2,1,1);
stem(out.circ_conv_xh_1.data,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('x[n] \otimes h[n] ->');
title('Circular Convolution between x[n] and h[n] obtained via SIMULINK MODEL through my\_Circular\_Convolution function');
grid on;
subplot(2,1,2);
stem(out.circ_conv_xh_2.data,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('x[n] \otimes h[n] ->');
title('Circular Convolution between x[n] and h[n] obtained via SIMULINK MODEL through DFT multiplication');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');