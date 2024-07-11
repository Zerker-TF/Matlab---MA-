%{
    Dado el siguiente SENL

    x = g1(x,y) = (y - x^3 + 3x^2 + 3x)/7
    y = g2(x,y) = (y^2 + 2y - x -2)/2
    
%}

%% a) Intente hallar las soluciones con PuntoFijo.m
%Grafico para ver como interactuan las graficas
x = -5:1/100:5;
y = x;
[X, Y] = meshgrid(x,y);
G11 = @(x,y) (y-x.^3 + 3*x.^2 + 3*x)/7;
G22 = @(x,y) (y.^2 + 2*y - x - 2)/2;
Z1 = G11(X,Y);
Z2 = G22(X,Y);
contour(X,Y,Z1,[0 0], 'b'), hold on,
contour(X,Y,Z2,[0 0],'g'), grid on, hold on,
%Puntos cercanos a los cortes entre curvas son:
% (-1 -2), (0,1), (1 -3), (3,-4) (4,2)
% G22 es un archivo externo .m
p0 = [4 2];
tol = 1e-5;
itmax = 50;
[Pk,iter] = PuntoFijo('G22',p0,tol,itmax);

%{
Recordemos que [Pk,iter] = PuntoFijo(Fnom,P0,tol,itmax) donde
 - Fnom: (string) función m-file que definen las  generarices (o
   funciones que definen a las generatrices)
 - P0: estimación inicial como vector fila (x_0,y_0)
 - tol: tolerancia
 - itmax: número iteraciones máximas
%}