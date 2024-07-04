% In: dos vectores renglon o columna
% Out: vector suma en forma de columna

function [v] =  Suma_B(x,y)
    if size(x) == size(y)
        v = x + y;
    else 
        v = x + y';
    end
    if size(x) > 1
     v = v';
    end
