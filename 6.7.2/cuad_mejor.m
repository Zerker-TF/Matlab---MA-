% Calcular las raices de una ecu cuadratica
% In: coef vector fila
% Out: vector raices
function raices = cuad_mejor(coef)
    a = coef(1);
    b = coef(2);
    c = coef(3);
    raices(1) = (-2*c)/(b+sqrt(b^2-4*a*c));
    raices(2) = (-2*c)/(b-sqrt(b^2-4*a*c));
    fprintf("Raiz 1: %12.5f \nRaiz 2: %12.5f \n", [raices(1), raices(2)])
end