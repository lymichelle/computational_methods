function test_integration()

a = -3;
b = 1;

fun = @(x) (cos((3.*(e.^(-x.^2)))./2))./(1+(x.^2)) - ((x.^3)./30);
xf = linspace(-3,1,100);
figure(1);
plot(xf,fun(xf));
I = 1.6851344770476;
i = 100;
e1(1)=0;
e2(1)=0;
e3(1)=0;
figure(2);
for n=2:i
  [I1]=int_midpoint_rule(fun,a,b,n);
  [I2]=int_trapezoidal_rule(fun,a,b,n);
  [I3]=int_Simpson_rule(fun,a,b,n);
  e1(n) = abs(I-I1);
  loglog(n,e1,'b')
  hold
  e2(n) = abs(I-I2);
  loglog(n,e2,'r')
  hold
  e3(n) = abs(I-I3);
  loglog(n,e3,'y')
  hold
end

end