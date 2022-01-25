% 19ucc023
% Mohit Akhouri
% Experiment 3 - Observation 1 and Observation 2 

% This code will calculate the convolution of x[n] and h[n]
% for different frequencies and impulse responses
% both by calling the user defined functions myLinConvMat and myConv
% and using inbuilt function 'conv'

% ALGORITHM : First we calculate the convolution matrix M and 
% calculate the convolution using M and input sequence x[n]

clc;
clear all;
close all;

n = 0:1:99; % initializing the number of samples
h1 = [1 1]; % initializing impulse response h1[n]
h2 = [1 -1]; % initializing impulse response h2[n]
h3 = (1/3)*[1 1 1]; % initializing impulse response h3[n]
h4 = (1/4)*[1 1 -4 1 1]; % initializing impulse response h4[n]

freq = [0 1/10 1/5 1/4 1/2]; % initializing the frequency array

% Convolution for x and h1

h = h1; % temporary variable to store the different impulse responses
ind = 1; % index for correct printing of 'number of impulse response'
for i = 1:length(freq)
    xi = cos(2*pi*freq(i)*n); % initializing x[n] for different frequencies

    M = myLinConvMat(h,length(xi)); % storing convolution matrix in M
    y_conv = myConv(xi,M); % convolution of x[n] and h[n] using myConv function
    y_conv_inbuilt = conv(xi,h); % convolution of x[n] and h[n] using INBUILT function conv
    
    % plotting x[n], h[n]
    figure;
    subplot(2,2,1);
    stem(xi,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('x_{%d}[n]->',i));
    title(sprintf('x_{%d}[n] = cos(2*%s*(%0.2f)*n)',i,'\pi',freq(i)));
    grid on;
    subplot(2,2,2);
    stem(h,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('h_{%d}[n]->',ind));
    title(sprintf('Impulse response h_{%d}[n]',ind));
    grid on;
    % plotting convolution using myConv and INBUILT FUNCTION conv
    subplot(2,2,3);
    stem(y_conv,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('x_{%d}[n]*h_{%d}[n]->',i,ind));
    title(sprintf('convolution of x_{%d}[n] and h_{%d}[n] for frequency = %0.2f Hz using myConv',i,ind,freq(i)));
    grid on;
    subplot(2,2,4);
    stem(y_conv_inbuilt,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('x_{%d}[n]*h_{%d}[n]->',i,ind));
    title(sprintf('convolution of x_{%d}[n] and h_{%d}[n] for frequency = %0.2f Hz using INBUILT function conv',i,ind,freq(i)));
    grid on;
    sgtitle('19ucc023 - Mohit Akhouri');
end

% Convolution for x and h2

h = h2; % temporary variable to store the different impulse responses
ind = 2; % index for correct printing of 'number of impulse response'
for i = 1:length(freq)
    xi = cos(2*pi*freq(i)*n); % initializing x[n] for different frequencies

    M = myLinConvMat(h,length(xi)); % storing convolution matrix in M
    y_conv = myConv(xi,M); % convolution of x[n] and h[n] using myConv function
    y_conv_inbuilt = conv(xi,h); % convolution of x[n] and h[n] using INBUILT function conv

    % plotting x[n], h[n]
    figure;
    subplot(2,2,1);
    stem(xi,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('x_{%d}[n]->',i));
    title(sprintf('x_{%d}[n] = cos(2*%s*(%0.2f)*n)',i,'\pi',freq(i)));
    grid on;
    subplot(2,2,2);
    stem(h,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('h_{%d}[n]->',ind));
    title(sprintf('Impulse response h_{%d}[n]',ind));
    grid on;
    % plotting convolution using myConv and INBUILT FUNCTION conv
    subplot(2,2,3);
    stem(y_conv,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('x_{%d}[n]*h_{%d}[n]->',i,ind));
    title(sprintf('convolution of x_{%d}[n] and h_{%d}[n] for frequency = %0.2f Hz using myConv',i,ind,freq(i)));
    grid on;
    subplot(2,2,4);
    stem(y_conv_inbuilt,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('x_{%d}[n]*h_{%d}[n]->',i,ind));
    title(sprintf('convolution of x_{%d}[n] and h_{%d}[n] for frequency = %0.2f Hz using INBUILT function conv',i,ind,freq(i)));
    grid on;
    sgtitle('19ucc023 - Mohit Akhouri');
