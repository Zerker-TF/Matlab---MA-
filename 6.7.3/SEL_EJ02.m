%{
Considere el sistema lineal 2x2

[17 5; 1.7 0.5] * [x;y] = [22;2.2]

a) Resuelva el sistema a mano con eliminacion gaussiana, cuantas soluciones
tiene?

b) Modifique Gauss.m para que imprima por pantalla la matriz aumentada en
cada paso y resuelva en maquina nuevamente el sistema

c)En la salida de pantalla, resulta nula la ultima fila de la matriz
ampliada? Explique el error numerico cometido

%}

A = [17 5; 1.7 0.5];
b = [22; 2.2];

% a) Tiene infinitas soluciones al ser R1 = 10*R2
% b) 

res = Gauss_m(A,b);
disp(res);

%{
    c) El error se debe al redondeo, por lo cual el 2do renglon no es un
    cero exacto y por lo cual aproxima el resultado
%}