# MATLAB Scripts
This is a simple collection of script that I have written when I learned MATLAB in 2019.

## [Chilldude.m](https://github.com/Austin-Daigle/MATLAB-Scripts/blob/main/chilldude.m)
This function measures the whindshield factor given a an air temporature
and a given wind velocity.

## [oddshaveit.m](https://github.com/Austin-Daigle/MATLAB-Scripts/blob/main/oddshaveit.m)
This function return the product of only the odd positive entries in a
matrix.

## [stickshift.m](https://github.com/Austin-Daigle/MATLAB-Scripts/blob/main/stickshift.m)
This function assigns a shift code for each set of time range for the
various shifts in a factory.

## [oddsarefor.m](https://github.com/Austin-Daigle/MATLAB-Scripts/blob/main/oddsarefor.m)
Given a vector of integer values this function will return the product of
only the odd, positive values found in the vector. If the vector contains
no odd, positive values, the function will return the value 1.

## [reskipfact.m](https://github.com/Austin-Daigle/MATLAB-Scripts/blob/main/reskipfact.m)
This function takes the skip factorial of a number using a given number
to skip by (instead of 1).

## [revalpoly.m](https://github.com/Austin-Daigle/MATLAB-Scripts/blob/main/revalpoly.m)
Input only the coeffients of the polynomial into a vector to evalute with
your x-value (xval).
Example: f(x) = 1+x+x^2+82(x)^2 with an x value of -3 would be entered 
as revalpoly([1,1,1,82],-3)

This method is more efficient in evaluating polynomials with a given
x-value by using an adapted version of synthetic division. This function 
requires polynomials to be entered as coefficients into a clisttor and the 
x-value must be expresse as ax x-value (constant).

## [tritriagain.m](https://github.com/Austin-Daigle/MATLAB-Scripts/blob/main/tritriagain.m)
This function recursively solves for the sequence of intergers on any
level of the trinomial triangle with a given nonnegative integer. 
this function will return a negative -1 if the input for the variable k
is either a noninteger and/or is negative.
