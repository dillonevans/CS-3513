% Author: Dillon Evans
% Email: <dillon.e.evans@okstate.edu>
% Date: September 29th, 2020
% Program Description: This program multiplies the inverse matrix obtained
% using LU Factorization by the 
% original matrix A to see if the result is correct.

% What I Did: Computed A^-1 by hand using LU factorization
% What Happened: A*A^-1 gave the Identity Matrix
% What I Learned: How to use LU Factorization to find inverses.

A = [10,2,-1;-3,-6,2;1,1,5]; 
invA = [32/289, 11/289, 2/289; -1/17, -3/17, 1/17; -3/289, 8/289, 54/289];

fprintf("The Given Matrix")
display(A);
fprintf("The Inverse Obtained Through LU Factorization: ");
display(invA)
fprintf("Result of A*A^-1\n");
display(A * invA);

%As displayed in the output below, the computed inverse IS in fact the
%inverse of A since A*(A^-1) = I. Interestingly, there are -0.0's present
%in the identity matrix due to floating point arithmetic. This could be
%corrected using the abs function. 

%                               Output
% The Given Matrix
% A =
% 
%     10     2    -1
%     -3    -6     2
%      1     1     5
% 
% The Inverse Obtained Through LU Factorization: 
% invA =
% 
%     0.1107    0.0381    0.0069
%    -0.0588   -0.1765    0.0588
%    -0.0104    0.0277    0.1869
% 
% Result of A*A^-1
%     1.0000   -0.0000         0
%    -0.0000    1.0000    0.0000
%     0.0000         0    1.0000
