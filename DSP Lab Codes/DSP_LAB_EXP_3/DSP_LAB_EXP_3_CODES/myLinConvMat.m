function [M] = myLinConvMat(h,n)
% This function computes the convolution matrix M for impulse response h(n)
% with 'n' being the length of the input sequence 'x'

% 19ucc023
% Mohit Akhouri

rows = n; % initializing the number of rows of Convolution matrix M
length_h = length(h); % declaring the length of 'h'
columns = length(h) + n - 1; % declaring the number of columns of matrix M
M = zeros(rows,columns); % initializing the convolution matrix with zeros

% generating the convolution matrix (ALGORITHM)

for i=1:rows
    offset = i; % offset in the matrix from where 'h' needs to be stored
    for j=1:length_h
        M(i,offset) = h(j);
        offset = offset + 1; % offset incremented 
    end
end
disp(M);
end

