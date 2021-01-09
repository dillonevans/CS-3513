% Author: Dillon Evans
% Email: <dillon.e.evans@okstate.edu>
% Date: September 17th, 2020
% Program Description: This program computes the solution vector 
% for the linear system Ax = b. It computes the inverse and transpose of
% the coefficient matrix A as well.
% The given system is
%  0x_1 - 7x_2 + 5x_3 =  50
%  0x_1 - 4x_2 + 7x_3 = -30
% -4x_1 + 3x_2 - 7x_3 =  40

A = [0,-7,5; 0,4,7; -4, 3, -7];  
b = [50;-30;40];

%Display the solution vector x
fprintf("The solution vector x: \n");
display(A\b);

%Displays A^-1.
fprintf("Inverse of A:\n");
display(inv(A));

%Displays A^T.
fprintf("Transpose of A: \n");
display(transpose(A));

%                               Output
% The solution vector x: 
%   -15.1812
%    -7.2464
%    -0.1449
% 
% Inverse of A:
%    -0.1775   -0.1232   -0.2500
%    -0.1014    0.0725         0
%     0.0580    0.1014         0
% 
% Transpose of A: 
%      0     0    -4
%     -7     4     3
%      5     7    -7



