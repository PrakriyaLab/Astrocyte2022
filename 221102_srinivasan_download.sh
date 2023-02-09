#!/bin/bash
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 16:00:00
#SBATCH -N 1
#SBATCH --mem=48G
#SBATCH --ntasks-per-node=8
#SBATCH --mail-user=rogangrant2022@u.northwestern.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --job-name="221102_srinivasan_download"

cd /projects/b1042/MisharinLab/rgrant/srinivasan_reanalysis
/home/rag0151/utils/bash/fastestQ_SRA.sh \
'/projects/b1042/MisharinLab/rgrant/srinivasan_reanalysis/SRR_Acc_List.txt' \
8 \
/scratch/rag0151 \
/projects/b1042/MisharinLab/rgrant/srinivasan_reanalysis/raw_data/
