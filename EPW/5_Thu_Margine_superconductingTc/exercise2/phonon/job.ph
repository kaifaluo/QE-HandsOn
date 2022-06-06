#!/bin/bash
#SBATCH -J job.ph             # Job name
#SBATCH -N 1                  # Total # of nodes
#SBATCH --ntasks-per-node 56
#SBATCH -t 01:00:00           # Run time (hh:mm:ss)
#SBATCH -A EPW-SCHOOL
#SBATCH -p small
#SBATCH --reservation=EPW-SCHOOL-06-17-2021

# Launch MPI code...
export PATHQE=/work2/06868/giustino/EPW-SCHOOL/q-e

ibrun $PATHQE/bin/pw.x -nk 56 -in scf.in > scf.out
ibrun $PATHQE/bin/ph.x -nk 56 -in ph.in > ph.out
