% Author: Dillon Evans
% Email: <dillon.e.evans@okstate.edu>
% Date: October 22nd, 2020
% Program Description: This program plots a non linear system in order to 
% find its approximate solutions

hold on;
fplot(@(x)sqrt(5-realpow(x,2)));
fplot(@(x)realpow(x,2)-1);
