% Author: Dillon Evans
% Email: <dillon.e.evans@okstate.edu>
% Date: November 24th, 2020
% Program Description: This program plots a sinusoid of best fit for the
% given data and interprets the data to apply it to the context of the
% problem.
 
%Time in days
time = [15 45 75 105 135 165 225 255 285 315 345]; 

%Temperature measured in celsius
temp =  [3.4 4.7 8.5 11.7 16 18.7 19.7 17.1 12.7 7.7 5.1];

%Compute the data and display it.
[mean, amplitude, maxValue] = sinusoidFit(time,temp,365);
fprintf("The mean temperature is: %f °C.\n", mean);
fprintf("The amplitude is: %f.\n", amplitude);
fprintf("The maximum temperature is achieved around day %f.\n", ceil(maxValue));



