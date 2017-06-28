%Michelle Ly

%This function approximates the value of pi using the Plouffe, P(),
  %and Euler, E(), formulas. It then plots the first ten elements of each,
  %then it finds the smallest index in P() and E() in which the error 
  %lies within the 10^-5th place of the actual value of pi.
function pi_series()

P(1) = 0;
S = 0;
%For loop to populate P() using the Plouffe formula
for i = 0:100000
  S = S+((1/(16^i))*((4/(8*i+1))-(2/(8*i+4))-(1/(8*i+5))-(1/(8*i+6))));
  P(i+1) = S;
end

E(1) = 0;
S = 0;
%For loop to populate E() using the Euler formula
for j = 1:100000
  S = S+(1/(j^2));
  E(j) = (6^.5)*(S^.5);
end

%Plots the first ten elements of P() and E()
figure(1)
clf
plot(P(1:10),'r.')
hold
plot(E(1:10),'b.')

%---According to the graph, he Plouffe series converges faster.---

%Initialise n1 and n2 to be undefined
n1=-1;
n2=-1;
%For loop to find the smallest indices in P() and E()
for k = 1:100000
  if (abs(P(k)-pi) < (10^-5)) && (n1 == -1)
    n1 = k;
  endif
  if (abs(E(k)-pi) < (10^-5)) && (n2 == -1)
    n2 = k;
  endif
end
%Since the Plouffe formula's indices are off by +1, we must -1 from n1
n1 = n1-1;
n1
n2