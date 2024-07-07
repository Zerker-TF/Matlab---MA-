%{

Considere el sistema de ec lineales Ax = b donde

A = [ 2 12 -2; 1 11 9; 1 5 0] y b = [1; 17; 18]

a) Resuelva a mano con metodo de Gauss
b) Compruebe resultados usando Gauss.m

%}

A = [ 2 12 -2; 1 11 9; 1 5 0];
b = [1; 17; 18];

res = Gauss(A,b);
disp(res);