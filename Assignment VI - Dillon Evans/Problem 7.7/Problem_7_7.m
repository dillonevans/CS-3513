% Author: Dillon Evans
% Email: <dillon.e.evans@okstate.edu>
% Date: October 28th, 2020
% Program Description: This program creates a table of approximations to a 
% non-linear systems of equations using Golden-Section Search as well as
% Parabolic Interpolation


% Part a
f = @(x)((4*x)-1.8*(realpow(x,2))+1.2*(realpow(x,3))-0.3*(realpow(x,4)));
GoldenMin(0.15,-2,4,f);

%Part b
parabolicInterpolation(5,1.75,2,2.5,f);
