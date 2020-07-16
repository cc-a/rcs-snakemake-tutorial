#!/bin/bash
#PBS -l walltime=00:30:00,select=1:ncpus=8:ompthreads=8:mem=8g
set -euo pipefail
cd $PBS_O_WORKDIR
source ~/anaconda3/bin/activate
conda run --name snakemake-tutorial snakemake --cores $NCPUS
