clear all; clc;

epsi = load('epsi_gaas2mat.dat');
epsr = load('epsr_gaas2mat.dat');

clf; figure = figure(1)
plot(epsr(:,1),epsr(:,2),'k','linewidth',1.5); hold on
plot(epsi(:,1),epsi(:,2),'m','linewidth',1.5); hold on
set(gca,'xtick',[0:2:10],'ytick',[-20:20:40])
axis([0,12,-20,40])
xlabel('Electron Energy (eV)')
ylabel('\epsilon_{1,2}')
grid on
legend({'\epsilon_{1}','\epsilon_{2}'})

print('GaAs_epsilon','-dpng','-r300')