% codility beta
% number of intersecting discs
% rupert small, 2015

function [intersections] = c_beta(radii)
intersections = 0;
len = length(radii) - 1;
left_edges = (0:len) - radii;
right_edges = left_edges + 2*radii;
for i=1:len
    overlaps = left_edges <= right_edges(i);
    intersections = intersections + sum(overlaps(i+1:end));
    if intersections >= 10000000
        intersections = -1;
        break
    end
end
end
