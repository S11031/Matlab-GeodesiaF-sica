function [Decimal] = Grad2Decimal(Grados,Minutos,Segundos)

Decimal = Grados+(Minutos/60)+(Segundos/3600);

end