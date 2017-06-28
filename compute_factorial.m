%Michelle Ly

%This function will take in a natural number (possibly zero), and return
  %the factorial of it. 
%The maximum input is 170; any input larger than 170 will return "INF"
function [b] = compute_factorial(n)

b = 1;
%Condition for the case when n = 0
if n == 0
  b = 1;
%For loop to implement the factorial
elseif n > 0
  for i = 1:n
    b = b*i;  
  end
end