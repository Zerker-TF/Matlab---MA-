% a) graficar la funcion Z = exp(-(X.^2+Y.^2)) con mesh y con surf en el
% intervalo [-1,1]x[-1,1] 
% b) realizar grafica 2D de distintas curvas de nivel

%intervalos
x = -1:1/100:1;
y = -1:1/100:1;

[X, Y] = meshgrid(x,y);
%funcion
Z = exp(-(X.^2+Y.^2));

subplot(3,1,1)
surf(X,Y,Z), colorbar
subplot(3,1,2)
mesh(X, Y, Z), colorbar
%curvas de nivel
subplot(3,1,3)
contour(X,Y,Z,10), grid on