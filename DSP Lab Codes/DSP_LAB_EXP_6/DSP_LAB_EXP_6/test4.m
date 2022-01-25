arr = [ 1 2 3 4 ; 5 6 7 8 ; 9 10 11 12 ; 13 14 15 16];
disp(arr);

for j=1:2:4
    for i=1:2:4
        arr1=zeros(2,2);
        % arr1=arr(j:j+1,i:i+1);
        arr(j:j+1,i:i+1)=function1(arr(j:j+1,i:i+1));
        
    end
end

disp(arr);