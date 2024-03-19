# Code
This directory contains three subdirectories.
* *rna_processing* contains SLURM job scripts that themselves run three sequential steps for  data cleaning operations on raw fastq files:
  * adaptor trimming with *trim_galore*.
  * removal of reads containing over-represented sequences using [RemoveFastqcOverrepSequenceReads.py](https://github.com/harvardinformatics/TranscriptomeAssemblyTools/blob/master/utilities/RemoveFastqcOverrepSequenceReads.py) which is part of the [TranscriptomeAssemblyTools](https://github.com/harvardinformatics/TranscriptomeAssemblyTools/tree/master) github repository.
  * removal of reads that originate from rRNA, identified by mapping to sequences from the [SILVA](https://www.arb-silva.de/) database.

* *rsem* contains the job scripts for building the *rsem* genome index and quantifying expression with *rsem*. 
* *DE* contains R markdown files for performing differential expression analysis between treatments with [*limma voom*](https://genomebiology.biomedcentral.com/articles/10.1186/gb-2014-15-2-r29), and other downstream analyses of expression variation including gene enrichment and network analyses.

Harvard's Faculty of Arts and Science Research Computing (FASRC) division has migrated away from a framework in which software packages can be loaded as modules, and towards one where analysis is conducted within [*conda*](https://docs.conda.io/projects/conda/en/stable/) environments. Thus some of the module load options in the SLURM job scripts will no longer work. 
