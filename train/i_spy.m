function [r,c] = i_spy ( smallimage, bigimage, x )

%Convert to Grayscale.
bigG = rgb2gray(bigimage);
smallG = rgb2gray(smallimage);

%Get array dimensions
Rowbig = size(bigG, 1); 
Colbig = size(bigG, 2);
Rowsmall = size(smallG, 1); 
Colsmall = size(smallG, 2); 


rowsmall = smallG(1,:);
%Generate the table for KMP
%table = KMPtable(rowsmall);

for r = 1 : Rowbig - (Rowsmall-1)
    rowbig = bigG(r,:);
    
    %If the small row is found in the big row.
    %result = naivesearch(rowbig, rowsmall);
    %result = KMP(rowbig, rowsmall, table);
    result = strfind(rowbig, rowsmall);
    
    
    if(isempty(result))
        %Found no match.
    else
        %Check all rows below matched sequence for 100% accuracy, Color.
            if(bigimage(r:r+Rowsmall-1,result:result+Colsmall-1,:) == smallimage(:,:,:))
                %disp('success');
                r = r;
                c = result;
                return;
            end  
    end
end

