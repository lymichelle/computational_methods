%Michelle Ly
%Programmed in Octave

function [L] = plot_Lebesgue_function(xi)

%Input:
% xi: vector of interpolation nodes xi=[xi(1) ... xi(N+1)]
%Output:
% Plot of the Lebesgue function λN (x)
% L: Lebesgue constant ΛN

x = linspace(min(xi),max(xi),1000); 
n = length(xi); 
poly = ones(n,length(x));
leb = 0;
maxi = 0;
for k=1:n
  for j=1:n         
    if j~=k             
    poly(k,:)=poly(k,:).*(x-xi(j))/(xi(k)-xi(j));         
    end     
  end
  leb = leb + abs(poly(k,:));
  maxi = max(leb);
end
plot(x,leb)
L = maxi;
end