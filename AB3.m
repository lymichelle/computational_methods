%Programmed by Michelle Ly on March 21, 2017

function [y,t] = AB3(fun,y0,T,DT,IOSTEP)

%Input:
  %fun: function handle representing f(y, t) 
  %y0: column vector representing the initial condition 
  %T: period of integration 
  %DT: time step 
  %IOSTEP: Input/output step. The solution is saved in the output matrix y 
    %every IOSTEP steps.
%Output:
  %y: n × S matrix collecting the time snapshots of the solution to (2). 
  %Note that the total number of snapshots S (including the initial condition) 
    %is floor(T/(IOSTEP*DT))+1. 
  %t: vector collecting the time instants at which the solution is saved in the 
    %output matrix y.
    
iter = 1; 
S = floor(T/(IOSTEP*DT))+1; 
n = length(y0);
y = zeros(n,S); 
t = zeros(S,1); 
y1 = y0;
t1 = 0; 
t(1) = 0; 
iterout = 3; 

for i = 2:4
  y1(i) = y1(i-1)+DT*fun(y1(i-1), t1(i-1));
  t1(i) = t1(i-1)+DT;
end

if IOSTEP==1     
  y(:,iterout) = y1(4);     
  t(iterout) = t1(4);     
  iterout = iterout+1; 
end 
iter = iter+1; 

for i = 4:S
  if iter*DT <= T     
    y1(i) = y1(i-1)+DT/12*(23*fun(y1(i-1),t1(i-1))-16*fun(y1(i-2),t1(i-2))+5*fun(y1(i-3), t1(i-3)));     
    t1(i) = t1(i-1)+DT;    
    if mod(iter,IOSTEP) == 0         
      y(:,iterout) = y1(i);         
      t(iterout) = t1(i);         
      iterout = iterout+1;     
    end     
    iter = iter+1;  
  end  
end
