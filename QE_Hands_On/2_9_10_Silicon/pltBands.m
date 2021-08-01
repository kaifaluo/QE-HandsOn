clear all; clc;

bands_raw = load('bands.gnu');
nk = 41;
nbd = size(bands_raw,1)/nk;
klist = bands_raw(1:nk,1);
bands = zeros(nk,nbd);
ezero = 6.2106;

for ii = 1:nbd
    bands(:,ii) = bands_raw((ii-1)*nk+1:ii*nk,2)-ezero;
end

clf; figure = figure(1)
for ii = 1:nbd
    plot(klist,bands(:,ii),'k','linewidth',1.5); hold on
end

set(gca,'xtick',[0,0.866,1.866],'xticklabel',{'L','\Gamma','X'})
xlabel('k-path (2\pi/a)')
ylabel('Electron Energy (eV)')
axis([klist([1,end])',-15,10])
grid on
print('Si_bands','-dpng','-r300')