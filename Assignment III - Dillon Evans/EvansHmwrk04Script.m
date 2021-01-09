% Author: Dillon Evans
% Email: <dillon.e.evans@okstate.edu>
% Date: September 13th, 2020
% Program Description: This program computes the coefficient of drag
% needed for the bungee jumper to obtain a velocity of 46 m/s given a mass
% of 95 kg and a fall time of 9 sec. 

% What I Did: Used the bisection method to find the root of the equation
% What Happened: Solved for drag using the approximated root
% What I learned: How to apply root finding to physics problems.
 
%Velocity as a function of cd
fcd=@(m,d,t,v) sqrt(9.81*m/d)*tanh(sqrt(9.81*d/m)*t)-v; 

%Testing with 5% Error
[root,Ea,ea,n] = bisectNew(@(cd) fcd(95,cd,9,46),0.2, 0.5, 0.05);
fprintf("\n< 5%% Error:\nDrag Coefficient needed: %f, Iterations: %d, Ea: %f, ea %f\n",root,n,Ea,ea);

%Testing with default Error
[root,Ea,ea,n] = bisectNew(@(cd) fcd(95,cd,9,46),0.2, 0.5);
fprintf("\nDefault Error (0.000001%%):\nDrag Coefficient needed: %f, Iterations: %d, Ea: %f, ea %f\n",root,n,Ea,ea);