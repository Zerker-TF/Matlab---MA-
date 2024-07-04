% a) definir f(x)=x^2+2*sin(x)-1 con inline
% b) definir g(x)=(1/x^2)+2*cos(x) como anonima g=@x
% c) graficar ambas con distinto color

%defino el intervalo
x = 0.1:1/100:3;

f = @(x) x.^2 + 2*sin(x) - 1;
g = @(x) 1/x.^2 + 2*cos(x);

%el comando hold hace que no se me borre el primer plot para mostrar solo
%el segundo
fplot(f,'r'), grid on
legend('f','g'), grid on;
hold on
fplot(g,'b'), grid on
hold off

