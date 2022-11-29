function [GT] = GravedadT(Grados,Minutos,Segundos)

Decimal= Grados+(Minutos/60)+(Segundos/3600);
GT=978049*(1+0.0052884*(sind(Decimal))^2-0.0000059*(sind(2*Decimal))^2)
end