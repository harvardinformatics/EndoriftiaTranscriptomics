#!/bin/bash
#SBATCH -J trimgalore
#SBATCH -n 1                     
#SBATCH -t 0-6:00                 
#SBATCH -p shared         
#SBATCH --mem=3000               
#SBATCH -o trimgalore_%A.out  
#SBATCH -e trimgalore_%A.err  

module purge
module load cutadapt/1.8.1-fasrc01
/n/home_rc/afreedman/software/TrimGalore/trim_galore --paired --retain_unpaired --phred33 --output_dir --length 35 -q 0 --stringency 5 -e 0.1 ../0-raw/103j_R1.fastq.gz ../0-raw/103j_R2.fastq.gz
