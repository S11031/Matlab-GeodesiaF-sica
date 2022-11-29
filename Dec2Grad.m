function [Completo] = Dec2Grad(Decimal)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
Grados=floor(Decimal);
Minutos1=Decimal*60
Minutos=floor(Decimal*60);
Segundos=(Minutos1-Minutos)*60

Completo=[Grados Minutos Segundos];

end