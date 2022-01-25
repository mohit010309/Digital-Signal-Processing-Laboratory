function [x] = myDeCompression(y)

% 19ucc023
% Mohit Akhouri

% ALGORITHM :
% This function will compute the 1D-IDCT of given compressed audio signal
% Basically this function reconstructs back the approximated Compressed
% audio signal obtained after DCT

N = size(y,1); % row size of the audio signal y(t)
x = zeros(N,1); % Initializing output variable to store the IDCT

w = zeros(N,1); % factor 'w' used in the expression of IDCT calculation

% Loop algorithm for the calculation of the different values of factor 'w'
for i=1:N
    if i==1
        w(i) = 1/sqrt(N);
    else
        w(i) = sqrt(2/N);
    end
end

% Main Loop algorithm for the calculation of IDCT is as follows
for n=1:N
    sum = 0;
    for k=1:N
        sum = sum + ( w(k)*y(k)*cos((pi*(2*n-1)*(k-1))/(2*N)) );
    end
    x(n) = sum;
end

end