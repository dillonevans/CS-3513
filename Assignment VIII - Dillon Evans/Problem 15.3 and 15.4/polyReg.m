function [syx,r2,a] = polyReg(x,y,m)
% polyReg: Compute a best fit polynomial of degree M
% [syx,r2,a] = polyReg(x,y,m)
% input:
% x, y = the given input vectors
% m = the degree of the polynomial

%output:
%syx = the standard error
%r2 = the coefficient of determination
%a = the coefficients of the degree m polynomial

Z = [ones(size(x)) x.^(1:m)];
a = Z\y;
St = sum((y-mean(y)).^2);
Sr = sum((y-Z*a).^2);
r2 = 1-Sr/St;
syx = sqrt(Sr/(length(x)-length(a)));
end