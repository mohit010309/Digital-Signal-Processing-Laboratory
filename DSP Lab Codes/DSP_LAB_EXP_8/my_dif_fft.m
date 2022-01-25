function [X] = my_dif_fft(x,N)

% 19ucc023 
% Mohit Akhouri

% ALGORITHM : This function will calculate the Radix-2 dif ( decimation in
% frequency ) fft for a sequence x[n]
% It divides the x[n] into seqeunce of EVEN and ODD seqeunces and calculate
% their N/2 point DFT separately. Lastly , it combines the calculated DFT
% to get the final answer of DFT.

X = zeros(1,N); % Output variable to store the calculated DFT
f1 = zeros(1,N/2); % To store the ODD parts of sequence x[n]
f2 = zeros(1,N/2); % To store the EVEN parts of sequence x[n]
Wn = exp(-1j*2*pi/N); % Twiddle factor used in the calculation of DFT

% Main loop algorithm for calculation of DFT via Radix-2 FFT algorithm
for k=1:N/2
    for m=1:N/2
        f1(k) = f1(k) + (x(2*(m-1)+1)*(Wn^(2*(m-1)*(k-1)))); % Calculation of N/2 point-DFT of ODD parts of seqeunce x[n]
        f2(k) = f2(k) + (x(2*(m-1)+2)*(Wn^(2*(m-1)*(k-1)))); % Calculation of N/2 point-DFT of EVEN parts of seqeunce x[n]
    end
    X(k)     = f1(k) + (f2(k)*(Wn^(k-1))); % Combination of f1(k) and f2(k) for N-point DFT of the first half of seqeunce x[n]
    X(k+N/2) = f1(k) - (f2(k)*(Wn^(k-1))); % Combination of f1(k) and f2(k) for N-point DFT of the second half of seqeunce x[n]
end

end