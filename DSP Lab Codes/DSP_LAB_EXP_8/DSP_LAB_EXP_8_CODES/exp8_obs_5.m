% This code will calculate the N-point DFT via radix2-fft algorithm
% implemented in simulink

% This code will also compare the plots of DFT obtained via inbuilt fft and those
% obtained via simulink model

sim('obs5_simulink'); % calling the simulink model for calculation of N-point DFT

x2 = [3 5]; % random 2-length sequence
x4 = [3 5 1 4]; % random 4-length sequence
x8 = [2 1 8 1 4 5 6 7]; % random 8-length sequence

% plots of x[n] and DFT of x[n] of length=2 obtained via both inbuilt function ( fft )
% and via radix2-fft method implemented as a simulink model
figure;
subplot(3,1,1);
stem(x2,'Linewidth',1.5);
xlabel('sample(n) ->');
ylabel('x[n] ->');
title('plot of input sequence x[n]');
grid on;
subplot(3,1,2);
stem(out.fft2.data,'Linewidth',1.5);
xlabel('sample(k) ->');
ylabel('X(k) ->');
title('plot of 2-point DFT obtained through simulink model ( obs5\_simulink )');
grid on;
subplot(3,1,3);
stem(fft(x2,2),'Linewidth',1.5);
xlabel('sample(k) ->');
ylabel('X(k) ->');
title('plot of 2-point DFT obtained through inbuilt function ( fft )');
grid on;

% plots of x[n] and DFT of x[n] of length=4 obtained via both inbuilt function ( fft )
% and via radix2-fft method implemented as a simulink model
figure;
subplot(3,1,1);
stem(x4,'Linewidth',1.5);
xlabel('sample(n) ->');
ylabel('x[n] ->');
title('plot of input sequence x[n]');
grid on;
subplot(3,1,2);
stem(out.fft4.data,'Linewidth',1.5);
xlabel('sample(k) ->');
ylabel('X(k) ->');
title('plot of 4-point DFT obtained through simulink model ( obs5\_simulink )');
grid on;
subplot(3,1,3);
stem(fft(x4,4),'Linewidth',1.5);
xlabel('sample(k) ->');
ylabel('X(k) ->');
title('plot of 4-point DFT obtained through inbuilt function ( fft )');
grid on;

% plots of x[n] and DFT of x[n] of length=8 obtained via both inbuilt function ( fft )
% and via radix2-fft method implemented as a simulink model
figure;
subplot(3,1,1);
stem(x8,'Linewidth',1.5);
xlabel('sample(n) ->');
ylabel('x[n] ->');
title('plot of input sequence x[n]');
grid on;
subplot(3,1,2);
stem(out.fft8.data,'Linewidth',1.5);
xlabel('sample(k) ->');
ylabel('X(k) ->');
title('plot of 8-point DFT obtained through simulink model ( obs5\_simulink )');
grid on;
subplot(3,1,3);
stem(fft(x8,8),'Linewidth',1.5);
xlabel('sample(k) ->');
ylabel('X(k) ->');
title('plot of 8-point DFT obtained through inbuilt function ( fft )');
grid on;