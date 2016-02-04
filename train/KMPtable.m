function [ table ] = KMPtable( needle )
%KMPTABLE Summary of this function goes here
%   Detailed explanation goes here

m = size(needle,2);
table = zeros(1,m);

%Start i at 2 since the first shift is always 0
i=2;
%Outer loop fills each table entry.
while i <= m
    shift=0;
    j=i-1;
    %Inner loop generates all prefixes and suffixes for each index
    %Store the biggest shared pattern. This is the shift amount.
    while j > 0
        prefix = needle(1,1:1:i-j);
        suffix = needle(1,j+1:1:i);
        if prefix == suffix
           if size(prefix,2) > shift
              shift = size(prefix,2); 
           end
        end
        j=j-1;
    end
    table(1,i) = shift;
    i=i+1;
end

%disp(table);

end

