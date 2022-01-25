% 19ucc023
% Mohit Akhouri
% Experiment 4 - Observation 1 and Observation 2

% This code will calculate circular convolution between two sets
% of x[n] and h[n] and compare them with inbuilt command
% for circular convolution 'cconv(x,y)'

% ALGORITHM : call the my_Circular_Convolution function 

clc;
clear all;
close all;

h = [2 1 2 1]; % initializing h1
x1 = [1 2 3 4]; % initializing x1 (first input sequence)

% initializing second input sequence x2
n = 0:1:9; % initializing samples for x2[n]
x2 = zeros(1,length(n)); % initializing x2[n] with zeros

for i=1:length(n)
    x2(i) = (0.5)^(n(i)); % calculating the sample values of x2[n]
end

length_h = length(h); % length of impulse response h[n]
length_x1 = length(x1); % length of input sequence x1[n]
length_x2 = length(x2); % length of input sequence x2[n]

% calling my_Circular_Convolution to calculate circular convolution
% of x1[n] and h[n] , x2[n] and h[n] and compare the results obtained
% with inbuilt command for circular convolution 'cconv(x,y,n)'

% circular convolution from USER_DEFINED function my_Circular_Convolution
circ_conv_x1h = my_Circular_Convolution(x1,h); 
circ_conv_x2h = my_Circular_Convolution(x2,h);

% circular convolution from INBUILT function cconv(x,y,n)
circ_conv_x1h_inbuilt = cconv(x1,h,max(length_x1,length_h));
circ_conv_x2h_inbuilt = cconv(x2,h,max(length_x2,length_h));

% plotting the results obtained for circular convolution

% circular convolution between x1[n] and h[n]
figure;
subplot(2,2,1);
stem(x1,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('x_{1}[n] ->');
title('plot of input sequence x_{1}[n]');
grid on;
subplot(2,2,2);
stem(h,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('h[n] ->');
title('plot of impulse response h[n]');
grid on;
subplot(2,2,3);
stem(circ_conv_x1h,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel(' x_{1}[n] \otimes h[n]->');
title('Circular convolution of x_{1}[n] and h[n] using my\_Circular\_Convolution');
grid on;
subplot(2,2,4);
stem(circ_conv_x1h_inbuilt,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel(' x_{1}[n] \otimes h[n]->');
title('Circular convolution of x_{1}[n] and h[n] using INBUILT function cconv');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

% circular convolution between x2[n] and h[n]
figure;
subplot(2,2,1);
stem(x2,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('x_{2}[n] ->');
title('plot of input sequence x_{2}[n]');
grid on;
subplot(2,2,2);
stem(h,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel('h[n] ->');
title('plot of impulse response h[n]');
grid on;
subplot(2,2,3);
stem(circ_conv_x2h,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel(' x_{2}[n] \otimes h[n]->');
title('Circular convolution of x_{2}[n] and h[n] using my\_Circular\_Convolution');
grid on;
subplot(2,2,4);
stem(circ_conv_x2h_inbuilt,'Linewidth',1.5);
xlabel('samples(n) ->');
ylabel(' x_{2}[n] \otimes h[n]->');
title('Circular convolution of x_{2}[n] and h[n] using INBUILT function cconv');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

