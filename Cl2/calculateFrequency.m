clear all;


%Bohr = 0.52917725*1E-10;
%me = 9.10938356*1E-31;
%Ry = 2.1798741*1E-18;
Bohr = 1;
me = 1;
Ry = 1;

U0 = -59.99059541*Ry;
M = 35.45*1822.8885*me;
delta = 0.001*Bohr;

Up = -59.99059502*Ry;
Um = -59.99059537*Ry;

sqrt(2*(Up+Um-2*U0)/(M*delta^2))*(4.13*1E16)