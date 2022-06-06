#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=56
#SBATCH -A EPW-SCHOOL
#SBATCH --partition=small
#SBATCH --reservation=EPW-SCHOOL-06-18-2021 
module purge
module load TACC
cd $PWD
PATHQE=/work2/06868/giustino/EPW-SCHOOL/q-e/
