clear all; clc;

nki = 31;
FermiE = 13.3641;
b1 = [-1.000000 -1.000000  1.000000];
b2 = [1.000000  1.000000  1.000000];
b3 = [-1.000000  1.000000 -1.000000];

if 0
	band_raw = load('copper_fs2mat.bxsf');
	ncolumn = 6;
	npoint = floor(nki^3/ncolumn);
	band = zeros(ncolumn*npoint,1);
	for ii = 1:npoint
		band((ii-1)*ncolumn+1:ii*ncolumn) = band_raw(ii,:)';
	end
save('copper_band6.mat','band')
end

load('copper_band6.mat');


band = abs(band - FermiE);
thres = 1.8;
band(band>thres)=0;
nkFS = sum(band~=0);

nkIndex = zeros(nkFS,4);
bandtmp = (band~=0).*[1:size(band,1)]';
nkIndex(:,4) = bandtmp(bandtmp~=0);
nkIndex(:,1) = mod(nkIndex(:,4),nki);
nkIndex(:,2) = mod((nkIndex(:,4)-nkIndex(:,1))/nki,nki);
nkIndex(:,3) = (nkIndex(:,4)-nkIndex(:,1)-nkIndex(:,2)*nki)/nki^2;

klocation = kron(nkIndex(:,1),b1/nki)+kron(nkIndex(:,2),b2/nki)+kron(nkIndex(:,3),b3/nki);

clf; fig = figure(1)
scatter3(klocation(:,1),klocation(:,2),klocation(:,3),5,'filled')