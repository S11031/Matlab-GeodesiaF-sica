function [FS] = FuncionStokesFinal(Fi1,Fi2,Lam1,Lam2)
%Poner en decimales los FI Y LAMBDA




kappa=sind(Fi1)*sind(Fi2)+cosd(Fi1)*cosd(Fi2)*cosd(Lam2-Lam1)
Kappa1=acosd(kappa)

Kappa2=Dec2Grad(Kappa1)

%Función de stokes


P1=1/(sind(Kappa1/2))
P2=6*sind(Kappa1/2)
P3=5*cosd(Kappa1)
P4=3*cosd(Kappa1)*log(sind(Kappa1/2)+(sind(Kappa1/2)^2))

%Función de stokes
FS=P1-P2+1-P3-P4


end