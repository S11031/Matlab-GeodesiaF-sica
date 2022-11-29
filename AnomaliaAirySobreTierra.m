function [AnomaliaAiry] = AnomaliaAirySobreTierra(Altura,Latitud,ValorGravedadObservada)%Calcula de la anomalía isostatica por Airy

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


GTEORICA=978049*(1+0.0052884*(sind(Latitud))^2-0.0000059*(sind(2*Latitud))^2)


%Se halla la anomalia Por airy, Hay que tener en cuenta que en este caso se
%calcula para un punto que está sobre el nivel del mar, por eso los valores
%de la corrección por aire libre y Bouger tienen esos valores


AnomaliaAiry=ValorGravedadObservada+0.308*Altura-0.1119*Altura+CIAM-GTEORICA


end