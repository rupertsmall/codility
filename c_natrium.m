% codility natrium
% max monotonic distance
% rupert small, 2015

function max_dist = c_natrium(arr)
len = length(arr);
numbers = 1:len;
max_len = zeros(len,1);
for i = 1:len-1
   check = arr >= arr(i);
   indices = numbers.*check;
   maxi = max(indices);
   if maxi > i
       max_len(i) = maxi-i;
   end
   max_dist = max(max_len);
end
end
