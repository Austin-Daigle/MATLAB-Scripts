function trilist=tritriagain(k)
% This function recursively solves for the sequence of intergers on any
% level of the trinomial triangle with a given nonnegative integer. 
% this function will return a negative -1 if the input for the variable k
% is either a noninteger and/or is negative. 

% if k is a positive integer then execute the operation.
if (mod(k, 1) == 0) && (k >= 0)
    % if k=0, then return [1] as the level result
    if k == 0
        trilist = ones(1,1);
    % if k=1,then return [1 1 1] as the level result
    elseif k == 1    
        trilist = ones(1,3);        
    % if k is larger than one then continue calculating for larger numbers.       
    else        
        % first calculate the sequence at level k-1        
        prev = tritriagain(k-1);
        % initialize trilist 2*k+1 and preallocate resources
        trilist = ones(1,2*k+1);
        % calcaulte the integers of given level from the value of k
        for i = 2:2*k
            % if current position entry is 2nd entry
            if i == 2
                trilist(i) = prev(i-1)+prev(i);
                % if the current entry is next-to last entry
            elseif i == 2*k
                trilist(i) = prev(i-1)+prev(i-2);
                % if the current entry is other than 2nd entry and next to last entry
            else
                trilist(i)=prev(i-2)+prev(i-1)+prev(i); 
            end
        end
    end
else
    %Return negative one if the error checks are not passed.
    trilist=-1;
end

end