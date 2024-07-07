%{

a) Crear un m file que tome como argumento una matriz cuadrada triangular
superior A, el vector lado derecho b y devuelva una solucion x mediante una
susticion regresiva

b) Repita lo anterior para una sustitucion progresiva (para esto la matriz
debe ser triangular inferior)

*ayuda: la funcion DescompLU.m
%}
A = [ 2 0 0; 1 11 0; 1 5 2];
b = [1; 3; 6];
% a) SEL_SReg.m
reg = SEL_SReg(A,b);
fprintf("Solucion mediante sustitucion regresiva:\n");
disp(reg);

% b) SEL_SProg.m
A = [ 2 6 -4; 0 11 8; 0 0 2];
b = [1; 3; 6];
prog = SEL_SProg(A,b);
fprintf('Solucion mediante sustitucion progresiva\n');
disp(prog);
