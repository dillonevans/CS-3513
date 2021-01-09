function [xopt, min] = GoldenMin(es,xl,xu,func)

isOver = false;
phi = (1+sqrt(5))/2;
f = func;
fprintf("\n\n%10s %10s %10s %10s %10s\n", "x1","x2","xl","xu","min");

while(~isOver)
    d = (phi-1) * (xu-xl);
    x1 = xl + d;
    x2 = xu-d;
    if(f(x1) < f(x2))
       fprintf("\t%10f %10f %10f %10f %10f\n", x1,x2,xl,xu,f(x1));
        xl = x2;
        xopt = x1;
    else
        fprintf("\t%10f %10f %10f %10f %10f\n", x1,x2,xl,xu,f(x2));
        xu = x1;
        xopt = x2;
    end
    
    if (xopt ~= 0)
        ea = (2-phi)*abs((xu-xl)/xopt);
        if (ea <=es)
            isOver = true;
        end
    end
end
min = f(xopt);
fprintf("\t%10f %10f %10f %10f %10f\n\n\n", x1,x2,xl,xu,f(xopt));
end