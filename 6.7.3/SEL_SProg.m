%{
Ejercicio: SEL_Ej03

 Entrada: A: matriz diagonal inferior de orden nxn
          b: vector columna nx1
 Salida:  x: vector renglon nx1
%}
function x = SEL_SProg(A, b)
n = length(b);
x = zeros([n 1]);
x(1) = b(1)/A(1,1);
for k = 2 : n
    sum = 0;
    for j = 1 : (k-1)
        sum = sum + A(k,j) * x(j);
    end
    x(k) = (b(k) - sum)/A(k,k);
end
x = x';
end