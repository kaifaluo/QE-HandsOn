clear all; clc;

bands_raw = load('bands.gnu');
nk = 251;
nbd = size(bands_raw,1)/nk;
klist = bands_raw(1:nk,1);
bands = zeros(nk,nbd);
ezero = 13.3641;

%kpath  =  [0.00 0.00 0.00; ...
%            0.00 1.00 0.00; ...
%            0.50 1.00 0.00; ...
%            0.50 0.50 0.50; ...
%            0.00 0.00 0.00; ...
%            0.75 0.75 0.00];
kpath = cumsum([0,1,0.5,0.5,0.5*sqrt(2),0.75*sqrt(2)]);

for ii = 1:nbd
    bands(:,ii) = bands_raw((ii-1)*nk+1:ii*nk,2)-ezero;
end

clf; figure = figure(1)
for ii = 1:nbd
    plot(klist,bands(:,ii),'k','linewidth',1.5); hold on
end

set(gca,'xtick',kpath/kpath(end)*klist(end),'xticklabel',{'\Gamma','X','W','L','\Gamma','K'},'ytick',[-10:10:10])
xlabel('k-path (2\pi/a)')
ylabel('Electron Energy (eV)')
axis([klist([1,end])',-10,10])
grid on
print('copper_bands','-dpng','-r300')