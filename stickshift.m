function[ shift ] = stickshift( time )
% This function assigns a shift code for each set of time range for the
% various shifts in a factory.
% time = the 0-24 hour time code for given time (think military standard
% with a decimal)
% shift = the 1 - 3 time code for the shift (with the -1 for errors)

% Return shift #1
if (time >= 0) && (time < 8)
    shift = 1;
% Return Shift #2
elseif (time >= 8) && (time < 16)
    shift = 2;
% Return Shift #3
elseif (time >= 16) && (time < 24)
    shift = 3;
% Return -1 if the time is below zero or above 24
else
    shift = -1; 
end