function [ImF] = myCompression(Im)

% 19ucc023 
% Mohit Akhouri

% ALGORITHM :
% This function will compute the DCT of given image signal "Im"
% It uses the expression of "sum of cosines" to calculate the DCT

N = size(Im,1); % Size of the image (256x256)

ImF = zeros(N,N); % to store the final computed DCT

Beta = zeros(1,N); % variable that takes value 1/root(2) if i=1 else takes value 1

% algorithm for calculation of different values of variable "beta" is given
% belo , here a loop is run and correspondingly the value is set.
for i=1:N
    if i==1
        Beta(i)=1/sqrt(2);
    else
        Beta(i)=1.0;
    end
end

% Main ALGORITHM for the calculation of DCT is as follows :
for k=1:N
    for l=1:N
        sum = 0.0;
        for i=1:N
            for j=1:N
                sum = sum + (Im(i,j)*cos((pi*((2.0*(j-1)+1))*(k-1))/(2.0*N))*cos((pi*((2.0*(i-1))+1)*(l-1))/(2.0*N)));
            end
        end
        sum = sum * (1.0/sqrt(2.0*N)) * Beta(k) * Beta(l) ;
    end
end
        
end
