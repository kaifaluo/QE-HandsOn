/path_to/q-e/bin/plotband.x spectral_weights01.dat < spectral_weights.in > spectral_weights.out
/path_to/q-e/bin/plotband.x bands01.dat < energies.in > energies.out
#sed -i '/^$/d' spectral_weights.xmgr # remove empty lines 
sed -i '/^\s*$/d' spectral_weights.dat
sed -i '/^\s*$/d' energies.dat
paste energies.dat spectral_weights.dat > tmp
awk '{print $1,$2,$4}' tmp > energies_weights.dat
rm tmp
