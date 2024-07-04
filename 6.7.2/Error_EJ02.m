% Script: ZoomPoli
% Plotea (x-1)^6 alrededor de x=1 con escala creciente
% pero evaluado via x^6 - 6x^5 + 15x^4 - 20x^3 + 15x^2 - 6x +1
%
% 05.04.2015 (Sergio Preidikman)
% 29.10.2015 (Luciano Ponzellini Marinelli)

clear, clc, close all
%a)
k=0;
n=100;
delta = .003;
x = linspace(1-delta,1+delta,n)';
y = (x-1).^6;
plot(x,y), grid on
axis([1-delta   1+delta   -max(abs(y))   max(abs(y))])

% Notamos que aquí no hay esa oscilación en los valores, se  debe a que
% aquí solo estamos realizando una resta y una potencia, en el caso
% anterior estabamos realizando muchas sumas/restas y potencias, eso hace
% que se presente un error por truncamiento