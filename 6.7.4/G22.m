function Y = G22(X)
%Funcion generatriz del SENL_EJ09  para punto fijo
% Entrada X = [X(1) X(2)] vector fila de dos componentes
% Salida Y = [Y(1) Y(2)] vector fila de dos componentes

Y(1) = (X(2) - X(1).^3 + 3*X(1).^2 + 3*X(1)) /7;
Y(2) = ( X(2).^2 + 2*X(2) - X(1) - 2)/2;

end