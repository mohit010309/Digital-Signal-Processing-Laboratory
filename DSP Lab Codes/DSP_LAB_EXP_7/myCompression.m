function [y] = myCompression(x)

% 19ucc023
% Mohit Akhouri

% ALGORITHM :
% This function will compute the 1D-DCT of given input audio signal
% Basically this function performs the compression of the audio signal
% through 1D-DCT

N = size(x,1); % row size of the audio signal x(t)

y = zeros(N,1); % Initializing output variable to store the DCT 
w = zeros(N,1); % factor 'w' used in the expression of DCT calculation

% Loop algorithm for the calculation of the different values of factor 'w'
for i=1:N
    if i==1
        w(i) = 1/sqrt(N);
    else
        w(i) = sqrt(2/N);
    end
end

% Main Loop algorithm for the calculation of DCT is as follows
for k=1:N
    sum = 0;
    for n=1:N
        sum = sum + ( x(n)*cos((pi*(2*n-1)*(k-1))/(2*N)) );
    end
    disp(k);
    y(k) = w(k) * sum;
end


