function theta = findTheta(x, y)

if (x < 0)
    if (y > 0)
        theta = atan(y/x) + pi;
    elseif (y < 0)
        theta = atan(y/x)-pi;
    else
        theta = pi;
    end
elseif (x == 0)
        if (y > 0)
            theta = pi / 2;
        elseif (y < 0)
            theta = -pi/2;
        else
            theta = 0;
        end
else
    theta = atan(y/x);
end
end