%Ejercicio Bien melo

%Datos de donde se calculo la anomalía isostatica
F1=Grad2Decimal(4,0,0)
LAM1=Grad2Decimal(74,0,0)

%Sitio donde se calcula la contribución
F2=Grad2Decimal(4,40,0)
LAM2=Grad2Decimal(74,20,0)

%Función de stokes

fs=FuncionStokesFinal(F1,F2,LAM1,LAM2)

%Calculo del área

Area=Cuadricula(10,6370000)

%Calculo Gravedad teorica

Gteo=GravedadT(4,40,0)

GteoF=Gteo/100000

%CalculoFinal

Cuadri1=(Area*fs)/(4*pi*GteoF*6370000)

%Calculo de la Ondulacion por Airy

Airy=AnomaliaAirySobreTierra(2500,4,977870)/100000


OndulacionAiry=Cuadri1*Airy

%Calculo De la ondulación Por pratt

Pratt=AnomaliaPrattTierra(2500,80000,4,977870)/100000
OndulacionPratt=Cuadri1*Pratt






