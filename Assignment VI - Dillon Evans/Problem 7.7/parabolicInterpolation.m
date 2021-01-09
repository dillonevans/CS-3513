function max = parabolicInterpolation(iter,x1,x2,x3,f)

fprintf("%s %10s %10s %10s %10s %10s %10s %10s %10s\n", "i", "x1", "f(x1)","x2","f(x2)","x3","f(x3)","x4","f(x4)"); 
for i = 1:iter
    numerator = (realpow(x2-x1,2)*(f(x2)-f(x3))) - (realpow(x2-x3,2)*(f(x2)-f(x1)));
    denominator = ((x2-x1)*(f(x2)-f(x3))) - ((x2-x3)*(f(x2)-f(x1)));
    x4 = x2 - ((1/2)*(numerator/denominator));
    fprintf("%d %10f %10f %10f %10f %10f %10f %10f %10f\n", i, x1, f(x1),x2,f(x2),x3,f(x3),x4,f(x4)); 

    if x4 < x2
        if f(x4) < f(x2)
            x2prev = x2;
            x2 = x4;
            x3 = x2prev;
        elseif (f(x4) > f(x2))
            x1 = x4;
        end
    elseif (x4 > x2)
        if f(x4) < f(x2)
            x1 = x2;
            x2 = x4;
        elseif (f(x4) > f(x2))
            x3 = x4;
        end
    end  
    max = f(x4);
end
