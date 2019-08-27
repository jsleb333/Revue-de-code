#!/bin/bash
#SBATCH --account=def-ljdube
#SBATCH --time=0-0:5
#SBATCH --job-name=test
#SBATCH --error=%x-%j.err
#SBATCH --array=0-9

module load python/3.7.4
module load scipy-stack/2019a

param_array=($(seq 0 0.1 10))
param=${param_array[$SLURM_ARRAY_TASK_ID]}

outfile="file_$SLURM_ARRAY_TASK_ID.txt"

echo $param > outfile

