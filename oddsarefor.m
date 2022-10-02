function [ oddprod ] = oddsarefor( vec )
% Given a vector of integer values this function will return the product of
% only the odd, positive values found in the vector. If the vector contains
% no odd, positive values, the function will return the value 1.

N = length( vec );          % set max number of repititions
oddprod = 1;                % initialize oddprod for multiplicative update

for idx = 1:N
    if vec( idx ) > 0
        if mod( vec( idx ), 2 ) == 1
            oddprod = oddprod * vec( idx );
        end
    end
end

end

