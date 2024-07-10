%{
    Se sabe que la funcion f(x) = x^3 -3x +2 tiene una raiz doble en r = 1
%}

%% a)
%{
    Modifique NewtonRapshon para que imprima otra columna con el cociente 
   |en +1| / |en| siendo en = xn - r el error absoluto cometido en el paso n-esimo.
    
    Aproxime esta raiz tomando x0 =1,2 y tol = 1e-5. A que valor tienen
    estos cocientes?
    
    Modifico y creo el archivo NewtonRapshonM.m
%}

f = @(x) x.^3 - 3.*x + 2;
fd = @(x) 3*(x.^2) - 3;
x0 = 1.2;
tol = 1e-5;
itermax = 50;
alpha = 1;
root = 1;
NewtonRaphsonM(f,fd,x0,tol,itermax,alpha,root)

%% b)
%{
    Se sabe que el esquema de N-R tiene orden de convergencia lineal para
    raices multiples, pero puede recuperar el orden de convergencia
    cuadratico modificando el esquema tal que:

    xn+1 = xn - alpha*(f(xn)/f'(xn)) con n>=0
    
    Donde alpha es la multiplicidad de la raiz. Modifique el esquema
    iterativo en su caso.

%}
f = @(x) x.^3 - 3.*x + 2;
x2 = -2:1/100:2;
y2 = f(x2);
fd = @(x) 3*(x.^2) - 3;
x0 = 1.2;
tol = 1e-5;
maxiter = 50;
alpha = 2;
root = 1;
NewtonRaphsonM(f,fd,x0,tol,maxiter,alpha,root)
%Se observa que con la modificación propuesta la velocidad de convergencia
%aumenta considerablemente. La fórmula mejorada en tres iteraciones llega
%con exactitud a la raíz de f.
