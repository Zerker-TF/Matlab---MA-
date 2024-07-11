%{
    Utilizando CampoDirec.m hallar el campo de direcciones de las EDO's en
    el rectangulo R = {(t,y) : 0<= t <=4, 0<=y<=4}.
    En las mismas figuras, grafique ademas las respectivas soluciones para
    las constantes de integracion indicadas.
    
%}

%% a) y' = (t-y)/2
%Sol Exacta: phi(t) = c*e^-t/2 + t - 2 para c = -3,-2,-1,0.
z = 0:1/100:4;
f = @(t,y) (t-y)/2;
sol1 = -3*exp(-z/2)+z-2;
sol2 = -2*exp(-z/2)+z-2;
sol3 = -1*exp(-z/2)+z-2;
sol4 = 0*exp(-z/2)+z-2;
CampoDirec(0,4,0,4,f), hold on;
plot(z,sol1,'r'),grid on;
plot(z,sol2,'m'),grid on;
plot(z,sol3,'c'),grid on;
plot(z,sol4,'k'),grid on;
legend('Campo Direcciones','c = -3','c = -2','c = -1','c = 0'),grid on;

%% b) y' = 1-e^-t
%Sol Exacta: phi(t) = e^-t + t + c para c = -1,0,1,2.
z = 0:1/100:4;
f = @(t,y) 1 - exp(-t);
sol1 = exp(-z) + z -1;
sol2 = exp(-z) + z;
sol3 = exp(-z) + z + 1;
sol4 = exp(-z) + z + 2;
CampoDirec(0,4,0,4,f), hold on;
plot(z,sol1,'r'),grid on;
plot(z,sol2,'m'),grid on;
plot(z,sol3,'c'),grid on;
plot(z,sol4,'k'),grid on;
legend('Campo Direcciones','c = -1','c = 0','c = 1','c = 2'),grid on;

