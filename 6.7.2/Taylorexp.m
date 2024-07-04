%{
Entrada: 
    x (punto a aproximar)
    n (cantidad de terminos de la sumatoria)
Salida:
    Valor aproximado de exp(x) con n terminos

%}
 
  
function y = Taylorexp(x,n)
    nterminos = n;
    f = exp(x)*ones(nterminos,1);
    a = 1;
    term = 1;
    err = zeros([1,n]);
    
    %{
        Creo vectores para ir guardando los valores en una tabla para poder
        presentar los datos de forma mas ordenada. Los cuales debo calcular
        la transpuesta para pasar de vector renglon a columna para que la
        tabla se imprima correctamente.
    %}
    Termino = zeros([1,n]);
    Valor = zeros([1,n]);
    Error = zeros([1,n]);

   % fprintf("Termino \t Valor \t\t Error\n");
    for k=1:n
        term = x.*term/k;
        a = a+ term;
        err(k) = abs(f(k)-a);
        
        Termino(1,k) = k;
        Valor(1,k) = a;
        Error(1,k) = err(k);
       %%fprintf("%d \t\t\t %.4f \t %.4f \n", k,a,err(k));       
    end
  
    T = table(Termino.', Valor.', Error.','VariableNames',{'Termino','Valor','Error'});
    disp(T);
end
%{
\t tab horizontal
\b backspace
\n salto de linea
\v tab vertical
%}