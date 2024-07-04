%{
Considere la ecuacion x^2 - 1000000.000001x +1 = 0

a)Utilizando la funcion cuad.m del ejercicio 4a de la sec. 6.7.1 para
hallar sus raices.

b)Usando las formulas mejoradas del ejercicio 2, implemente la funcion
cuad_mejor.m para calcular raices.

c)Compare los resultados de a y b

%}
% a)
fprintf("Utilizando cuad.m\n");
pol_1 = [1 -10000000.000001 1];
raizA = Cuad_A(pol_1);

% b)
fprintf("Utilizando cuad_mejor.m\n");
raizB = cuad_mejor(pol_1);

%{
La diferencia entre Cuad_A y Cuad_mejor es que se en la segunda se evita
la resta de b.
Cuando b es muy grande al elevarlo al cuadrado se hace mas grande y si le
restamos un numero pequeño (4ac) en comparacion, el resultado de la raiz
del discriminate es practicamente el valor absoluto de b, entonces en el caso en el que le
restamos b al discriminante o viceversa se produce un corrimiento de mantisa ya que
se restan dos numeros muy parecidos y se introduce un error de redondeo.
%}