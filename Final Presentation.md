# Research Questions:

##

## *What are the differences in protein expression between a coral's tissue and its skeletal matrix?*

## *Does coral bleaching affect protein expression?*



# What did I do?

##Workflow

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

Ran in directory where .RAW MS data is stored

Allows to open website for each peptide and protein to see score and abundance


## Abacus






## Protein Counts

![](https://github.com/Jeremyfishb/Jeremy-coral/blob/master/Visualization/Mcap_alltreats_venn.png)

## Uniprot

## Eigenvectors

## NMDS Plots

## Qspec

## Gene Ontology: David & MetaGOmics







