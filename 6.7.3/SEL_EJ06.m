%{
Para las matrices de SEL_EJ05

a) El numero de condicion k(A) = ||A||p * ||A^(-1)||p utilizando el comando
inv(A) para calcular la inversa y el comando norm(A,p) para la norma
matricial con p=1,2,inf.

b) Compare los resultados anteriores usando el comando cond(A). Estan bien
condicionadas las matrices?

c) Observa alguna relacion entre el vector residual r y el numero de
condicion k(A) de las matrices obtenido?

%}

A1 = [4 1; 12 2];
A2 = [0 1 1; -1 2 -4; 2 -5 1];
A3 = [eps 1; 0 1];
A4 = hilb(5);

b1 = ones(2,1);
b2 = ones(3,1);
b3 = ones(2,1);
b4 = ones(5,1);

%% a) Calcular el numero de condicion K(A) = ||A||p * ||A^-1||p

% A1
k1_1 = norm(A1,1) * norm(inv(A1),1);
k1_2 = norm(A1,2) * norm(inv(A1),2);
K1_inf = norm(A1,inf) * norm(inv(A1),inf);
fprintf("La matriz A1 tiene los siguientes K(A):\nK1 = %s\nK2 = %s\nKinf = %s\n\n",string(k1_1),string(k1_2),string(K1_inf));

% A2
k2_1 = norm(A2,1) * norm(inv(A2),1);
k2_2 = norm(A2,2) * norm(inv(A2),2);
K2_inf = norm(A2,inf) * norm(inv(A2),inf);
fprintf("La matriz A2 tiene los siguientes K(A):\nK1 = %s\nK2 = %s\nKinf = %s\n\n",string(k2_1),string(k2_2),string(K2_inf));

% A3
k3_1 = norm(A3,1) * norm(inv(A3),1);
k3_2 = norm(A3,2) * norm(inv(A3),2);
K3_inf = norm(A3,inf) * norm(inv(A3),inf);
fprintf("La matriz A1 tiene los siguientes K(A):\nK1 = %s\nK2 = %s\nKinf = %s\n\n",string(k3_1),string(k3_2),string(K3_inf));

% A4
k4_1 = norm(A4,1) * norm(inv(A4),1);
k4_2 = norm(A4,2) * norm(inv(A4),2);
K4_inf = norm(A4,inf) * norm(inv(A4),inf);
fprintf("La matriz A1 tiene los siguientes K(A):\nK1 = %s\nK2 = %s\nKinf = %s\n\n",string(k4_1),string(k4_2),string(K4_inf));

%% b) Comprarar resultados usando cond(A)

k1 = cond(A1);
k2 = cond(A2);
k3 = cond(A3);
k4 = cond(A4);
fprintf("A1 k = %s\nA2 k = %s\nA3 k = %s\nA4 k = %s\n",string(k1),string(k2),string(k3),string(k4));

%% c) 
% En matlab diremos que una matriz A esta mal condicionada si k(A) = 1/eps,
% en nuestro caso A1, A2 y A4 estan bien condicionadas, en cambio A3 esta
% mal condicionada
