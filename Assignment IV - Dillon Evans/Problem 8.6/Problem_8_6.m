% Author: Dillon Evans
% Email: <dillon.e.evans@okstate.edu>
% Date: September 17th, 2020
% Program Description: This program computes the result of matrix multiplication
% for three different matrices A, B, and C.

%Array Representations of Matrices A, B, and C
A = [6,-1; 12,18; -5,4];
B = [4,0;0.5,2];
C = [2,-2;3,1];

%a) These are the possible matrix multiplications. There are 3! = 6 
%   combinations but these are the only possible cases due to the 
%   dimensions of the matrices
AB = matrixMultiplication(A,B);
AC = matrixMultiplication(A,C);
BC = matrixMultiplication(B,C);
CB = matrixMultiplication(C,B);

%Prints the results of Matrix Multiplication
display(AB);
display(AC);
display(BC);
display(CB);

%b) The remaining pairs can not be multiplied because the dimension of
%   the columns of A does not match the dimension of the rows of B nor C.
%   An mxr matrix is the result of an mxn matrix multiplied by an nxr
%   matrix.
%   BA = matrixMultiplication(B,A); (Throws an error)
%   CA = matrixMultiplication(C,A); (Throws an error)

%c) Matrix multiplication is NOT commutative. That is, BC =/= CB.
%   Futhermore an mxn matrix multiplied by and nxr matrix is not the same 
%   as multiplying an nxr and mxn matrix. In fact, this multiplication
%   could not be carried out.


%                               Output
% AB =
% 
%    23.5000   -2.0000
%    57.0000   36.0000
%   -18.0000    8.0000
% 
% 
% AC =
% 
%      9   -13
%     78    -6
%      2    14
% 
% 
% BC =
% 
%      8    -8
%      7     1
% 
% 
% CB =
% 
%     7.0000   -4.0000
%    12.5000    2.0000


 