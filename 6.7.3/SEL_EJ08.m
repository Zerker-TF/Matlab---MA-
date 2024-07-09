%{

%% a) Compara las implementaciones Jacobi.m y Gauss-Seidel.m

La principal diferencia entre Jacobi y Gauss-Seidel es el supraindice k de
iteracion utilizado en cada metodo.
Jacobi utiliza el supraindice k-1 para aproximar la solucion del SEL
Mientras que G-S utiliza el supraindice de la primer iteracion de la
incognita despejada en la siguiente iteracion con lo cual realiza menos
iteraciones para alcanzar el resultado.

%}

%% b) Modifique Jacobi.m y Gauss-Seidel.m para que impriman por pantalla la iteracion k-esima
% la aproximacion y el vector error (iter,x,err)

%{
    Modificaciones:

Al finalizar el while y luego que calcula el error

T = table(iter, x, err, 'VariableNames', {'Iteracion', 'Aproximacion', 'Error'});
   disp(T)



%}