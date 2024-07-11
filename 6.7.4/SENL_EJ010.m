%{

    Considere el SENL 
    x^2 - y = 0.2
    y^2 - x = 0.3
a) Graficar las curvas en el plano z = 0
b) Utilizar puntofijo con (p0,q0) = (1.2, 1.2) para aproximar una raiz
c) Repita b pero con (p0,q0) = (-0.2, -0.2)
d) Que fenomeno observa? Se puede asegurar convergencia?

%}


%a) Definimos las funciones escalares g1 y g2
g1 = @(x,y) x.^2 - y - 0.2;
g2 = @(x,y) y.^2 - x - 0.3;

xx1 = -3:0.1:3;
yy1 = -3:0.1:3;
[X1,Y1] = meshgrid(xx1,yy1);
Z11 = g1(X1,Y1);
Z22 = g2(X1,Y1);
contour(X1,Y1,Z11,[0,0],'b'), hold on,
contour(X1,Y1,Z22,[0,0],'r'), grid on,

%b) Sea el punto (po,q0)

pq0 = [1.2  1.2];
pq0p = [-0.2  -0.2];


tol = 1e-5;
itmax = 50;
%G10 es un archivo externo .m

[Pk,iter] = PuntoFijo('G10',pq0,tol,itmax);
[Pk,iter] = PuntoFijo('G10a',pq0p,tol,itmax);
[Pk,iter] = PuntoFijo('G10b',pq0p,tol,itmax);

%c)  
pq0c = [-0.2  -0.2];

[Pk,iter] = PuntoFijo('G10b',pq0,tol,itmax);

 
[P,iter,err] = NewtonRawsonSISTEMA('G10NR','JG10',pq0,tol,tol,itmax) 

%d) No se cumplen las condiciones del teorema para unos de los puntos
%fijos, ver abajo teorema 6.5.3. Ver gráfica del campo vectorial (ver comportamiento en uno de sus
%puntos fijos teniendo en cuenta la iteración de punto fijo).