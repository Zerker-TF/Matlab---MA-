%{
   Considere el polinomio cubico p(x) = 816x^3 - 3835x^2 + 6000x - 3125
%}

pol = [816 -3835 6000 -3125];

%% a) Plotee p(x) en el intervalo [1,2], cuantas raices observa?
xa = 1:1/100:2;
%plot(xa,polyval(pol,xa)), grid on, axis on

%% b) Plotee p(x) en el intervalo [1.4, 1.7], cuantas raices observa?
xb = 1.4:1/100:1.7;

subplot(2,1,1), plot(xa,polyval(pol,xa)), grid on, xlabel("intervalo [1,2]"), axis on
subplot(2,1,2), plot(xb,polyval(pol,xb)), grid on, xlabel("Intervalo [1.4, 1.7]"),axis on
%% c) Aproxime dichas raices con NewtonRapshon y compare errores absolutos (usar roots)

f = @(x) 816*x^3 - 3835*x^2 + 6000*x - 3125;
fd = @(x) 2448*x^2-7670*x+6000;
tol = 1e-3;

sol = [NewtonRaphson(f,fd,1.45,tol,15) NewtonRaphson(f,fd,1.55,tol,15)];

err_abs = roots(pol) - sol;
disp(err_abs)