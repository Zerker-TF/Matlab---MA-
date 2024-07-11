function Y = G10NR(X)
% Función generatriz 1 del SENL para Punto Fijo 
% ENTRADA: X = [ X(1) X(2) ] vector fila de dos componentes
% SALIDA: Y = [ Y(1) Y(2) ] vector fila de dos componentes


Y(1) = X(2).^2 - X(1) - 0.3;
Y(2) = X(1).^2 - X(2) - 0.2;

end 