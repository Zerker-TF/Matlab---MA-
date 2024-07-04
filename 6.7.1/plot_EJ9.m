% a) graficar el polinomio p(x)= x.^5 + 3*x.^2 -2 en el intervalo [0,2] con
%discrtizacion de 401 puntos (usar polyval)
% b) en la misma grafica marcar los puntos p evaluados en x= 0, 0.5, 1,
% 1.5, 2 con asteriscos de distintos colores

%defino el polimonio

pol = [1 0 0 3 0 -2];

%intervalos
x = 0:1/401:2;
y = 0:0.5:2;

valor_x = polyval(pol,x);
valor_y = polyval(pol,y);
plot(x,valor_x,'r', y,valor_y,'g'), grid on
legend('valor x', 'valor y'), grid on
hold on
plot(y,valor_y,'*',"MarkerIndices",1:5)