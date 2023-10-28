#!/bin/bash
#SBATCH --partition=general
#SBATCH --output=../out/ja_%A_%a.out
#SBATCH --array=1-100%100
#SBATCH --ntasks=1 ## OBS 1
#SBATCH --cpus-per-task=1 ## OBS 2
#SBATCH --mem-per-cpu=500M ## OBS 3
#SBATCH --mail-type=FAIL                       # Event(s) that triggers email notification (BEGIN,END,FAIL,ALL)
#SBATCH --mail-user=mathew.chandy@uconn.edu    

module load r/4.2.2

## avoiding implicit paralellism
export OMP_NUM_THREADS=1

Rscript jobs.R