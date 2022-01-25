function [y_encoded] = myencoder(x_quantized,L)
% This function encodes the Quantized value by binary numbers

% 19ucc023
% Mohit Akhouri

max_value = max(x_quantized); % maximum value of sampled signal
min_value = min(x_quantized); % minimum value of sampled signal
delta = (max_value - min_value)/(L-1); % Step size ( delta ) calculation

len = length(x_quantized); % calculating length of x_quantized
y_encoded = strings(1,len); % initializing the y_encoded array

for ind=1:len
    i = (x_quantized(ind)-min_value)/delta; % calculating the decimal value for encoding
    y_encoded(ind) = dec2bin(i,3); % converting decimal number i to binary number
end

end

