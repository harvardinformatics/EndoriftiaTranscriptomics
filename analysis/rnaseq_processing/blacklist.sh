#!/bin/bash
#SBATCH -N 1
#SBATCH -n 8 #Number of cores
#SBATCH -t 8:00:00  
#SBATCH -p shared  
#SBATCH --mem=4000  
#SBATCH -e silvabt2_%A.e
#SBATCH -o silvabt2_%A.o

module purge
module load python
source activate bowtie2

bowtie2 --quiet --very-sensitive-local --phred33  -x /n/holyscratch01/external_repos/INFORMATICS/silva/release138/DNAspace_SILVA_138_SSURef_NR99_tax_silva -1 rmoverrep_${1}_R1_val_1.fq -2 rmoverrep_${1}_R2_val_2.fq --threads 8 --met-file ${1}_bowtie2_metrics.txt --al-conc-gz blacklist_paired_aligned_${1}.fq.gz --un-conc-gz blacklist_paired_unaligned_${1}.fq.gz  --al-gz blacklist_unpaired_aligned_${1}.fq.gz --un-gz blacklist_unpaired_unaligned_${1}.fq.gz
