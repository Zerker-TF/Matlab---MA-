function Y = G11(X)
% Función generatriz 1 del SENL para Punto Fijo 
% ENTRADA: X = [ X(1) X(2) ] vector fila de dos componentes
% SALIDA: Y = [ Y(1) Y(2) ] vector fila de dos componentes


Y(1) = (8*X(1) - 4*X(1).^2 + X(2).^2 + 1)/8;
Y(2) = (2*X(1) - X(1).^2 + 4*X(2) - X(2).^2 + 3)/4;

end 