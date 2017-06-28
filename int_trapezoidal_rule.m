function [I]=int_trapezoidal_rule(fun,a,b,n)

%Input:
% fun: function handle representing f(x)
% a,b: endpoints of the integration interval
% n: number of evenly-spaced points in [a, b] (including endpoints)

h = (b-a)/(n-1);
xj(1) = 0;
f(1) = 0;

for j=1:n
  xj(j) = a + (j-1)*h;
end

for i=2:n
  f(i) = f(i-1) + h*(fun(xj(i-1)) + fun(xj(i)))/2;
end

I = f(n);

end