%Michelle Ly
%Using Octave

function [zc,zn] = test_zero()

%Outputs:
% zc: zero obtained by using the chord method 
% zn: zero obtained by using the Newton method

fun = @(x) 16*x.^5 - 20*x.^3 + 5*x;
dfun = @(x) 80*x.^4 - 60*x.^2 + 5;
a=-.99; b=-.9;
x0=-.99;
tol=10^-15;
Nmax=20000;

[zc,citer,cres,chis]=chord_method(fun,a,b,tol,Nmax)
[zn,niter,nres,nhis]=Newton_method(fun,dfun,x0,tol,Nmax)
z=cos(9*pi/10);

figure(1)
x=-2:1;
fplot(fun, [-1,1])

figure(2)
semilogy(abs(chis(1:citer)-z),citer-1,'r');
hold
semilogy(abs(nhis(1:niter)-z),niter-1,'b');

figure(3)
loglog(abs(chis(2:citer)-z), abs(chis(1:citer-1)-z),'r')
hold
loglog(abs(nhis(2:niter)-z), abs(nhis(1:niter-1)-z),'b')