
%a) graficar usando plot    
x = -3:1/100:3;
f1 = x.^3 - x - 1;
f2 = exp(-x) - x;
f3 = cos(2.*x) - sin(x);
f4 = x.*log(abs(x));

plot(x,f1,'b', x,f2,'r', x,f3,'g', x,f4,'c'), grid on,

%b) graficar usando subplot

x = -3:1/100:3;
f1 = x.^3 - x - 1;
f2 = exp(-x) - x;
f3 = cos(2.*x) - sin(x);
f4 = x.*log(abs(x));

subplot(2,2,1), plot(x,f1,'b');
subplot(2,2,2), plot(x,f2,'r');
subplot(2,2,3), plot(x,f3,'g');
subplot(2,2,4), plot(x,f4,'c');
%subplot(m,n,p) arma un recuadro de tamaño mxn y p indica en que posicion.
