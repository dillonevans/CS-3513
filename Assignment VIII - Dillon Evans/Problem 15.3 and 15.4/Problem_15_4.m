% Author: Dillon Evans
% Email: <dillon.e.evans@okstate.edu>
% Date: November 24th, 2020
% Program Description: This program fits a cubic polynomial to the given
% data.
 
%Input Vectors
x = [3 4 5 7 8 9 11 12]';
y = [1.6 3.6 4.4 3.4 2.2 2.8 3.8 4.6]';

%Compute and display the data
[syx,r2,a] = polyReg(x,y,3);
fprintf("Syx: %f, r^2: %f\nCoefficients: ", syx, r2);
display(a');