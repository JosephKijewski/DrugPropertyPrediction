#!/bin/bash
#
# Once the job starts you will see a file MySerialJob-****.out
# The **** will be the slurm JobID
# --- Start of slurm commands -----------
#SBATCH --time=48:00:00
#SBATCH -n 24
#SBATCH --mem=96G
# Specify a job name:
#SBATCH -J test_submit
# Specify an output file
# %j is a special variable that is replaced by the JobID when
# job starts
#SBATCH -o test_submit-%j.out
#SBATCH -e test_submit-%j.out
#----- End of slurm commands ----

python3 data_processing/create_walks.py ~/scratch/qm8 24 2 64