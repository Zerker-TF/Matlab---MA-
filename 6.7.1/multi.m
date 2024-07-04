%Entrada: dos funciones y vector de abscisas
%Salida: vector con el producto de ambas funciones evaluadas en las
%abscisas

function [resultado]= multi(f1,f2,v)
    resultado = zeros([1,length(v)]);
    for i=1:length(v)
        x = v(i);
        resultado = f1(x).*f2(x);

    end
%b) usar multi.m para calcular con estos datos
%f1= inline('x^3-x-1');
%f2= inline('exp(-x)-x');
%v = [-1 0 1];