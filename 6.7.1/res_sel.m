%Cargar datos desde archivos y resolver Ax=b y guardar el resultado en otro
%archivo usando barra invertida \
A = load("matriz.dat");
B = load("rhs.dat");

x= A \ B;

save sol.dat x -ascii