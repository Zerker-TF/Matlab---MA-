% Calcular las raices de una ecu cuadratica
% In: coef vector fila
% Out: vector raices y decir que tipo de raiz
function raices = cuad_B(coef)
    a = coef(1);
    b = coef(2);
    c = coef(3);
    %discriminante
    d = b^2-4*a*c;
if d > 0
    x1 = (-b+sqrt(d))/(2*a);
    x2 = (-b-sqrt(d))/(2*a);
    raices = [x1 x2];
    fprintf("Soluciones reales y distintas, son: \n%12.5f \n%12.5f \n", [x1, x2])
elseif d == 0
        x1 = (-b+sqrt(d))/(2*a);
        x2 = x1;
        raices = [x1 x2];
        fprintf("Soluciones reales e iguales, son: \n%12.5f \n%12.5f \n", x1, x2)
else
    x1 = (-b+sqrt(d))/(2*a);
    x2 = (-b-sqrt(d))/(2*a);
    raices = [x1 x2];
    fprintf("Soluciones complejas, son: \n%s \n%s \n", [num2str(x1),num2str(x2)])
end