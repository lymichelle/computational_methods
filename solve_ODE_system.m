function solve_ODE_system()

NSTEPS = 1000000;
IOSTEP = 50;
DT = 1e-3;
T = 100;
y0 = [1 2 3];

fun = @(y,t) [-y(1) + y(2)*y(3); -y(2)+(y(3)-2)*y(1); 1-y(1)*y(2)]

[yup1,t] = AB3(fun,y0,T,DT,IOSTEP)

figure(1);
plot(t,y1(1))
hold
plot(t,y1(2))
hold
plot(t,y1(3))

figure(2);
plot3(y1(:,1))

end