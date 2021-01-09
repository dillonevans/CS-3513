function [a, r2, xAv, yAv, stdErr] = linreg(x,y)
n = length(x);
sr = 0;
st = 0;

if length(y) ~= n, error('Lengths must be equal'); end
    x = x(:); y = y(:);
    sumX = sum(x); sumY = sum(y);
    sumX2 = sum(x.*x); sumY2 = sum(y.*y); sumXY = sum(x.*y);
    
    yAv = sum(y)/n;
    xAv = sum(x)/n;
    
    a(1) = (n*sumXY-sumX*sumY)/(n*sumX2-sumX^2);
    a(2) = yAv-a(1)*xAv;
  
    xp = linspace(min(x), max(x), 2);
    yp = a(1)*xp + a(2);
    plot(x,y,'o',xp,yp);
    
    for i = 1:n
        st = st + (y(i) - yAv)^2;
        sr = sr + (y(i) - a(2) - a(1).*x(i))^2;
    end
    
    stdErr = sqrt((sr/(n-2)));
    r2 = (st-sr)/st;
    display(stdErr);
    grid on
end