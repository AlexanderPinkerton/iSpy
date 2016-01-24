
% testarray = [1,5,4,6,8,7,2,3,5,6,3];
% pattern = [7,2,3];
% 
% naivesearch(testarray,pattern);
% 

txt = [1,2,1,1,1,2,3,4];
pat = [1,2,3];
boyermoore(txt,pat);

% 
% 
% %21x27x3
% bigimage = imread('data/set1_big_im.png');
% smallimage = imread('data/set1_object_im_1.png');
% 
% %imshow(smallimage);
% 
% %Convert to Grayscale.
% bigG = rgb2gray(bigimage);
% smallG = rgb2gray(smallimage);
% 
% %Get array dimensions
% Rowbig = size(bigG, 1); 
% Colbig = size(bigG, 2);
% Rowsmall = size(smallG, 1); 
% Colsmall = size(smallG, 2); 
% 
% 
% 
% %Using matlab strfind
% 
% for r = 1 : Rowbig - (Rowsmall-1)
%     
%     rowbig = bigG(r,:);
%     rowsmall = smallG(1,:);
%     
%     %If the small row is found in the big row.
%     %result = naivesearch(rowbig, rowsmall);
%     result = boyermoore(rowbig, rowsmall);
%     %result = strfind(rowbig, rowsmall);
% 
%     
%     if(isempty(result))
%         %Found no match.
%     else
%         disp(r);
%         disp(result);
%         
%         %Check row below
%         %for ir = r+1 : Rowbig - (Rowsmall-1)
%             %Big row below equals small row below
%             if(bigG(r:r+Rowsmall-1,result:result+Colsmall-1) == smallG(:,:))
%                 disp('success');
%             end
%         %end
%         
%     end
%     
% end
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% % A = imread('data/test.png');
% % %disp(size(A));
% % disp(A);
% % 
% % %21x27
% % B = rgb2gray(A);
% % %disp(B);