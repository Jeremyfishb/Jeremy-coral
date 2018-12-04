# Research Questions:

##

## *What are the differences in protein expression between a coral's tissue and its skeletal matrix?*

## *Does coral bleaching affect protein expression?*



# What did I do?

## Workflow

![](https://github.com/Jeremyfishb/Jeremy-coral/blob/master/Visualization/FISH_546_Presentation_Flow_Chart.png)

## Treatments and Sample Collection

![](https://github.com/Jeremyfishb/Jeremy-coral/blob/master/Visualization/HIMB_coral_bleaching.png)

## Mass Spectrometry

![](https://github.com/Jeremyfishb/Jeremy-coral/blob/master/Visualization/Mass_spec.png)

MS data stored in UW Genome Sciences Cluster

## Comet Search


- Compares proteins found in samples to *M. capitata* fasta results

Command line entries:

**convert.sh** ***.RAW**

**runCometQ** ***.RAW**



- Ran in directory where .RAW MS data is stored



- Converts .RAW files to .mzXML files

## Peptide and Protein Prophet



- Gives peptide and protein counts based on spectral counts



- Validates quality of peptide and proteins identified by Comet search



- Converts .mzXML files to interact-*.xml files

Command line entries:

**runCometQ --wocomet --single** ***.mzXML**

Ran in directory where .RAW MS data were stored

Allows to open website for each peptide and protein to see score and abundance

![](https://github.com/Jeremyfishb/Jeremy-coral/blob/master/Visualization/Prot_prophet_screenshot.png)


## Abacus



- Takes all interact-*.xml files and compiles a bunch of parameters that can used to analyze the data further

Command line entries:

**java -Xmx16g -jar /net/pr/vol1/ProteomicsResource/bin/abacus.jar -p Abacus_parameters.txt**

Ran in directory where interact-*xml files were stored


## Protein Counts

![](https://github.com/Jeremyfishb/Jeremy-coral/blob/master/Visualization/Mcap_alltreats_venn.png)

## Uniprot

- Gets protein annotations from database
- Essentially gives real protein names, and the genes that made them, to the fasta ID's

Example: 

**MS ID**== **Fasta ID** == **Protein name** ==
**Gene name**

**lcl|c224670_g2_i1|m.10052**==
**A0A2B4S7C3**==
**Hemicentin-1**==
**HMCN1 AWC38_SpisGene9568**


## Eigenvectors

- Calculated in R using "Bray" index from NMDS calculations
- Show which proteins influence protein grouping

## NMDS Plots

![](

## Qspec

## Gene Ontology: David & MetaGOmics







