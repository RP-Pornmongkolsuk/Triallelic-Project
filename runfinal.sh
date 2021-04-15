#!/bin/bash
for CHR in {1..22}; do
sbatch -J ${CHR}SNPsResult -N 1 -n 4 -t 1-0 --mem=2G -o ${CHR}SNPsResult-%A.out -e ${CHR}SNPsResult-%A.err --mail-type=ALL --mail-user=ratchanon_pornmongkolsuk@brown.edu --wrap="python ${CHR}TriallelicSNPs.py"
done
