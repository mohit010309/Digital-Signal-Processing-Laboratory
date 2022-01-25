% dividing image into 8x8 blocks
im = imread('cameraman.tif');
% disp(im);

ind1 = 1;
ind2 = 1;
plotind=1;
for y=1:8:256
    for x=1:8:256
        im1=zeros(8,8);
        ind1 = 1 ;
        ind2 = 1;
        for i=x:x+7
            for j=y:y+7
                im1(ind1,ind2)=im(i,j);
                ind2=ind2+1;
            end
            ind1=ind1+1;
        end
        subplot(32,32,plotind);
        imshow(im1);
        plotind=plotind+1;
    end
end