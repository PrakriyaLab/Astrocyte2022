#!/bin/bash
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 4:00:00
#SBATCH -N 1
#SBATCH --mem=8G
#SBATCH --ntasks-per-node=1
#SBATCH --mail-user=rogangrant2022@u.northwestern.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --job-name='230209_Prakriya_merge'

cd /projects/b1038/Pulmonary/rgrant/Orai1_KO_Prakriya/merged_fastqs
prefix='/projects/b1038/Pulmonary/rgrant/Orai1_KO_Prakriya/211122_NB501488_0481_AH5JM2BGXK/Data/Intensities/BaseCalls/MW-Prakriya_Orai1_11-15-21/MP_21_'

for i in {001..020}
do
  cur_files=${prefix}${i}*'_R1_001.fastq.gz'
  echo $cur_files
  out_file='/projects/b1038/Pulmonary/rgrant/Orai1_KO_Prakriya/merged_fastqs/MP_21_'${i}'_merged_R1_001.fastq.gz'
  echo $out_file
  cat $cur_files > $out_file
done
