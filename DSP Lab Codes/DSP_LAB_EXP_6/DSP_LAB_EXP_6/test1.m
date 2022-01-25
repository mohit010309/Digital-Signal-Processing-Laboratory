% testing lossy based compression
im1 = imread('cameraman.tif');
disp(size(im1,1));
disp(size(im1,2));

figure;
imshow(im1);
title('original image');

dct_image = dct2(im1);

figure;
imshow(dct_image);
title('dct of image');

% compression of image starts here
for i=1:256
    for j=1:256
        if j<=128
            dct_image(i,j)=dct_image(i,j);
        else
            dct_image(i,j)=0;
        end
    end
end

idct_image = idct2(dct_image);

figure;
imshow(uint8(idct_image));
title('idct of image');