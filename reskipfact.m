function[ val ] = reskipfact( n ,k )
% This function takes the skip factorial of a number using a given number
% to skip by (instead of 1).

%If either n or k is not an integer then return -1
if ~(mod(n, 1) == 0) || ~(mod(k, 1) == 0)
    val = -1;
%If either n or k is not positive then return -2
elseif n < 0 || k < 0
    val = -2;
% If all other check are returned as false then perform recursion
% operation. 
else
    %check to see if the current number is less than or equal to one, if yes then
    %return 1.
    if n <= 1
        val = 1;
    else
        % recursively call skipfact in order to subtract the next routine until
        % the given number becomes lower than one.
        val = n * reskipfact(n - k,k);
    end
end


end
