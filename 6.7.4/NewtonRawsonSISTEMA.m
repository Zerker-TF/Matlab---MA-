function [P,iter,err]=NewtonRawsonSISTEMA(F,JF,P,delta,epsilon,maxl) 
%Input - F is the system saved as the M-file F.m 
% - JF is the Jacobian of F saved as the M-file JF.M 
% - P is the initial approximation to the solution 
%- delta is the tolerance for P 
%'/. - epsilon is the tolerance for F(P) 
%'%I, - maxl is the maximum number of iterations 
%.Output - P is the approximation to the solution 
% - iter is the number of iterations required 
% - err is the error estimate for P 

Y= feval(F,P); 

for k = 1:maxl 
    J = feval(JF,P);
    Q = P - (J\Y')'; 
    Z = feval(F,Q); 
    err = norm(Q-P); 
    relerr = err/(norm(Q)+eps); 
P = Q; 
Y = Z;
iter = k;

%if err < delta || relerr < delta || abs(Y) < epsilon
 %       break 
%end

end


end

