function [root,Ea,ea,n] = bisectNew(func,xl,xu,Ead, varargin) 
% bisectNew: root location zeroes
% [root,Ea,ea,n]=bisect(func,xl,xu,es,Ead,...):
% uses bisection method to find the root of func
% input:
% func = name of function
% xl, xu = lower and upper guesses
% Ead = The desired absolute error
% output:
% root = real root
% Ea = The approximate absolute error
% ea = approximate relative error (%)
% n = number of iterations


if nargin<4 || isempty(Ead) || Ead == 0 
    Ead = 0.000001; 
end
test = func(xl,varargin{:})*func(xu,varargin{:});
if test>0
    error('no sign change');
end
iter = 0; xr = xl; ea = 100;
deltaX0 = xu - xl;
%Computes the number of iterations needed to fall within the desired error.
n = ceil(log2(deltaX0/Ead)); 

%Loops for the computed number of iterations
while (iter < n)
    xrPrevious = xr;
    %Splits the interval in half
    xr = (xl + xu)/2;
    if xr ~= 0 
        ea = abs((xr - xrPrevious)/xr) * 100;
    end
    Ea = abs((xu - xl)) / 2;
    test = func(xl,varargin{:})*func(xr,varargin{:});
    %The root lies between xl and xr
    if test < 0
        xu = xr;
    %The root lies between xr and xu
    elseif test > 0
        xl = xr;
    %The root has been found
    else
        ea = 0;
    end
     iter = iter + 1;
end
root = xr;