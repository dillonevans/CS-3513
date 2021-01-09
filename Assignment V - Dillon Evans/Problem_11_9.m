% Author: Dillon Evans
% Email: <dillon.e.evans@okstate.edu>
% Date: September 30th, 2020
% Program Description: This program computes the condition numbers 
% of the Vandermonde Matrix using matrix norms provided by MATLAB. 

% What I Did: Found Matrix Condition Numbers
% What Happened: I used MATLAB to calculate various condition numbers.
% What I Learned: How to calculate matrix morms and use them to calculate
% Condition Numbers.

%Variables to use in the Vandermonde Matrix
x1 = 4;
x2 = 2;
x3 = 7;

%Initialize the Vandermonde Matrix
VM = [(x1*x1), x1, 1; (x2 * x2), x2, 1; (x3*x3), x3, 1];

%Display the Vandermonde Matrix given three variables x1, x2, and x3.
fprintf("The Vandermonde Matrix");
display(VM);

%Part a
fprintf("Condition Number using the Row-Sum Norm: %f\n", cond(VM, inf));

%Part b
fprintf("Condition Number using the Spectral Norm: %f\n", cond(VM, 2));
fprintf("Condition Number using the Frobenius Norm: %f\n", cond(VM, 'fro'));

%                               Output
% The Vandermonde Matrix
% VM =
% 
%     16     4     1
%      4     2     1
%     49     7     1
% 
% Condition Number using the Row-Sum Norm: 323.000000
% Condition Number using the Spectral Norm: 216.129359
% Condition Number using the Frobenius Norm: 217.484252