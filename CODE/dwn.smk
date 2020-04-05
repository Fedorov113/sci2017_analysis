import sys, os, glob, importlib
import pandas as pd

configfile: '/home/fedorov/assnake_db/config.yaml'
include: "/home/fedorov/GitHub/assnake/assnake/snake/snake_base.py"

samples = [s.split('/')[-1].replace('.download', '') for s in glob.glob('/data11/bio/mg_data/CANCER_EXTERNAL/Matson_Human_16s/reads/sra/*.download')]

# FAILED
# ERR2198660
rule dwn:
    input: expand('/data11/bio/mg_data/CANCER_EXTERNAL/Matson_Human_16s/reads/sra/{sample}_R1.fastq.gz', sample=samples)