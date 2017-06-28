%Michelle Ly
%Programmed in Octave

function [L1,L2,L3,L4] = test_Lebesgue_function()

%Output:
% L1,L2,L3,L4: Lebesgue constants

n = 8;
x = linspace(-1,1,n);

for j=1:n
  xi1(j)=-1+((2*j)/n);
  xi2(j)=cos(pi*j/n);
end
figure(1)
[L1] = plot_Lebesgue_function(xi1)
figure(2)
[L2] = plot_Lebesgue_function(xi2)

n = 20;

for j=1:n
  xi3(j)=-1+((2*j)/n);
  xi4(j)=cos(pi*j/n);
end
figure(3)
[L3] = plot_Lebesgue_function(xi3)
figure(4)
[L4] = plot_Lebesgue_function(xi4)
