function test_least_squares_interp()

x(1)=0;
y(1)=0;

for i = 1:15
  x(i) = -1 + (2*i)/15;
  y(i) = 1/(2+sin(20*x(i)^.2));
end

M=15;
[a,err] = poly_least_squares(x,y,M);
N = length(x);
p=0;
plot(x,y,'bo')
hold
for j = 1:M+1
  p = p + (a(j) * x.^(j-1));
end
plot(x,p,'r')