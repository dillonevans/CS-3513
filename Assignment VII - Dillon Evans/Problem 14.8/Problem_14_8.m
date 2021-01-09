%This program uses linear regression to plot the points below.
x = [0.1,0.2,0.4,0.6,0.9,1.3,1.5,1.7,1.8];
y = [.75,1.25,1.45,1.25,.85,.55,.35,.28,.18];
[a, r2, xAv, yAv,stdError] = linreg(x,y);
fprintf("a1: %f, a0: %f, xAverage: %f, yAverage: %f, r^2: %f, Error: %f\n", a(1),a(2),xAv, yAv, r2, stdError);

hold on 