end

% Convolution for x and h3

h = h3; % temporary variable to store the different impulse responses
ind = 3; % index for correct printing of 'number of impulse response'
for i = 1:length(freq)
    xi = cos(2*pi*freq(i)*n); % initializing x[n] for different frequencies

    M = myLinConvMat(h,length(xi)); % storing convolution matrix in M
    y_conv = myConv(xi,M); % convolution of x[n] and h[n] using myConv function
    y_conv_inbuilt = conv(xi,h); % convolution of x[n] and h[n] using INBUILT function conv

    % plotting x[n], h[n]
    figure;
    subplot(2,2,1);
    stem(xi,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('x_{%d}[n]->',i));
    title(sprintf('x_{%d}[n] = cos(2*%s*(%0.2f)*n)',i,'\pi',freq(i)));
    grid on;
    subplot(2,2,2);
    stem(h,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('h_{%d}[n]->',ind));
    title(sprintf('Impulse response h_{%d}[n]',ind));
    grid on;
    % plotting convolution using myConv and INBUILT FUNCTION conv
    subplot(2,2,3);
    stem(y_conv,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('x_{%d}[n]*h_{%d}[n]->',i,ind));
    title(sprintf('convolution of x_{%d}[n] and h_{%d}[n] for frequency = %0.2f Hz using myConv',i,ind,freq(i)));
    grid on;
    subplot(2,2,4);
    stem(y_conv_inbuilt,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('x_{%d}[n]*h_{%d}[n]->',i,ind));
    title(sprintf('convolution of x_{%d}[n] and h_{%d}[n] for frequency = %0.2f Hz using INBUILT function conv',i,ind,freq(i)));
    grid on;
    sgtitle('19ucc023 - Mohit Akhouri');
end

% Convolution for x and h4

h = h4; % temporary variable to store the different impulse responses
ind = 4; % index for correct printing of 'number of impulse response'
for i = 1:length(freq)
    xi = cos(2*pi*freq(i)*n); % initializing x[n] for different frequencies

    M = myLinConvMat(h,length(xi)); % storing convolution matrix in M
    y_conv = myConv(xi,M); % convolution of x[n] and h[n] using myConv function
    y_conv_inbuilt = conv(xi,h); % convolution of x[n] and h[n] using INBUILT function conv

    % plotting x[n], h[n]
    figure;
    subplot(2,2,1);
    stem(xi,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('x_{%d}[n]->',i));
    title(sprintf('x_{%d}[n] = cos(2*%s*(%0.2f)*n)',i,'\pi',freq(i)));
    grid on;
    subplot(2,2,2);
    stem(h,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('h_{%d}[n]->',ind));
    title(sprintf('Impulse response h_{%d}[n]',ind));
    grid on;
    % plotting convolution using myConv and INBUILT FUNCTION conv
    subplot(2,2,3);
    stem(y_conv,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('x_{%d}[n]*h_{%d}[n]->',i,ind));
    title(sprintf('convolution of x_{%d}[n] and h_{%d}[n] for frequency = %0.2f Hz using myConv',i,ind,freq(i)));
    grid on;
    subplot(2,2,4);
    stem(y_conv_inbuilt,'Linewidth',1.3);
    xlabel('samples(n)->');
    ylabel(sprintf('x_{%d}[n]*h_{%d}[n]->',i,ind));
    title(sprintf('convolution of x_{%d}[n] and h_{%d}[n] for frequency = %0.2f Hz using INBUILT function conv',i,ind,freq(i)));
    grid on;
    sgtitle('19ucc023 - Mohit Akhouri');
end

