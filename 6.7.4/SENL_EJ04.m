%{
    Resuelva las siguientes ecuaciones no lineales a traves de un estudio
    grafico y numerico.
%}

%% a) f(x) = 3x^3+1=0

x = -1:1/100:1.5;
f1 = 3*x.^3 + 1;
subplot (3,1,1), plot(x,f1,'r'), title("f(x) = 3x^3+1"),axis on, grid on
%La grafica muestra una raiz en x = -0.7

%NR
f = @(x) 3*x.^3 + 1;
fd = @(x) 9*x.^2;
x0 = -0.5;
tol = 1e-10;
fprintf("f(x) = 3x^3+1:\n");
NewtonRaphson(f,fd,x0,tol,30);

%% b) g(x) = sin(x+2) = 2 + x

x = -2.5:1/100:-1;
g = sin(x + 2) - 2 - x;
subplot(3,1,2), plot(x,g,'g'), title ("g(x) = sen(x + 2) - 2 - x"), axis on, grid on
%raiz en x= -2 

%NR
g = @(x) sin(x + 2) - 2 - x;
gd = @(x) cos(x+2)-1;
x0 = -1.7;
tol = 1e-10;
NewtonRaphson(g,gd,x0,tol,35)


%% c) x^2 = tan(x)

x = -pi/2:1/100:pi/2;
h =  x.^2 - tan(x);
subplot(3,1,3), plot(x,h), title("h(x) = x^2 - tan(x)"),axis on, grid on
% Infinitas raices




