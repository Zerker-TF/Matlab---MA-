%{
Calcular de forma exacta sen(pi/2 + 2*pi*10.^j)
con j entero positivo.
La misma expresion, obtener los valores para j=1,10,20,50,100,1000
Y intente dar una explicacion a los resultados.
%}

%{
a) de forma manual:
Por identidades trigonometricas, 
sen(a+b) = sen(a)*cos(b)+cos(a)*sen(b)
sen(pi/2)*cos(2*pi*10^j)+cos(pi/2)*sen(2*pi*10^j) = cos(2*pi*10^j)
%}

% b) Defino la funcion f(j) dada por sen(pi/2 + 2*pi*10^j) = cos(2*pi*10^j)

f = @(j) cos(2*pi*10^j);
valores = [1, 10, 20, 50, 100, 1000];
for i=1 : length(valores)
    fprintf("j = %d => f(j) = %f \n", valores(i),f(valores(i)));
end

%{
j = 1 => f(j) = 1.000000 
j = 10 => f(j) = 1.000000 
j = 20 => f(j) = 0.689416 
j = 50 => f(j) = -0.987332 
j = 100 => f(j) = 0.959415 
j = 1000 => f(j) = NaN 

La discrepancia de valores se debe a que en pc el valor de pi se guarda con
truncamiento y a medida que se hace mas grande el producto se pierden
cifras al correrse la mantisa.
%}
