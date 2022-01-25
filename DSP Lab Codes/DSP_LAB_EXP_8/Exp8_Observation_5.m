% 19ucc023
% Mohit Akhouri
% Experiment 8 - Observation 5

% This code will make use of Simulink Model for calculation of radix-2 fft
% of random sequences of length = 2,4 and 8. This code will also compare
% the fft calculated via inbuilt function fft with that calculated via
% Simulink Model

sim('Simulink_Observation_5'); % calling the simulink model for calculation of N-point fft

xn_2 = [1 2]; % random seqeunce x[n] of length = 2
xn_4 = [3 2 1 4]; % random seqeunce x[n] of length = 4
xn_8 = [5 1 8 7 6 2 3 4]; % random seqeunce x[n] of length = 8

fft_inb_2 = fft(xn_2,2); % 2-point fft of x[n] using INBUILT function fft
fft_inb_4 = fft(xn_4,4); % 4-point fft of x[n] using INBUILT function fft
fft_inb_8 = fft(xn_8,8); % 8-point fft of x[n] using INBUILT function fft

% Plot of input seqeunce x[n] of length = 2
figure;
stem(xn_2,'Linewidth',1.8);
xlabel('samples(n) ->');
ylabel('x[n] ->');
title('19ucc023 - Mohit Akhouri','Plot of Input sequence x[n] of length=2');
grid on;

% Plots of 2-point DFT (via SIMULINK MODEL and via INBUILT FUNCTION fft)
figure;
subplot(2,1,1);
stem(out.fft_2point.data,'Linewidth',1.8);
xlabel('samples(k) ->');
ylabel('X(k) ->');
title('2-point DFT of sequence x[n] using SIMULINK MODEL');
grid on;
subplot(2,1,2);
stem(fft_inb_2,'Linewidth',1.8);
xlabel('samples(k) ->');
ylabel('X(k) ->');
title('2-point DFT of sequence x[n] using INBUILT FUNCTION fft');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

% Plot of input seqeunce x[n] of length = 4
figure;
stem(xn_4,'Linewidth',1.8);
xlabel('samples(n) ->');
ylabel('x[n] ->');
title('19ucc023 - Mohit Akhouri','Plot of Input sequence x[n] of length=4');
grid on;

% Plots of 4-point DFT (via SIMULINK MODEL and via INBUILT FUNCTION fft) 
figure;
subplot(2,1,1);
stem(out.fft_4point.data,'Linewidth',1.8);
xlabel('samples(k) ->');
ylabel('X(k) ->');
title('4-point DFT of sequence x[n] using SIMULINK MODEL');
grid on;
subplot(2,1,2);
stem(fft_inb_4,'Linewidth',1.8);
xlabel('samples(k) ->');
ylabel('X(k) ->');
title('4-point DFT of sequence x[n] using INBUILT FUNCTION fft');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

% Plot of input seqeunce x[n] of length = 8
figure;
stem(xn_8,'Linewidth',1.8);
xlabel('samples(n) ->');
ylabel('x[n] ->');
title('19ucc023 - Mohit Akhouri','Plot of Input sequence x[n] of length=8');
grid on;

% Plots of 8-point DFT (via SIMULINK MODEL and via INBUILT FUNCTION fft)
figure;
subplot(2,1,1);
stem(out.fft_8point.data,'Linewidth',1.8);
xlabel('samples(k) ->');
ylabel('X(k) ->');
title('8-point DFT of sequence x[n] using SIMULINK MODEL');
grid on;
subplot(2,1,2);
stem(fft_inb_8,'Linewidth',1.8);
xlabel('samples(k) ->');
ylabel('X(k) ->');
title('8-point DFT of sequence x[n] using INBUILT FUNCTION fft');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');