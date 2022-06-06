clear all; clc;

phFre1 = load('diam.freq1.gp');
phFre = load('diam.freq.gp');

clf; fig = figure(1)
for ii = 1:3
    plot(phFre1(:,1),phFre1(:,ii+1)/8.0655,'linewidth',1.5,'color','k'); hold on
    plot(phFre1(:,1),phFre1(:,ii+4)/8.0655,'linewidth',1.5,'color','cyan'); hold on
    plot(phFre(:,1),phFre(:,ii+1)/8.0655,'k--','linewidth',1); hold on
    plot(phFre(:,1),phFre(:,ii+4)/8.0655,'b--','linewidth',1); hold on
end
set(gca,'xtick',[0,0.866,1.866],'xticklabel',{'L','\Gamma','X'},'ytick',[0:50:200])
xlabel('k-path (2\pi/a)')
ylabel('Phonon Energy (eV)')
grid on
axis([phFre([1,end],1)',0,200])

print('diamond_phFre','-dpng','-r300')