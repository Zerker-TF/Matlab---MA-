%{

    Un PVI con dos soluciones.

    y' = (3/2)*y^(1/3); y0 = 0; x E [0,1]

%}

f = @(t,y) 3/2 * y^(1/3);
a = 0;
b = 1;
y0 = 0;
n = 25;
[ta, ya] = Euler(f,a,b,y0,n);
plot(ta,ya), grid on;
% Devuelvo la solucion para el y0 dado por el PVI