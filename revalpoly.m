function[ pval ] = revalpoly(clist,xval)
% Input Help: 
% Input only the coeffients of the polynomial into a vector to evalute with
% your x-value (xval).
% Example: f(x) = 1+x+x^2+82(x)^2 with an x value of -3 would be entered 
% as revalpoly([1,1,1,82],-3)

% This method is more efficient in evaluating polynomials with a given
% x-value by using an adapted version of synthetic division. This function 
% requires polynomials to be entered as coefficients into a clisttor and the 
% x-value must be expresse as ax x-value (constant).

%return an error message if there are not entriese in the matrix
if isempty(clist)
    error('There must be entries in the matrix');
%if there is one entry then return that entry as the result (in the
%function this would be the constant so not opperations would be required).
elseif length(clist) == 1
    pval = clist;
%if there are two entries then return the product of the variable with the
%xval and the constant added as well.
elseif length(clist) == 2
    pval = clist(1,1) + (clist(1,2)*xval);
else    
    %factor the ending: add the constant and multiply the variable by the
    %x-value.
    pval = clist(1,length(clist)-1) + (clist(1,length(clist))*xval);
    %For every item in the vector minus two 
    for i = length(clist)-2:-1:1
        %Multiply the product by the given x-value
        pval = pval * xval;
        %Add the product with the given entry from the clisttor
        pval = pval + clist(1,i);
    end
end