# Acinetobacter_Proteome_Pipeline
This repository provides a pipeline for the analysis of protein sequences in Acinetobacter baumannii. The pipeline utilizes Prokka for genome annotation and custom shell scripts to filter out hypothetical proteins and extract protein names for downstream analysis.
## Tools Used:
`Prokka`: Genome annotation tool for extracting protein sequences.

`Shell Scripts`: Custom scripts `hypo_seq_remover.sh` , `name_extracter.sh` to process and extract data from Prokka outputs.

## 1. Prokka Genome Annotation
Description:

Use Prokka to annotate the Acinetobacter baumannii genome and extract protein sequences in amino acid format(.faa).

Command:
```
prokka test_input.fna
```

## 2. Removing Hypothetical Protein Sequences
Description:

Once the `.faa file ` is obtained from Prokka, hypothetical protein sequences are filtered out to focus on functional proteins.

Script: ` hypo_seq_remover.sh `
This script removes hypothetical protein sequences from the `.faa file`.
