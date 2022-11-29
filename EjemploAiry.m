%Tener en cuenta que este ejemplo es para un punto que está en la tierra,
%hay que investigar si se puede calcular un punto para utilizar la antiraiz



%Calcula de la anomalía isostatica por Airy
ValorGravedadObservada=977870
Altura=2500
Corteza=30000
DensidadCorteza=2670
DensidadManto=3270
CilindroDeCompensacion=10000
ConstanteGravi=6.67*10^-11

Raiz=(Altura*DensidadCorteza)/(DensidadManto-DensidadCorteza)

%Parametros para hallar la correccion isostatica

a=CilindroDeCompensacion
b=Raiz
c=Raiz+Corteza+Altura


%Corrección isostatica///6000 es la diferencia de densidades de manto y la
%corteza

CIA=2*pi*ConstanteGravi*(6000)*(b+sqrt(a^2+(c-b)^2)-sqrt(a^2+c^2))

%Se pasa la correccion isostatica a Miligales  y se halla gravedad teorica

CIAM=CIA*100000


GTEORICA=GravedadT(4,0,0)

%Se halla la anomalia Por airy, Hay que tener en cuenta que en este caso se
%calcula para un punto que está sobre el nivel del mar, por eso los valores
%de la corrección por aire libre y Bouger tienen esos valores


AnomaliaAiry=ValorGravedadObservada+0.308*Altura-0.1119*Altura+CIAM-GTEORICA










