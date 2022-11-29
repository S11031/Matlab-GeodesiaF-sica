%Datos del sitio

EspesorCorteza=30000
NivelCompensacion=100000
Altura=2000
EspesorManto=50000
DensidadCorteza=2670
DensidadManto=3270
CilindroCompensacion=10000
Latitud=3.5
ConstanteGravi=6.67*10^-11
ValorGravedadObservada=977700


%Calculo de la diferencia de densidades

P0=((EspesorCorteza*DensidadCorteza)+(EspesorManto*DensidadManto))/(EspesorCorteza+EspesorManto)

P2=(P0*NivelCompensacion)/(NivelCompensacion+Altura)

DiferenciaDensidades=P0-P2


%Parametros de la corrección por pratt
a=CilindroCompensacion
b=NivelCompensacion
c=NivelCompensacion+Altura

%Calculo de la corrección

CIP=2*pi*ConstanteGravi*(DiferenciaDensidades)*(b+sqrt(a^2+(c-b)^2)-sqrt(a^2+c^2))


%Calculo de la correccion isostatica por pratt

%Se pasa la correccion isostatica a Miligales  y se halla gravedad teorica

CIPM=CIP*100000


GTEORICA=978049*(1+0.0052884*(sind(Latitud))^2-0.0000059*(sind(2*Latitud))^2)


%Se halla la anomalia Por airy, Hay que tener en cuenta que en este caso se
%calcula para un punto que está sobre el nivel del mar, por eso los valores
%de la corrección por aire libre y Bouger tienen esos valores


AnomaliaPratt=ValorGravedadObservada+0.308*Altura-0.1119*Altura+CIPM-GTEORICA
