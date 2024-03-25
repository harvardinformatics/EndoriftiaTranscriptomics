#!/bin/bash
#SBATCH -n 12
#SBATCH -N 1
#SBATCH -t 03:00:00
#SBATCH -p serial_requeue,shared
#SBATCH -e rsem_%A.e
#SBATCH -o rsem_%A.o
#SBATCH -J rsem
#SBATCH --mem=12000

module purge
module load python

source activate rsem_1.3.3

rsem-calculate-expression --bowtie2 --output-genome-bam --forward-prob 0 --paired-end -p 12 --estimate-rspd blacklist_paired_unaligned_${1}.fq.1.gz blacklist_paired_unaligned_${1}.fq.2.gz ../rsem_index_from_genome/GCF_023733635.1_ASM2373363v1_RSEMbt2 ${1}_2023.09.09_RSEMbt2
