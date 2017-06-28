%Michelle Ly
%Programmed in Octave

function test_Lagrange_interpolation()

n = 8;
x = linspace(-1,1,n);

for j=1:n
  xi1(j)=-1+((2*j)/n);
  yi1(j)=1/(1+(20*xi1(j)^2));
  xi2(j)=cos(pi*j/n);
  yi2(j)=1/(1+(20*xi2(j)^2));
end
[y1] = Lagrange_interp(xi1,yi1,x);
[y2] = Lagrange_interp(xi2,yi2,x);
figure(1);
plot(x,y1,'r',x,yi1,'b',xi1, yi1, 'ro')

figure(2);
plot(x,y2,'r',x,yi2,'b',xi2, yi2, 'ro')

n = 20;

for j=1:n
  xi3(j)=-1+(2*j/n);
  yi3(j)=1/(1+(20*xi3(j)^2));
  xi4(j)=cos(pi*j/n);
  yi4(j)=1/(1+(20*xi4(j)^2));
end
[y3] = Lagrange_interp(xi3,yi3,x);
[y4] = Lagrange_interp(xi4,yi4,x);
figure(3);
plot(x,y3,'r',x,yi3,'b',xi3, yi3, 'ro')

figure(4);
plot(x,y4,'r',x,yi4,'b',xi4, yi4, 'ro')
end