function [ index ] = KMP( haystack, needle, table )
%KMP Summary of this function goes here

m = size(needle,2);
n = size(haystack,2);

i=1;
j=1;

while i < n
   
    while j > 0 && needle(1,j+1) ~= haystack(1,i)
       j = table(1,j);
    end
    
    if needle(1,j+1) == haystack(1,i)
        j=j+1;
    end
    
    if j == m
%        disp('found match');
%        disp(i-m+1);
        index = i-m+1;
        return;
       j=table(1,j);
    end
        
    i=i+1;
end

index = [];   

end

