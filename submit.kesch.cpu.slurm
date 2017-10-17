#!/usr/bin/env bash
#SBATCH --job-name=<NAME>
#SBATCH --ntasks=<NTASKS>
#SBATCH --ntasks-per-node=<NTASKSPERNODE>
#SBATCH --cpus-per-task=<CPUSPERTASK>
#SBATCH --output=<OUTFILE>
#SBATCH --time=<TIME>
#SBATCH --partition=<PARTITION>
#SBATCH --account=<ACCOUNT>

########################################################

<ENVIRONMENT>

export OMP_NUM_THREADS=1
export MALLOC_MMAP_MAX_=0
export MALLOC_TRIM_THRESHOLD_=536870912

<CMD>

########################################################
