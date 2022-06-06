clear all; clc;

phFre = load('GaAs.freq.gp');

clf; fig = figure(1)
for ii = 1:3
    plot(phFre(:,1),phFre(:,ii+1)/8.0655,'k','linewidth',1); hold on
    plot(phFre(:,1),phFre(:,ii+4)/8.0655,'m','linewidth',1); hold on
end
set(gca,'xtick',[0,0.866,1.866],'xticklabel',{'L','\Gamma','X'},'ytick',[0:10:40])
xlabel('k-path (2\pi/a)')
ylabel('Phonon Energy (eV)')
grid on
axis([phFre([1,end],1)',0,40])

print('GaAs_phFre','-dpng','-r300')