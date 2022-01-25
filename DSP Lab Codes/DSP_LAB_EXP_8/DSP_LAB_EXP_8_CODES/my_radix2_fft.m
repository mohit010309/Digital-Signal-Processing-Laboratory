function [X] = my_radix2_fft(x,N)

% This function will calculate DFT of sequence x[n] of length N via radix-2
% fft algorithm

X = zeros(1,N); % Output variable to store N-point DFT

% Adjusting the sequence x[n] to make its length equivalent to 'power of 2'

length_x = length(x); % length of sequence x[n]
ind = log(length_x)/log(2); % taking log to determine the index
ind = ceil(ind); % taking ceil function to make 'ind' a integer value
size_adj = 2^ind; % calculated length in powers of 2

x = [x zeros(1,size_adj-length_x)]; % adjusting x[n] by adding zeros 

f1 = zeros(1,N/2); % to store the DFT of ODD parts of x[n]
f2 = zeros(1,N/2); % to store the DFT of EVEN parts of x[n]
Wn = exp(-1j*2*pi/N); % twiddle factor used in calculation of DFT

% Loop for calculation of DFT via radix-2 fft method
for k=1:N/2
    for m=1:N/2
        f1(k) = f1(k) + (x(2*(m-1)+1)*(Wn^(2*(m-1)*(k-1))));
        f2(k) = f2(k) + (x(2*(m-1)+2)*(Wn^(2*(m-1)*(k-1))));
    end
    X(k) = f1(k) + f2(k)*(Wn^(k-1)); % First half of DFT of sequence x[n]
    X(k+N/2) = f1(k) - f2(k)*(Wn^(k-1)); % Second half of DFT of sequence x[n]
end