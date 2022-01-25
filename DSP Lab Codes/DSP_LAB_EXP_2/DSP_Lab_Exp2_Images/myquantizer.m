function [y] = myquantizer(x_sampled,L)
% This function does quantization of sampled signal x_sampled for L number
% of levels

% 19ucc023
% Mohit Akhouri

max_value = max(x_sampled); % maximum value of sampled signal
min_value = min(x_sampled); % minimum value of sampled signal
delta = (max_value - min_value)/L; % Step size ( delta ) calculation

len = length(x_sampled); % defining length of sampled signal

y = zeros(1,len);
for ind = 1:len
    i = round((x_sampled(ind)-min_value)/delta); % calculating value of i
    y(ind) = min_value + i*delta; % calculating and storing quantized value of ith sample of x_sampled
end

end

