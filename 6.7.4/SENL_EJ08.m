%{
    Dado el sistema no lineal

    x = (8x - 4x^2 + y^2 + 1)/8
    y = (2x- x^2 + 4y - y^2 + 3)/4

%}

%% a)
%{
    Usando la aproximacion lineal (p0,q0) = (1.1, 2.0), calcule dos
    iteraciones a mano... la puta madre... mediante el esquema de punto
    fijo.


x1 = f(1.1, 2.0) = (8*1.1 - 4*1.1^2+2.0^2+1) /8         = 1.12
y1 = f(1.1, 2.0) = (2*1.1 - 1.1^2 + 4*2.0 - 2.0^2 +3)/4 = 2.2475

x2 = f(1.12, 2.2475) = (8*1.1 - 4*1.1^2+2.0^2+1) /8         = 1.24936328125
y2 = f(1.12, 2.2475) = (2*1.1 - 1.1^2 + 4*2.0 - 2.0^2 +3)/4 = 1.9807734375

Primera Iteración: (x1,y1) = (1.12, 2.2475)
Segunda Iteración: (x2,y2) = (1.24936328125, 1.9807734375)
%}

%% b) Realice lo mismo pero con PuntoFijo.m
%b) Definimos las generatrices y el punto inicial:

p0 = [1.2 2];
G11 = @(x,y) -4*x.^2 + y.^2 + 1;
G22 = @(x,y) 2*x - x.^2 - y.^2 + 3;

xx = -5:0.1:5;
yy = -5:0.1:5;
[X,Y] = meshgrid(xx,yy);
Z1 = G11(X,Y);
Z2 = G22(X,Y);
contour(X,Y,Z1,[0,0],'b'), hold on,
contour(X,Y,Z2,[0,0],'r'), grid on,



%c) Recordemos que [Pk,iter] = PuntoFijo(Fnom,P0,tol,itmax)
% donde
%   - Fnom: (string) función m-file que definen las  generarices (o
%   funciones que definen a las generatrices)
%   - P0: estimación inicial como vector fila (x_0,y_0)
%   - tol: tolerancia
%   - itmax: número iteraciones máximas

tol8 = 1e-5;
itmax8 = 50;
%G11 es un archivo externo .m

[Pk,iter] = PuntoFijo('G11',p0,tol8,itmax8);