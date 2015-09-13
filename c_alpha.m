% codility alpha
% first covering prefix
% rupert small - 2015

function [FCP] = c_alpha(A)
run = 1;
meta = ones(1,length(A));
    while run > 0
        search = (A ~= A(run));
        meta = meta.*search;
        summation = sum(meta); 
        if summation ~= 0
            run = run+1;
        else
            FCP = run;
            run = 0;
        end
    end            
end
