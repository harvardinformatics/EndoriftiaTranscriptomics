#!/bin/bash
#SBATCH -n 4
#SBATCH -N 1
#SBATCH -t 02:00:00
#SBATCH -p serial_requeue,shared
#SBATCH -e rsem_index_%A.e
#SBATCH -o rsem_index_%A.o
#SBATCH -J rsem_index
#SBATCH --mem=12000

module purge
module load python

source activate rsem_1.3.3

rsem-prepare-reference -p 4 --bowtie2 --gff3 genomic.gff GCF_023733635.1_ASM2373363v1_genomic.fna GCF_023733635.1_ASM2373363v1_RSEMbt2 
