function [y] = my_Circular_Convolution(x,h)
% This function will calculate the circular convolution 
% of input sequence x[n] and impulse response h[n]

% 19ucc023 
% Mohit Akhouri

% ALGORITHM : First make the length of both sequences equal , then call
% myCirConvMat function to calculate the circular convolution matrix.
% Now multiply the Matrix with 'column-vector' x[n] to get the final result

% Making the length of the two sequences equal by 'PADDING WITH ZEROS'

length_x = length(x); % length of input sequence x[n]
length_h = length(h); % length of impulse response h[n]

if(length_x > length_h)
    h = [h zeros(1,length_x - length_h)]; % padding 'h[n]' with zeros
    length_h = length(h);
else
    x = [x zeros(1,length_h - length_x)]; % padding 'x[n]' with zeros
    length_x = length(x);
end

n = length_x; % length of input sequence x[n] to be passed to function

% Calling the myCirConvMat function to calculate the circular convolution
% matrix and storing it in variable H

H = myCirConvMat(h,n); % calling the function for Circular Conv. matrix

% Algorithm for calculation of circular convolution is as follows

y = zeros(1,n); % initializing the output vector 

for i=1:n
    sum = 0;
    for j=1:n
       sum = sum + (H(i,j)*x(j));
    end
    y(i) = sum;
end

end