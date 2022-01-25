% 19ucc023
% Mohit Akhouri
% Experiment 6 - Observation 3 and Observation 4

% ALGORITHM :
% This code will apply the compression algorithm for 4 different cases :
% top 8 coefficients out of 64 , top 16 coefficients out of 64 , 
% top 32 coefficients out of 64 , top 48 coefficients out of 64
% and observe the artifact effects

% This code will also plot the graph between the mean square error and
% compression ratio

clc;
clear all;
close all;

img = imread('cameraman.tif'); % Reading of image file in variable 'img'
N = size(img,1); % storing the size of the image (256x256) in variable 'N'

% CASE 1 : Keeping top 48 coefficients out of 64

recon_img = zeros(N,N); % to store the reconstructed image

for i=1:8:N
    for j=1:8:N
        block_8x8 = img(i:i+7,j:j+7); % selecting a 8x8 block
        block_dct = dct2(block_8x8); % Finding the DCT of the selected block
        block_dct(7:8,1:8)=zeros(2,8); % knocking off the remaining 16 coefficients
        recon_img(i:i+7,j:j+7)=idct2(block_dct); % taking IDCT of the remaining coefficients
    end
end

% Plot of original image and reconstructed image
figure;
subplot(1,2,1);
imshow(img);
title('Original Image - cameraman.tif');
subplot(1,2,2);
imshow(uint8(recon_img));
title('Reconstructed Image after keeping TOP 48 coefficients out of 64');
sgtitle('19ucc023 - Mohit Akhouri');

% calculating compression ratio and mean square error
mse_case_1 = mse(img,uint8(recon_img)); % mean square error calculation
knocked_off_coeff_1 = N*N - 48; % calculating and storing the knocked off coefficients
p_case_1 = ((N*N - knocked_off_coeff_1)/(N*N)); % calculating compression ratio


% CASE 2 : Keeping top 32 coefficients out of 64

recon_img = zeros(N,N); % to store the reconstructed image

for i=1:8:N
    for j=1:8:N
        block_8x8 = img(i:i+7,j:j+7); % selecting a 8x8 block
        block_dct = dct2(block_8x8); % Finding the DCT of the selected block
        block_dct(5:8,1:8)=zeros(4,8); % knocking off the remaining 32 coefficients
        recon_img(i:i+7,j:j+7)=idct2(block_dct); % taking IDCT of the remaining coefficients
    end
end

% Plot of original image and reconstructed image
figure;
subplot(1,2,1);
imshow(img);
title('Original Image - cameraman.tif');
subplot(1,2,2);
imshow(uint8(recon_img));
title('Reconstructed Image after keeping TOP 32 coefficients out of 64');
sgtitle('19ucc023 - Mohit Akhouri');

% calculating compression ratio and mean square error
mse_case_2 = mse(img,uint8(recon_img)); % mean square error calculation
knocked_off_coeff_2 = N*N - 32; % calculating and storing the knocked off coefficients
p_case_2 = ((N*N - knocked_off_coeff_2)/(N*N)); % calculating compression ratio


% CASE 3 : Keeping top 16 coefficients out of 64

recon_img = zeros(N,N); % to store the reconstructed image

for i=1:8:N
    for j=1:8:N
        block_8x8 = img(i:i+7,j:j+7); % selecting a 8x8 block
        block_dct = dct2(block_8x8); % Finding the DCT of the selected block
        block_dct(3:8,1:8)=zeros(6,8); % knocking off the remaining 32 coefficients
        recon_img(i:i+7,j:j+7)=idct2(block_dct); % taking IDCT of the remaining coefficients
    end
end

% Plot of original image and reconstructed image
figure;
subplot(1,2,1);
imshow(img);
title('Original Image - cameraman.tif');
subplot(1,2,2);
imshow(uint8(recon_img));
title('Reconstructed Image after keeping TOP 16 coefficients out of 64');
sgtitle('19ucc023 - Mohit Akhouri');

% calculating compression ratio and mean square error
mse_case_3 = mse(img,uint8(recon_img)); % mean square error calculation
knocked_off_coeff_3 = N*N - 16; % calculating and storing the knocked off coefficients
p_case_3 = ((N*N - knocked_off_coeff_3)/(N*N)); % calculating compression ratio


% CASE 4 : Keeping top 8 coefficients out of 64

recon_img = zeros(N,N);

for i=1:8:N
    for j=1:8:N
        block_8x8 = img(i:i+7,j:j+7); % selecting a 8x8 block
        block_dct = dct2(block_8x8);  % Finding the DCT of the selected block
        block_dct(2:8,1:8)=zeros(7,8); % knocking off the remaining 56 coefficients
        recon_img(i:i+7,j:j+7)=idct2(block_dct); % taking IDCT of the remaining coefficients
    end
end

% Plot of original image and reconstructed image
figure;
subplot(1,2,1);
imshow(img);
title('Original Image - cameraman.tif');
subplot(1,2,2);
imshow(uint8(recon_img));
title('Reconstructed Image after keeping TOP 8 coefficients out of 64');
sgtitle('19ucc023 - Mohit Akhouri');

% calculating compression ratio and mean square error
mse_case_4 = mse(img,uint8(recon_img)); % mean square error calculation
knocked_off_coeff_4 = N*N - 8; % calculating and storing the knocked off coefficients
p_case_4 = ((N*N - knocked_off_coeff_4)/(N*N)); % calculating compression ratio

% Plot of Mean Square error vs. Compression Ratio

mse_array = zeros(1,4); % For storing different values of MSE
p_array = zeros(1,4); % For storing different values of compression ratio (p)

% storage of different values of MSE
mse_array(1) = mse_case_1;
mse_array(2) = mse_case_2;
mse_array(3) = mse_case_3;
mse_array(4) = mse_case_4;

% storage of different values of compression ratio (p)
p_array(1) = p_case_1;
p_array(2) = p_case_2;
p_array(3) = p_case_3;
p_array(4) = p_case_4;

% Plot of MSE vs. Compression ratio (p) 
figure;
stem(mse_array,p_array,'Linewidth',1.5);
xlabel('Compression ratio (\rho) ->');
ylabel('Mean Square Error (\epsilon) ->');
title('19ucc023 - Mohit Akhouri','Plot of Mean Square Error (\epsilon) vs. Compression ratio (\rho)');
grid on;



        