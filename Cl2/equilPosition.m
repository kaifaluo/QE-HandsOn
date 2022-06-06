clear all; clc;

rawPos = load('output.txt');

numLoop = 12;

posCl1 = rawPos(1:numLoop);
posCl2 = rawPos(numLoop+1:2*numLoop);
totalEnergy = rawPos(2*numLoop+1:3*numLoop);

clf; fig = figure(1);
yyaxis left
scatter(1:numLoop,(posCl2-posCl1)*0.529,12,'b'); hold on
plot(1:numLoop,(posCl2-posCl1)*0.529,'b')
ylabel('Cl-Cl Distance (\AA)')
plot([1,numLoop],[1.99,1.99],'b--')

yyaxis right
scatter(1:numLoop,totalEnergy,'r'); hold on
plot(1:numLoop,totalEnergy,'r')
ylabel('Total Energy (Ry)')

xlim([1,numLoop])
set(gca,'box','on')
print('equilPosition','-dpng','-r300')