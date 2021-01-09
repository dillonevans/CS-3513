function approx = approximateSqrt(a, maxIterations, toleratedError)

if nargin < 1 || isempty(a), a = 1; end 
if nargin<2||isempty(maxIterations), maxIterations = 50; end
if nargin<3||isempty(toleratedError), toleratedError = (0.5 * realpow(10,2-15)); end

isNegative = (a < 0);
a = abs(a);
current = 0;
previous = a;
iterations = 0;
relativeError = 0;

%Loops until the relative percent error is within the tolerated error or
%the the maximum number of iterations is reached
while (1)
    if previous ~= 0, current = (previous + (a / previous)) / 2; end    
    if current ~= 0, relativeError = ((abs(current-previous))/current) * 100; end
    if (abs(relativeError) < toleratedError || iterations > maxIterations), break; end
    iterations = iterations + 1;
    previous = current;
end

if (isNegative)
    approx = current * 1i;
else
    approx = current;
end