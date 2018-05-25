syms t v a b c d e f g

% This is the system of equations
M = @(t,v,a,b,c,d,e,f,g)[a*v(1) - b*v(1)*v(2) - c*v(1)*v(3); d*v(1)*v(2) - e*v(2); f*v(1)*v(3) - g*v(3)];

% This is where the parameters are set 
% Paramaters can be constant or they can be looped over 
a = 4;
b = 2;
c = 6;
d = 5;
e = 3;
f = 8;
g = 6;

% This is the time scale being observed
vrange = [0 10];

% These are the inital conditions for x, y, and z 
cond = [1 1 1];

% Here is a solution to the system
[t, va] = ode45(@(t,v) M(t,v,a,b,c,d,e,f,g), vrange, cond);

% Here is a graph of that solution
plot(t,va(:,1))
hold on
plot(t,va(:,2))
hold on
plot(t,va(:,3))
legend('X', 'Y', 'Z')
title('a solution!')



% 
% ode1 = diff(x) == a*x - b*x*y -c*x*z;
% ode2 = diff(y) == d*x*y - e*y;
% ode3 = diff(z) == f*x*z - g*z;
% 
% Vx = odeToVectorField(ode1)
% Vx = subs(Vx,a,1);
% Vx = subs(Vx,b,1);
% Vx = subs(Vx,c,1)
% Vy = odeToVectorField(ode2)
% Vy = subs(Vy,d,1);
% Vy = subs(Vy,e,1);
% Vz = odeToVectorField(ode3)
% Vz = subs(Vz,f,1);
% Vz = subs(Vz,g,1);
% 
% X = matlabFunction(Vx, 'Vars', {'t', 'X', 'Y', 'Z'})
% Y = matlabFunction(Vy, 'Vars', {'t', 'X', 'Y', 'Z'})
% Z = matlabFunction(Vz, 'Vars', {'t', 'X', 'Y', 'Z'})


%odes = [ode1; ode2; ode3]

%S = dsolve(odes)
% xSol(t) = S.x;
% ySol(t) = S.y;
% zSol(t) = S.z;
% 
% fplot(xSol)
% hold on
% fplot(ySol)
% hold on
% fplot(zSol)
% hold on
% legend('xSol', 'ySol', 'zSol', 'Location', 'best')