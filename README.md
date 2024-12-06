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
* Input: Multiple .faa files stored in a specified folder.
* Output: Cleaned functional protein sequences saved in a desired output folder.

Example Usage:
```
./hypo_seq_remover.sh /path/to/input_folder /path/to/output_folder
```

## 3. Extracting Protein Names
Description:

This step extracts protein names from the `.faa files` for further analysis, ensuring an efficient workflow for downstream applications.
Script: `name_extracter.sh`

This script extracts protein names from multiple `.faa files`.

* Input: Multiple `.faa files`
* Output: A list of protein names stored in a specified output folder.
Example Usage:
```
./name_extracter.sh /path/to/input_folder /path/to/output_folder
```

### Getting Started
Prerequisites:

* Install Prokka (follow the installation guide on [Prokka GitHub](https://github.com/tseemann/prokka.git).
Ensure you have a Linux/MacOS system with bash for running the scripts.

> Running the Workflow:
* Run Prokka on your input FASTA file to generate the `.faa file`
* Use the `hypo_seq_remover.sh `script to filter out hypothetical proteins.
* Use the` name_extracter.sh` script to extract protein names for further analysis.

### Contributing

Feel free to fork this repository, submit issues, and send pull requests. Contributions are welcome!

### License

This project is licensed under the MIT License - see the `LICENSE.md` file for details.

