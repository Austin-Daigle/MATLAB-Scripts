function[ chill ] = chilldude( temp, vel )
% This function measures the whindshield factor given a an air temporature
% and a given wind velocity
% temp = temperature
% vel = wind velocity

% F = 35.7 + 0.6T + (0.43T+35.7)*V^0.16
% Calculate the result from the given variables and formula and return the
% result. 
chill = 35.7+(0.6.*temp)+((0.43.*temp)-35.7).*vel.^0.16;

% Remember to add a period before operations that require matrix dimensions
% to correlate. 

end