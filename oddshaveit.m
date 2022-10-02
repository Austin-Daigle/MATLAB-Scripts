function[ oddprod ] = oddshaveit( vec )
% This function return the product of only the odd positive entries in a
% matrix
% vec = input vector
% oddprod = product of all positive odd integers in the vector (by defult
% this return 1 if none are present)

% Create the default return and the for loop
vecprod = 1;
for i = 1: length(vec)  
        % Check to see if the given entry from the vector is odd
        if ~(mod(vec(i),2) == 0)
            % Check to see if the given entry is positive
            if vec(i) > 0
                % calculate the product if all conditions are valid
                vecprod = vecprod * vec(i);
            end
        end
end
    % Return the product from the for loop
    oddprod = vecprod;
end