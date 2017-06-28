%Michelle Ly

%This function will take in a vector and return its Euclidean norm.
function [z] = compute_Euclidean_norm(x)

z = 0;
%Summation of the squares of the vector elements
for k = 1:length(x)
  z = z+x(k).^2;
end
%Square root of the summation
z = z.^(0.5);
end