clear all; clc

groundEnergy = load('energyMatrix.txt');

clf; fig = figure(1)
contourf(groundEnergy(end:-1:1,:))
colorbar
set(gca,'xtick',[1,2,3,4],'xticklabel',{'4.55','4.60','4.65','4.70'}, ...
        'ytick',[1:2:7],'yticklabel',{'2.5','2.7','2.9','3.1'}); hold on
xlabel('Lattice Parameter a (Bohr)')
ylabel('c/a')
plot([1,4],[1,1]*(2.725-2.5)*7/(3.2-2.5)+1,'k--','linewidth',1.5); hold on
plot([1,1]*(4.611-4.55)*3/(4.7-4.55)+1,[1,8],'k--','linewidth',1.5); hold on
axis([1,4,1,8])
print('graphite_heatmap','-dpng','-r300')