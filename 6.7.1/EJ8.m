%intervalo
x = 0.1:1/100:3;
%Defino funciones
f = inline('x.^2+2.*sin(x)-1');
g = @(x) x^(-2)+2*cos(x);
%Inicializo en cero los vectores para darles un tamaño y evitar error de
%tamaño
vectf = zeros([length(x),1]);
vectg = zeros([length(x),1]);
j=1;
for i=x
    vectf(j) = f(i);
    vectg(j) = g(i);
    j = j + 1;
end
disp(vectf)
plot(x, f, 'r', x, g, 'g'), grid on