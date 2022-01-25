function [H] = myCirConvMat(h,n)
% This function calculates the circular convolution matrix
% here 'h' is the impulse response and 'n' is the length of the input
% sequence x[n]

% 19ucc023
% Mohit Akhouri

h = flip(h); % flipping the impulse response h[n]
rows = n; % rows of Circular convolution matrix
columns = n; % columns of Circular convolution matrix
H = zeros(rows,columns); % initializing the Circular convolution matrix with zeros

length_h = length(h); % length of impulse response h[n]
row_ind = 1; % row index for storing in matrix

% ALGORITHM : for calculation of circular convolution matrix
% Flip the h[n]
% run a loop from i to last index of h[n] and store the values in H
% run a loop from 1 to i-1 ( this is the cyclic part ) of h[n] and store
% values in H

for i=length_h:-1:1
    offset = 1; % for column index ( for storage of values in H )
    
    % loop from 'i' to 'last index' of h[n]
    for j=i:length_h 
        H(row_ind,offset) = h(j);
        offset = offset + 1;
    end
    
    % loop from 1 to 'i-1' of h[n]
    for j=1:i-1 
        H(row_ind,offset) = h(j);
        offset = offset + 1;
    end
    
    row_ind = row_ind + 1; % incrementing row index
    
end

disp('Circular convolution matrix is as follows :');
disp(H); % displaying the matrix

end

