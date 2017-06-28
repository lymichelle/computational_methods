%Michelle Ly

%This function will take in an nxn matrix and an nx1 vector and return their
  %product, which will be an nx1 vector.
function [y] = matrix_times_vector(A,x)

y(1) = 0;
s = 0;
%Outer for loop for i rows
for i = 1:size(A)
%Inner for loop for j columns, summing the product of the vectors
  for j = 1:size(A)
    s = s+(A(i,j)*x(j));
  end
  y(i) = s;
  s = 0;
end
%Transpose of y to produce an nx1 vector
y = y';