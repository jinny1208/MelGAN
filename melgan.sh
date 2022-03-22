#!/bin/bash

#SBATCH -J melgan  # job name
#SBATCH -o [Slurm]melgan.%j.out # standard output and error log
#SBATCH -p A5000    # queue name or partiton name
#SBATCH -t 72:00:00 # Run time (hh:mm:ss)
#SBATCH  --gres=gpu:1
#SBATCH  --nodes=1
#SBATCH  --ntasks=1
#SBATCH  --tasks-per-node=1
#SBATCH  --cpus-per-task=3

python trainer.py -c config/default.yaml -n multilingual