#!/bin/bash 
#SBATCH -p shared    
#SBATCH -n 1
#SBATCH -t 0-2:00  
#SBATCH --mem 6000 
#SBATCH -J rmover  
#SBATCH -o rmoverrep.%A.out 
#SBATCH -e rmoverrep.%A.err

module purge
module load python/2.7.14-fasrc02
python /n/home_rc/afreedman/workspace/TranscriptomeAssemblyTools/RemoveFastqcOverrepSequenceReads.py -1 ${1}_R1_val_1.fq.gz -2 ${1}_R2_val_2.fq.gz -fql ../1-trimgalore-adaptoronly/${1}_R1_val_1_fastqc/fastqc_data.txt -fqr ../1-trimgalore-adaptoronly/${1}_R2_val_2_fastqc/fastqc_data.txt -o $1
 
