%Michelle Ly
%Programmed in Octave

function [y] = Lagrange_interp(xi,yi,x)

%Input:
% xi: vector of interpolation nodes 
% yi: vector of data points at interpolation nodes 
% x: vector of points in which we evaluate the polynomial interpolant
%Output:
% y: polynomial interpolant evaluated at x

n = length(xi); 
poly = ones(n,length(x)); 
y=0;
for k=1:n
  for j=1:n         
    if j~=k             
      poly(k,:)=poly(k,:).*(x-xi(j))/(xi(k)-xi(j));         
    end     
  end
  y = y + yi(k)*poly(k,:);
end  
end
