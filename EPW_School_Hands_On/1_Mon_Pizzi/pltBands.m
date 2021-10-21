clear all; clc;



%load('bands.mat');
%DFTBandsRaw = table2array(bands);
%numkDFT = 512;
%DFTBands = zeros(numkDFT,numBand);
%DFTBands = DFTBandsRaw(2:2:end,:);
%kListDFT = [1:numkDFT]'*kListWan(end)/numkDFT;

WanBandsRaw = load('ex1_band.dat');
DFTBandsRaw = load('bands.gnu');

numkWan = 216;
numkDFT = 41;

numBand = 4;
WanBands = zeros(numkWan,numBand);
numDFTBand = size(DFTBandsRaw,1)/numkDFT;
DFTBands = zeros(numkDFT,numDFTBand);
kListDFT =  DFTBandsRaw(1:numkDFT,1);

kListWan = WanBandsRaw(1:numkWan,1);
kListDFT = kListDFT*kListWan(end)/kListDFT(end);

for ii = 1:numBand
    WanBands(:,ii) = WanBandsRaw((ii-1)*numkWan+1:ii*numkWan,2);
end
for ii = 1:numDFTBand
    DFTBands(:,ii) = DFTBandsRaw((ii-1)*numkDFT+1:ii*numkDFT,2);
end


clf; fig = figure(1)
for ii = 1:numDFTBand
	plot(kListDFT,DFTBands(:,ii)+(6.385-5.989),'k','linewidth',1.5); hold on;
end
for ii = 1:numBand
    plot(kListWan,WanBands(:,ii),'r--','linewidth',1.5); hold on;
end
axis([0,kListDFT(end),-8,15])
xlabel('k-path')
ylabel('Energy (eV)')