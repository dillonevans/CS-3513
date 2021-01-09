vector = [-2,-1,0,1,2,3 4,9,16,25,36,49];
len = length(vector);
currentScalar = 0;
approximated = 0;

for i = 1:len
    currentScalar = vector(i);
    approximated = approximateSqrt(currentScalar); 
    if (currentScalar < 0)
        fprintf('Result for %2d = %2fi\n', currentScalar, imag(approximated));
    else
        fprintf('Result for %2d = %2f\n', currentScalar, approximated);
    end
end