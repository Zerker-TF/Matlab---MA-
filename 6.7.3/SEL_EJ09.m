%{
 Compare la velocidad de convergencia en la resolucion de los siguientes SEL's
   utilizando jacobi.m y Gauss-Seidel.m
%}

tol = 1e-3;

%% a)

A1 = [-1 3; 6 -2];
b1 = [1; 2];
x0 = zeros(length(b1),1);
fprintf("SEL A1:\n");
fprintf("Jacobi:\n");
disp(Jacobi(A1,b1,x0,tol,15));
fprintf("Gauss-Seidel: \n");
disp(GaussSeidel(A1,b1,x0,tol,15));

%% b)

A2 = [1 0 1; -1 1 0; 1 2 -3];
b2 = [2;0;0];
x0 = zeros(length(b2),1);
fprintf("SEL A2:\n");
fprintf("Jacobi:\n");
disp(Jacobi(A2,b2,x0,tol,15));
fprintf("Gauss-Seidel: \n");
disp(GaussSeidel(A2,b2,x0,tol,15));
%% c)

A3 = [5 -1 1; 2 8 -1; -1 1 4];
b3 = [10;11;3];
x0 = zeros(length(b3),1);
fprintf("SEL A3:\n");
fprintf("Jacobi:\n");
disp(Jacobi(A3,b3,x0,tol,15));
fprintf("Gauss-Seidel: \n");
disp(GaussSeidel(A3,b3,x0,tol,15));