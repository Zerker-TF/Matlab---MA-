%{
    Considere la funcion s(x) = sign(x-2)*sqrt(|x-2|) para x E [0,4]
%}

% a) Muestre que en x = 2 hay una raiz simple
x = 0:1/100:4;
f1 = sign(x-2).*sqrt(abs(x-2));
plot(x,f1), grid on, axis on


%b) Con NewtonRapshonDeriv para hallar esta raiz con aprox inicial x0 =2.5
x0 = 2.5;
f = @(x) sign(x-2).*sqrt(abs(x-2));

sol = NewtonRaphson(f,fd,x0,1e-5,150);
%{
    Como no alcanza nunca la convergencia por tolerancia aunque pongamos
    muchas iteraciones, se debe a que la derivada cerca de la raiz crece
    indefinidamente.
c) Converge el esquema iterativo? Explique el fenomeno numerico.

  % f no satisface ninguna condicion de convergencia local ni global asi
   % que no puedo garantizar nada.

}%



