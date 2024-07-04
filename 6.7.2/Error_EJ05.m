%{
Modificar el script ExpTaylor.m para aproximar la funcion exponencial e^x
mediante su polinomio de taylor centrado en a = 0 recibiendo como
parametro de entrada x y n (numero de terminos de la suma)

e^x = 1 + x/1! + x^2/2! + ... + x^n/n!

%}

%% Caso X=1
fprintf(" Caso X = 1 n = 10\n")
Taylorexp(1, 10);
fprintf(" Caso X = 1 n = 15\n")
Taylorexp(1, 15);
fprintf(" Caso X = 1 n = 20\n")
Taylorexp(1, 20);

%% Caso X=10
fprintf(" Caso X = 10 n = 10\n")
Taylorexp(10, 10);
fprintf(" Caso X = 10 n = 15\n")
Taylorexp(10, 15);
fprintf(" Caso X = 10 n = 20\n")
Taylorexp(10, 20);

%% Caso X=100
fprintf(" Caso X = 100 n = 10\n")
Taylorexp(100, 10);
fprintf(" Caso X = 100 n = 15\n")
Taylorexp(100, 15);

fprintf(" Caso X = 100 n = 20\n")
Taylorexp(100, 20);
%%

% A mayor cantidad de terminos, la aproximación sera mejor, disminuyendo el
% error y dando un valor mas preciso.