
%% A)Para cada matriz generar un vector lado derecho bi en cada caso usando el
%comando ones y resuelva SEL Aix=bi mediante algun metodo directo

A1 = [4 1; 12 2];
A2 = [0 1 1; -1 2 -4; 2 -5 1];
A3 = [eps 1; 0 1];
A4 = hilb(5);
b1 = ones(2,1);
b2 = ones(3,1);
b3 = ones(2,1);
b4 = ones(5,1);

fprintf("Soluciones exactas: \n");
x1E = A1\b1;
x2E = A2\b2;
x3E = A3\b3;
x4E = A4\b4;

disp(x1E);
disp(x2E);
disp(x3E);
disp(x4E);


fprintf("Soluciones con Gauss: \n");
x1G = Gauss(A1,b1);
x2G = Gauss(A2,b2);
x3G = Gauss(A3,b3);
x4G = Gauss(A4,b4);

disp(x1G);
disp(x2G);
disp(x3G);
disp(x4G);

%% B)Calcule el vector residual r=b-Ax en los SEL anteriores y la norma del
%   mismo ||r||p para p = 1,2, inf.

fprintf("Vector residual\n");
fprintf("Sistema A1*x1 = b1\n");
r1 = b1 - A1*x1E;
n1_1 = normap(r1,1); 
n1_2 = normap(r1,2);
n1_inf = normap(r1,inf);
fprintf("P = 1: %s\nP = 2: %s\nP = inf: %s\n",num2str(n1_1),num2str(n1_2),num2str(n1_inf));

fprintf("Sistema A2*x2 = b2\n");
r2 = b2 - A2*x2E;
n2_1 = normap(r2,1);
n2_2 = normap(r2,2);
n2_inf = normap(r2,inf);
fprintf("P = 1: %s\nP = 2: %s\nP = inf: %s\n",num2str(n2_1),num2str(n2_2),num2str(n2_inf));

fprintf("Sistema A3*x3 = b3\n");
r3 = b3 - A3*x3E;
n3_1 = normap(r3,1);
n3_2 = normap(r3,2);
n3_inf = normap(r2,inf);
fprintf("P = 1: %s\nP = 2: %s\nP = inf: %s\n",num2str(n3_1),num2str(n3_2),num2str(n3_inf));

fprintf("Sistema A4*x4 = b4\n");
r4 = b4 - A4*x4E;
n4_1 = normap(r4,1);
n4_2 = normap(r4,2);
n4_inf = normap(r4,inf);
fprintf("P = 1: %s\nP = 2: %s\nP = inf: %s\n",num2str(n4_1),num2str(n4_2),num2str(n4_inf));







