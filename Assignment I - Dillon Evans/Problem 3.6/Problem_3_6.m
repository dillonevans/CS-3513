x = [2,2,0,-3,-2,-1,0,0,2];
y = [0,1,3,1,0,-2,0,-2,2];
len = length(x);

for i = 1 : len
    xi = x(i);
    yi = y(i);
    r = findRadius(xi,yi);
    theta = findTheta(xi, yi);
    fprintf('x = %2d, y = %2d, r = %2f, theta = %2.3f\n', xi, yi, r,rad2deg(theta));
end

