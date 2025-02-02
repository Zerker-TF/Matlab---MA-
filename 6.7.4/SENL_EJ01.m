%{
Considere la funcion f(x) = e^x -3x para x E [0,4];

%}

%% a) Determine graficamente la cantidad de soluciones de f(x)=0

%Intervalo e incremento

x = 0:1/100:4;
f = exp(x) -3.*x;
plot(x,f,'r'), grid on
% Se pueden ver dos raices en la grafica
% Una en x=0,5 y en x=1,5

%% b) Halle la o las raices aproximadas utilizando NewtonRapshon.m
tol = 1e-3;
f1 = @(x) exp(x) - 3.*x;
f1d = @(x) exp(x) - 3; % derivada de f1
x0 = 0;                % estimacion inicial
x2 = 1.5;

sol = [NewtonRaphson(f1,f1d,x0,tol,15) NewtonRaphson(f1,f1d,x2,tol,15)];

%% c) Puede garantizar la convergencia?
%{
    La funcion f satisface las condiciones del teorema para convergencia
    local, pero no para convergencia global. El metodo converge
    inicializando en los alrededores de alguna posible raiz pero no podemos
    asegurar lo mismo para valores de inicio del metodo arbitrarios.s

%}