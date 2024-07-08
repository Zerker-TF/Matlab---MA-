%{
El SEL Ax=b admite ser resuelto con factorizacion triangular, siendo que la
matriz de coeficientes A admite ser factorizada con matrices L,U y P.

donde,

L = [1 0 0 ; 0 1 0; 1 -2 1];
U = [2 0 1; 0 3 -1; 0 0 -2];
P = [0 1 0; 1 0 0; 0 0 1];

Recontruya A y determine la solucion del SEL siendo b = [1; 2; 3];
a) por el metodo de Gauss con pivoteo parcial
b) por factorizacion LU (A*x = b se resuelve =>
% L*y=b U*x=y)

%}

L = [1 0 0 ; 0 1 0; 1 -2 1];
U = [2 0 1; 0 3 -1; 0 0 -2];
P = [0 1 0; 1 0 0; 0 0 1];
b = [1; 2; 3];

%Reconstruimos A

A = L * U;
fprintf('Solucion mediante pivoteo parcial (Gauss)\n');
x_piv = Gauss(A,b);
disp(x_piv);

% b) recorda que con matrices se usa \ no se usa /
y = L\b;
x = U\y;

fprintf('Solucion mediante factorizacion LU\n');
disp(x);
