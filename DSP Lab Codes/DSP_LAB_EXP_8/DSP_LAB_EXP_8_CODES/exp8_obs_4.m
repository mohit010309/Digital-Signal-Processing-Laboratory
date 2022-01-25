clc;
clear all;
close all;

% This code will calculate the speed factor for various values of N (
% length of sequence x[n] ) and plot the graph between them

N = [2 4 8 16 128]; % array to store length of sequence x[n]

sf_array = zeros(1,5); % array to store the speed factor for various values of N

% loop algorithm for calculation of dft using radix-2 fft algorithm
for i=1:5
    
    cm_dir = N(i)^2; % number of complex multiplications for direct method
    cm_radix2_fft = (N(i)/2)*(log2(N(i))); % number of complex multiplications for radix-2 fft method
    
    sf_array(i) = cm_dir/cm_radix2_fft; % calculation and storage of speed factor in sf_array
    
end

% Graph of speed factor vs. length of sequence ( N )
figure;
stem(N,sf_array,'Linewidth',1.5);
xlabel('N ->');
ylabel('speed factor ->');
title('Graph of speed factor vs. N');
grid on;