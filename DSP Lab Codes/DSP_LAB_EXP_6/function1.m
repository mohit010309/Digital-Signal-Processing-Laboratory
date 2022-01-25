function [arr] = function1(arr)
r = size(arr,1);
c = size(arr,2);
for i=1:r
    for j=1:c
        arr(i,j)=arr(i,j)+100;
    end
end
end