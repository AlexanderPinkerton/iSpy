function [r,c] = i_spy ( smallimage, bigimage, x )




%Convert to Grayscale.
bigG = rgb2gray(bigimage);
smallG = rgb2gray(smallimage);

%Get array dimensions
Rowbig = size(bigG, 1); 
Colbig = size(bigG, 2);
Rowsmall = size(smallG, 1); 
Colsmall = size(smallG, 2); 



%Using matlab strfind

for r = 1 : Rowbig - (Rowsmall-1)
    
    rowbig = bigG(r,:);
    rowsmall = smallG(1,:);
    
    %If the small row is found in the big row.
    result = strfind(rowbig, rowsmall);
    %result = boyermoore(rowbig, rowsmall);
    %result = naivesearch(rowbig, rowsmall);

    
    if(isempty(result))
        %Found no match.
    else
%         disp(r);
%         disp(result);

        %//Check all rows below matched sequence for 100% accuracy
            if(bigG(r:r+Rowsmall-1,result:result+Colsmall-1) == smallG(:,:))
%                 disp('success');
                r = r;
                c = result;
                return;
            end  
    end
end












% note that this implementation does not use variable ""
% 
% Ro = size(object_im, 1); 
% Co = size(object_im, 2); 
% 
% Rb = size(big_im, 1); 
% Cb = size(big_im, 2); 
% 
% 
% o_im = int16(object_im);
% b_im = int16(big_im);
% 
% 
% %Slide object image down over the big image
% for r = 1 : Rb - (Ro-1)
%     %Slide object image right over the big image
%     for c = 1 : Cb - (Co-1)
%         %Check the current position of the object image against the big
%         diff_val = b_im(r:r+(Ro-1), c:c+(Co-1), : ) - o_im; 
%         if ( sum ( abs ( diff_val(:)) ) == 0 )
%             return;
%         end
%     end
% end
