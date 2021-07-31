clear all; clc;

phFre = load('sto.freq.gp');

clf; fig = figure(1)
for ii = 1:15
    plot(phFre(:,1),phFre(:,ii+1)/8.0655,'k','linewidth',1.5); hold on
    scatter(phFre(phFre(:,ii+1)<0,1),phFre(phFre(:,ii+1)<0,ii+1)/8.0655,10,'r','filled'); hold on
end
klist = [0,0.5,1,1.707,2.573];
set(gca,'xtick',klist/klist(end)*phFre(end,1),'xticklabel',{'\Gamma','X','M','\Gamma','R'},'ytick',[0:40:120])
xlabel('k-path (2\pi/a)')
ylabel('Phonon Energy (eV)')
grid on
axis([phFre([1,end],1)',-25,120])

print('STO_phFre','-dpng','-r300')