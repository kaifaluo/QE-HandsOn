clear all; clc

totalEnergy = load('cohesiveEnergy.txt');
Uatom = -10.73322060;
Bohr = 0.529;
Ry=13.6;

clf; figure = figure(1)

plot(totalEnergy(:,2)*Bohr^3/2,(totalEnergy(:,3)-2*Uatom)*Ry/2,'k','linewidth',1.5); hold on
scatter(totalEnergy(:,2)*Bohr^3/2,(totalEnergy(:,3)-2*Uatom)*Ry/2,15,'filled')
set(gca,'xtick',[4:1:8],'ytick',[-9.2:0.2:-8])
axis([3.8,8,-9.2,-8])
xlabel('Volume per Atom ($\AA^{3}$)')
ylabel('Cohesive Energy per Atom (eV)')
grid on

print('totalEnergy','-dpng','-r300')