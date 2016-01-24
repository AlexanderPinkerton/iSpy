function [ index ] = naivesearch( array, pattern )
%NAIVESEARCH Summary of this function goes here
%   Detailed explanation goes here
    for i=1 : size(array,2) - size(pattern,2)
        if pattern(1,:) == array(1,i:i+size(pattern,2)-1)
           index = i;
           return;
        end
    end
    index = [];
end

