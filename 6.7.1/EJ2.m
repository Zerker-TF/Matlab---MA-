%un unico comando para solucionar cada cosa

a = [1,5,-1];
b = 3:-2:-2;
c = [4 6 -1 0 -6 7 9 1 5];
d = [-1 1 5; 2 3 0; 1 5 -2];

%i) maximo de la fila de la matriz d
max(d);
%ii) Suma de los valores absolutos de todos los elementos de d
sumabs(d);
%iii)Suma de los elementos de posicion par del vector c
sum(c(2:2:end));
%iv) Minimo valor entre los elemenots de posicion 3,4,5 y 6 de c
min(c(3:6));
%v) Calcular la primer columna del producto extreno de a por b
g = a(1)*b(1);
%vi) Eliminar el cuarto elemento del vector c
c(4) = [];
%vii)Generar un vector z con los elementos de posicion impar del vector c
z = c(1:2:end);
%viii) Agregar una cuarta columna a la matriz d cuyos elementos sean -2,3
%y 0
d = horzcat((d),[-2; 3; 0]);
%ix) Matriz diagonal con la diagonal de la matriz d
h = diag(d);
%x) Calcular la norma del vector a-b
norm(a-b);