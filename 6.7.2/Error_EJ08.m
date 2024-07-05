%{
Usando la funcion SerieSeno.m, grafique el error total cometido para x en [0,pi/2]
usando 6 y 15 terminos no nulos del polinomio de Taylor del sen(x) respectivamente.
 Considereque la funcion intrinseca sin de MATLAB devuelve el valor exacto del seno.
 Que controla el error total en cada caso?
%}

%SerieSeno debe recibir el x, tolerancia y cant de terminos
% a)

x = 0:1/100:2*pi;
n = 6;
tol = 5*exp(-9);
err6 = zeros(size(x));
for i=1:length(x)
    sum = SerieSeno(x(i),tol,n);
    err6(i) = abs(sum - sin(x(i)));
end
n = 15;
err15 = zeros(size(x));
for i=1:length(x)
    sum = SerieSeno(x(i),tol,n);
    err15(i) = abs(sum - sin(x(i)));
end

subplot(2,2,1), plot(x,err6,'r'), xlabel('x'), ylabel("Error Total"), title('Error total con 6 terminos (Seno)')
subplot(2,2,2), plot(x,err15,'b'), xlabel('x'), ylabel("Error Total"), title('Error total con 15 terminos (Seno)')

% El error total en cada caso lo determina la cantidad de términos que se
% usan. Para el caso de usar 15 términos no nulos se comete menos error total 
% que en el caso comete menos error total que en el caso de usar 6 términos 
% no nulos
% b) con exp

x = 0:1/100:2*pi;
n = 6;
err6exp = zeros(size(x));
err15exp = zeros(size(x));
for j = 1: length(x)
    sum = SerieSeno(x(j),tol,n);
    err6exp(j) = abs(sum-sin(x(i)));
    
end
for j = 1: length(x)
    sum = SerieSeno(x(j),tol,n);
    err15exp(j) = abs(sum-sin(x(i)));
    
end

subplot(2,2,3), plot(x,err6exp,'r'), xlabel('x'), ylabel("Error Total"), title('Error total con 6 terminos (Exp)')
subplot(2,2,4), plot(x,err15exp,'b'), xlabel('x'), ylabel("Error Total"), title('Error total con 15 terminos (Exp)')