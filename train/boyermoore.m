function [ index ] = boyermoore( big, pattern)
%========================================================================
%Perform Bad Character Preprocessing
badchar = zeros(1,256);

%Bad Character
for i = 1 : 256
    badchar(1,i) = -1;
end

i=1;
while i < size(pattern,2) + 1
    badchar(1,pattern(1,i)) = i;
    i = i + 1;
end

disp(badchar);
%========================================================================
m = size(pattern,2);
n = size(big,2);

% s=0;
% while s <= (n-m)
%     j = m-1;
%   
%     disp((pattern(1,j)));
%     disp(big(1,s+j));
%     disp('------');
%     while j >= 0 && (pattern(1,j) == big(1,s+j))
%         j = j-1;
%     end
%         if j < 0
%             disp('pattern at + j');
%             if (s+m) < n
%                 s = s + (m-badchar(1,big(1,s+m)));
%             else
%                 s = s + 1;
%             end
%         else
%             s = s + max(1,j - badchar(1,big(1,s+j) + 1));
%         end      
%     index = [];
% end






% K=1;
% while K <= (n - m) + 1
%     skip = 0;
%     
%     L=m-1;
%     while L >= 0
%         if pattern(1,L) ~= big(1,K+L)
%             skip = max(1,L-badchar(1,big(1,K+L)+1));
%             break;
%         end
%         L=L-1;
%     end
%     
%     
%     
%     if(skip == 0)
%         disp('Found Match');
%         index = K;
%         return;
%     end
%     
%     
%     K = K + skip;
% end
% index=[];


end

