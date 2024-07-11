%{
    Usando el metodo de Euler, resolver el siguiente PVI para los tamaños
    de paso h.
    h = 1, 0.5, 0.25, 0.125, 0.0625
    pvi
    t' = x^2 -y , y(0)=1 x E [0,4]
%}

%% Grafique la poligonal de los puntos (t,y) y en la misma figura la sol exacta del PVI fe = x^2 -2x+2-exp(-x) para x E [0, 4]
f = @(x,y) x.^2 - y;
xe = 0:1/100:4;
fe = (xe).^2 - 2*(xe) + 2 - exp(-(xe));
SolEx = @(x) x^2 - 2*x + 2 - exp(-x);
err = zeros([1, 5]);
a = 0;
b = 4;
y0 = 1;
n = [4 8 16 32 64];
for j=1:5
    [x,y] = Euler(f,a,b,y0,n(j));
    p = n(j);
    subplot(2,3,j), plot(xe,fe,'m'), grid on, hold on,title(["Euler con",num2str(p), " pasos"]),
    subplot(2,3,j), plot(x,y,'r');
    
    % Calcule el error global final siendo yn el ultimo valor de la aproximacion
    % de Euler
    err(j) = abs(SolEx(4) - y(end));
end

T = table((4./n)', err', 'VariableNames',["Paso", "Error"]);
disp(T)

%% Segun lo observado, en la medida que se recude el tamaño del paso, en cuanto se reduce este error?
% A medida que se aumentan los pasos, el error se reduce en la magnitud del
% valor del paso, es decir, el error global se reduce de forma lineal.
