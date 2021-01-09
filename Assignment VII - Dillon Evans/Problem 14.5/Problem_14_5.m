%This program uses linear regression to plot the points below.
x = [0,2,4,6,9,11,12,15,17,19];
y = [5,6,7,6,9,8,8,10,12,12];
[a, r2, xAv, yAv,stdError] = linreg(x,y);
fprintf("a1: %f, a0: %f, xAverage: %f, yAverage: %f, r^2: %f, Error: %f\n", a(1),a(2),xAv, yAv, r2, stdError);

hold on 

y = [0,2,4,6,9,11,12,15,17,19];
x = [5,6,7,6,9,8,8,10,12,12];
[a, r2, xAv, yAv,stdError] = linreg(x,y);
fprintf("a1: %f, a0: %f, xAverage: %f, yAverage: %f, r^2: %f, Error: %f\n", a(1),a(2),xAv, yAv, r2, stdError);