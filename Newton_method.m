%Michelle Ly
%Using Octave

function [z0,iter,res,his] = Newton_method(fun,dfun,x0,tol,Nmax)

%Inputs:
% fun: function handle representing f(x) 
% tol: maximum tolerance allowed for the increment |x(k+1) − x(k)|
% Nmax: maximum number of iterations allowed 
% dfun: function handle representing df(x)/dx (Newton method) 
% x0: initial guess for the zero (Newton method)

%Outputs:
% z0: approximation of the zero z0 
% iter: number of iterations to obtain z0
% res: residual at z0 (i.e., |f(z0)|) 
% his: vector collecting all the elements of the sequence {x(k)}k=0,1,.. (convergence history)

x=x0;
iter = 0;
res = 0;
his = 0;
f = fun(x);
df = dfun(x);
diff = tol+1;
while diff >= tol && iter < Nmax
  iter = iter+1;
  diff = -f/df;
  x = x+diff;
  diff = abs(diff);
  f = fun(x);
  df = dfun(x);
  his(iter) = x;
end
z0 = x;
res = abs(f);
end
if iter == Nmax && diff > tol
  error('Newton stopped without converging within the desired tolerance.')
end
