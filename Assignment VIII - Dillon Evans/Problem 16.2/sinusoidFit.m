function [meanValue,amplitude, maxValue] = sinusoidFit(x,y,T)
% sinusoidFit: Compute a sinusoid of best fit
% [meanValue,amplitude, maxValue] = sinusoidFit(x,y,T)
% input:
% x, y = the given input vectors
% T = The period

% output:
% meanValue = The mean value
% amplitude = Amplitude
% maxValue = The input that maximizes the output

N = length(x);
omega = (2*pi)/T;

if length(y) ~= N, error('Lengths must be equal'); end
    x = x(:); y = y(:); %Convert to column vectors
    
    %Least Squares Fit of a Sinusoid from the Fourier Analysis Lecture 
    Z = [N, sum(cos(omega.*x)), sum(sin(omega.*x));...
        sum(cos(omega.*x)), sum(cos(omega.*x).^2), sum(cos(omega.*x).*sin(omega.*x));...
        sum(sin(omega.*x)), sum(cos(omega.*x).*sin(omega.*x)),sum(sin(omega.*x).^2)];
    b = [sum(y), sum(y.*cos(omega.*x)), sum(y.*sin(omega.*x))]';
    
    %Solve the linear algebraic equation to obtain the coefficients
    a = Z\b;
    
    %Plot the sinusoid function obtained from the above equation
    xp = linspace(min(x), max(x));
    yp = a(1) + a(2).*cos(omega.*xp)+a(3).*sin(omega.*xp);
    plot(x,y,'o',xp,yp);
    xlabel('Time in Days')
    ylabel('Temperature in °C')
    title('Temperature vs Time')
    %Compute the mean value, the amplitude, and the maximum input
    meanValue = mean(yp);
    amplitude = sqrt(a(2)^2 + a(3)^2);
    maxValue = (atan(a(3)/a(2)) + pi)/omega;
    grid on
end