function [X,D] = myDFT(x,N)
% This function will calculate the discrete fourier transform 
% of input sequence x[n] , this function calculates N-point DFT

% 19ucc023
% Mohit Akhouri

% calculating the DFT matrix 'D'
D = zeros(N,N); % DFT matrix to store the values of twiddle factor
twd_factor = 0; % to store the value of twiddle factor

for n=1:N
    for k=1:N
        twd_factor = exp(-1j*2*pi*(k-1)*(n-1)/N);
        D(n,k) = twd_factor;
    end
end

disp('The DFT matrix is given as :');
disp(D);

% The ALGORITHM for calculation of DFT is as follows 
X = zeros(1,N);
for i=1:N
    sum = 0;
    for j=1:N
        sum = sum+(D(i,j)*x(j));
    end
    X(i)=sum;
end

end

