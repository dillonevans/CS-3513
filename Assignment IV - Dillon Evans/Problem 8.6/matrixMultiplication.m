function C = matrixMultiplication(A, B)
% matrixMultiplication: Multiply two matrices A and B
% C = matrixMultiplication(A, B)
% Dots the row and column vectors to carry out matrix multiplication
% input:
% A = The left matrix
% B = The right matrix
% output:
% C = The resulting matrix of A*B

%Ensure that the parameters are met
if (nargin < 2 || isempty(B))
    error("Not enough parameters");
end
if (~ismatrix(A) || ~ismatrix(B))
    error("A and B should both be matrices");
else
    [r1, c1] = size(A);
    [r2, c2] = size(B);
    if (c1 ~= r2)
        error("Invalid Dimensions")
    else
        C = zeros(r1,c2);
        for i = 1:r1
            for j = 1:c2
                for k = 1:r2
                    C(i,j) = C(i,j)+ ( A(i,k) * B(k,j));
                end
            end
        end
    end
end
end