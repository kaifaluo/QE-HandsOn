#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=56
#SBATCH -A EPW-SCHOOL
#SBATCH --partition=small
#SBATCH --reservation=EPW-SCHOOL-06-18-2021 
module purge
module load intel/19.1.1 impi/19.0.9 TACC
cd $PWD
PATHQE=/work2/06868/giustino/EPW-SCHOOL/q-e/
prefix=si_333_ZG
i=1 # initial kpt index to calculate
f=35 # final kpt index to calculate
#
while [ $i -le $f ];do
  mkdir kpt_$i
  cd kpt_$i
  #
  EXE=$PATHQE/bin/pw.x
  JNAME=si.333_ZG_bands
  #
  cp -r ../"$prefix".save .
  mv ../"$JNAME"_"$i".in .
  ibrun -n 14 $EXE < "$JNAME"_"$i".in > "$JNAME"_"$i".out
  #
  EXE=$PATHQE/bin/bands_unfold.x
  JNAME=bands
  #
  cp ../"$JNAME".in .
  sed -i 's/tmp/'$i'/g' $JNAME.in
  ibrun -n 14 $EXE < "$JNAME".in > "$JNAME".out
  #
  rm -r *wfc* "$prefix".save
  cd ../
  i=$((i+1))
done
