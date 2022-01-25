function [y1,y2,y3,y4] = DCT_2D(Im1,Im2,Im3,Im4)

% 19ucc023
% Mohit Akhouri

% ALGORITHM : This function will calculate the DCT of image img for various
% cases : knocking off 16,32,48 and 56 coefficients ( higher frequency
% terms )


N = size(Im1,1); % size of image (256x256)
img = Im1; % temporary variable to store the image

y1 = zeros(N,N); % output variable for case 1
y2 = zeros(N,N); % output variable for case 2
y3 = zeros(N,N); % output variable for case 3
y4 = zeros(N,N); % output variable for case 4

% ALGORITHM for compression is as follows :

recon_img = zeros(N,N); % to store the reconstructed image

for i=1:8:N
    for j=1:8:N
        block_8x8 = img(i:i+7,j:j+7); % selecting a 8x8 block
        block_dct = dct2(block_8x8); % Finding the DCT of the selected block
        block_dct(7:8,1:8)=zeros(2,8); % knocking off the remaining 16 coefficients
        recon_img(i:i+7,j:j+7)=idct2(block_dct); % taking IDCT of the remaining coefficients
    end
end

y1=recon_img;

% ALGORITHM for compression is as follows :

recon_img = zeros(N,N); % to store the reconstructed image

for i=1:8:N
    for j=1:8:N
        block_8x8 = img(i:i+7,j:j+7); % selecting a 8x8 block
        block_dct = dct2(block_8x8); % Finding the DCT of the selected block
        block_dct(5:8,1:8)=zeros(4,8); % knocking off the remaining 32 coefficients
        recon_img(i:i+7,j:j+7)=idct2(block_dct); % taking IDCT of the remaining coefficients
    end
end

y2 = recon_img;

% ALGORITHM for compression is as follows :

recon_img = zeros(N,N); % to store the reconstructed image

for i=1:8:N
    for j=1:8:N
        block_8x8 = img(i:i+7,j:j+7); % selecting a 8x8 block
        block_dct = dct2(block_8x8); % Finding the DCT of the selected block
        block_dct(3:8,1:8)=zeros(6,8); % knocking off the remaining 32 coefficients
        recon_img(i:i+7,j:j+7)=idct2(block_dct); % taking IDCT of the remaining coefficients
    end
end

y3 = recon_img;

% ALGORITHM for compression is as follows :

recon_img = zeros(N,N);

for i=1:8:N
    for j=1:8:N
        block_8x8 = img(i:i+7,j:j+7); % selecting a 8x8 block
        block_dct = dct2(block_8x8);  % Finding the DCT of the selected block
        block_dct(2:8,1:8)=zeros(7,8); % knocking off the remaining 56 coefficients
        recon_img(i:i+7,j:j+7)=idct2(block_dct); % taking IDCT of the remaining coefficients
    end
end

y4 = recon_img;

end