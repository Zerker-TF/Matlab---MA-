%{
Usando la maquina virtual que aparece en la tabla de las transparencias con
mantisa binaria de 4 bits, 8 posibles exponentes y redondeo simetrico (si
x1 y x2 son los numeros de la tabla mas proximos al numero x que quiero
representar, entonces x redondea a x1 solo si x < (x1+x2)/2, caso contrario
redondea a x2. Evalue las expresiones:
a) 1.1
b) eps
c) 20
d) 8 + 5*eps
e) (8+ 3*eps) + 3*eps

Ejemplo: (5+3*eps)-4*eps = (5+0.375)-0.5 = 5,375-0.5 => redondeo 5.5 - 0.5 = 5.
Cuanto vale el epsilon maquina en nuestro caso?

a) 1.1 -> Hago redondeo simétrico con 1 y 1.125, vemos que (1+1.125)/2 <
 1.1 por lo tanto redondeo 1.1 = 1.125 = 0.1001*2^1

b) Para nuestro caso el epsilon maquina vale eps = 0.125 = 0.1000*2^-2

c) 20 -> Redondeo al máximo numero representable por mi máquina (15) 
 por lo tanto 20 = 0.1111*2^4

d) 8 + 5*eps = 8 + 0.625 = 8.625 = redondeo, como (8+9)/2 < 8.625
 redondeo a x2 = 9 por lo tanto 8 + 5*eps = 9 = 0.1001*2^4

e) (8+3*eps)+3*eps = (8 + 0.375)+0.375 = redondeo = 8 + 0.375 = redondeo
 = 8 = 0.1000*2^4

%}

