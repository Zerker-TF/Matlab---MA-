%{
Considere el SEL de matriz ampliada A:b

A = [3 -1 1; 3 6 2; 3 3 7];
b = [1; 0; 4];

%}

A = [3 -1 1; 3 6 2; 3 3 7];
b = [1; 0; 4];

%% b) Resolver utilizando jacobi.m tomando como aprox incial x^0-0 y tol = 1x10^-3

x0 = [0;0;0];
jaco = Jacobi(A, b, x0, 1e-3,10);
fprintf("Metodo Jacobi:\n")
disp(jaco);

%% c) Puede asegurar la convergencia del metodo Jacobi en este caso?
%{
Se puede asegurar la convergencia del metodo de Jacobi siempre que A sea diagonalmente dominante,
 es decir, que el elemento en la posicion (i,i) sea en modulo, mayor a la suma de los elementos 
j!=i (en modulo tambien). En este caso podemos ver que se verifica, por lo que es
diagonalmente dominante y por lo tanto se puede garantizar jacobi.
%}
%% d) Repita utilizando Gauss-Seidel.m

Gseidel = GaussSeidel(A, b, x0, 1e-3, 10);
fprintf("Metodo Gauss-Seidel:\n");
disp(Gseidel);

