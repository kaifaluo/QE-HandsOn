#!/bin/bash
#SBATCH -J myjob           # Job name
#SBATCH -N 1               # Total # of nodes
#SBATCH --ntasks-per-node 8
#SBATCH -t 01:00:00        # Run time (hh:mm:ss)
#SBATCH -A EPW-SCHOOL
#SBATCH -p small
#SBATCH --reservation=EPW-SCHOOL-06-16-2021

module list

export PATHQE=/work2/06868/giustino/EPW-SCHOOL/q-e

# Launch MPI code...
ibrun $PATHQE/bin/pw.x -input scf.in > scf.out
ibrun $PATHQE/bin/ph.x -input ph.in > ph.out

#ibrun $PATHQE/bin/pw.x -input nscf.in > nscf.out
#ibrun $PATHQE/bin/epw.x -npool 8 -input epw1.in > epw1.out
#ibrun $PATHQE/bin/epw.x -npool 8 -input epw2.in > epw2.out
