clc; clear all;

eta = 0.1;
Omega = 73.9876;
trans = 14710.5;
U0  = -22.80164884;

U1p = -22.71970979;
U2p = -22.67048597;
U3p = -22.78567111;

U1m = -22.66310783;
U2m = -22.64157875;
U3m = -22.78842734;

relation1 = (U1p+U1m-2*U0)/(3*eta^2*Omega)
relation2 = (U2p+U2m-2*U0)/(6*eta^2*Omega)

C11 = (relation1 + 2*relation2)/3;
C12 = C11 - relation2;
C44 = (U3p+U3m-2*U0)/(eta^2*Omega);

C11 = C11*trans
C12 = C12*trans
C44 = C44*trans
