clear all; clc

totalEnergy = load('energyVaryLatticeParameter.txt');

clf; figure = figure(1)

plot(totalEnergy(:,1),totalEnergy(:,2),'k','linewidth',1.5); hold on
scatter(totalEnergy(:,1),totalEnergy(:,2),15,'filled')
set(gca,'xtick',[10:0.1:10.4])
xlabel('Lattice Parameter (Bohr)')
ylabel('Total Energy (Ry)')

print('totalEnergy','-dpng','-r300')