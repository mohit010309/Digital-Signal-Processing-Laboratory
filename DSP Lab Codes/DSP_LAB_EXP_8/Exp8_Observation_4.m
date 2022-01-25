% 19ucc023
% Mohit Akhouri
% Experiment 8 - Observation 4

% In this code , we will calculate the number of complex multiplications in
% both DIRECT METHOD and RADIX-2 FFT METHOD , then we will plot the graph
% between speed factor vs. N ( for various values of N = 2,4,8...128 )

clc;
clear all;
close all;

% ALGORITHM : First we will calculate number of complex multiplications in
% DIRECT and RADIX-2 FFT METHOD which are as follows :

% Complex Multiplications in Direct Method      = N^2              - eqn 1
% Complex Multiplications in Radix-2 fft Method = (N/2)*(log2(N))  - eqn 2

% In the above equations N is the length of the input sequence x[n] 
% Lastly we will calculate the ratio of eqn 1 and eqn 2 , which is defined
% as speed factor and then plot the graph between speed factor and N

N_array = [2 4 8 16 128]; % Array to store the values of N ( size of sequence x[n] )

Speed_Factor = zeros(1,5); % Array to store the calculated Speed factor for various values of N

comp_mult_direct = 0; % To store the number of complex multiplications obtained via Direct method
comp_mult_radix2 = 0; % To store the number of complex multiplications obtained via Radix-2 fft method

% Main loop algorithm for calculation of speed factor for various N values
for i=1:5
    
    N = N_array(i); % size stored in N variable
    
    comp_mult_direct = N^2; % Calculation of complex mult. in Direct Method
    comp_mult_radix2 = (N/2)*(log2(N)); % Calculation of complex mult. in Radix-2 fft Method
    
    Speed_Factor(i) = comp_mult_direct / comp_mult_radix2; % Calculation of speed factor
    
end

% Plot of Speed factor vs. Different values of N
figure;
stem(N_array,Speed_Factor,'Linewidth',1.8);
xlabel('N ->');
ylabel('Speed Factor ->');
title('19ucc023 - Mohit Akhouri','Plot of Speed Factor vs. N ( length of sequence x[n] ) for N = 2,4,8,16,128');
grid on;

    
