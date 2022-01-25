function [y] = myConv(x,M)
% This function computes the convolution of 'x' and 'h'
% using convolution matrix M where x = input sequence

% 19ucc023
% Mohit Akhouri

rows = size(M,1); % storing number of rows of matrix M
columns = size(M,2); % storing number of columns of matrix M

y = zeros(1,columns); % initializing the variable to store convolution of sequences
sum = 0; % temporary variable to store sum

% ALGORITHM for calculation of convolution of sequences is as follows
for i=1:columns
    sum = 0;
    for j=1:rows
       sum = sum + (M(j,i)*x(j));
    end
    y(i) = sum;
end     
end

