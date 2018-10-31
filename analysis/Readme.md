Here are the steps I followed for the *Montipora capitata* coral project after running the samples on the Mass Spectrometer (MS).

Each heading represents a distinct step in the analysis and under each heading there is a description of what, why and how the analysis was done, and includes where to find the files used in each analysis and where the output is. For much of these earlier analyses, the Putty command line was used to access the UW genome sciences department where the raw data is stored and where programs were run in their department's cluster. As of yet, I do not know how to download these files to my computer, nor do I have space on my computer to store the larger files.

*Directories are italicized*

**Commands are in bold**

###Issues

Prior to running the MS, there were a few issues with sample preparation. 

- Sample 69B, both inner and outer, had very low protein concentration.
- Half of the samples were desalted incorrectly. I misread the desalting protocol added 100ul of sample instead of 100ug (all of the sample), which accounted for about 3/4 of the entire sample so the next day, the remaining 1/4 of the samples were desalted and added to make the samples whole. To QC these samples, they were evaluated comparing their protein counts to correctly desalted samples and visually compared in NMDS plots from Abacus outputs. 
- During MS analysis, the LC column broke-down and protein counts were low for about 1/3 of the samples. The column was replaced and those samples were ran again. Those samples were QC'd the same way as explained above.



# Comet search

A comet search was run on all MS generated .raw files. The comet search was run using Putty command line via the UWPR cluster in the UW department of Genome Sciences. This search compares the proteins found in the samples to the genome for *Montipora capitata* to quantify which proteins were being expressed at the time of sampling. The comet searches were run three times: once for inner matrix samples, once for outer matrix samples and once for Rerun samples (the Reruns were reran because the column started to break down halfway through MS analysis, so we replaced it and reran samples that were not looking well). 

The comet parameters can be found here:

*nexus1 /net/nunn/vol1/brook/2018_March_9_JPG_corals/comet.params*

They are the same parameters used for all three searches.

The Montipora genome data base used for the searches can be found here (directory is also noted in the comet.params file):

*nexus1 /net/gs/vol4/shared/nunnlab/search/emmats/databases/Montiporacapitata.contam.fasta*

To convert the .raw files to .mzxml and .pep.xml files and run the comet search, the following directories were opened and these commands were used:

outer matrix:
*nexus1 /net/nunn/vol1/jeremy/2018_March_9_JPG_corals/coral_outer*

**convert.sh** ***.RAW**

**runCometQ** ***.RAW**

Inner matrix:
*nexus1 /net/nunn/vol1/brook/2018_March_9_JPG_corals/coral_inner_matrix*

**convert.sh** ***.RAW**

**runCometQ** ***.RAW**

Rerun inner matrix:
*nexus1 /net/nunn/vol1/brook/2018_March_9_JPG_corals/coral_inner_matrix/Rerun_SOM_samples*

**convert.sh** ***.RAW**

**runCometQ** ***.RAW**


# Peptideprophet and Proteinprophet

Peptide- and Protein-prophet were used to validate the quality of the peptides and proteins identified in Comet searches. Additionally, peptide and protein quantities are given during the anlysis allowing us to QC some of the issues we had with sample prep (see above). To run the prophets, xinteract files were generated using Putty and Comet programs, see below to follow the steps. 

To run the prophets, the following directories were opened:

outer matrix: *.mzXML and .pep.xml files cannot be found at this time*

inner matrix: *.mzXML and .pep.xml files are found here:
nexus1 /net/nunn/vol1/brook/2018_March_9_JPG_corals/coral_inner_matrix*

Rerun inner matrix: *.mzXML and .pep.xml files cannot be found at this time*

Then this commands was used (while in each directory) to generate interact-.pep-MODELS.html, interact-.pep.xml, interact-.pep.xml.index, interact-.prot.MODELS.html, interact-.prot.xml" files: 

**runCometQ --wocomet --single** ***.mzXML**

And this command was used to generate an interact-COMBINED.prot.xml file:

**runCometQ --wocomet --all** ***.mzXML**

These outputs (stored in the same directories as the input files-see above) opened a separate protein- or peptide-prophet web page for each sample with the suffix: .xml. For each sample, the results give the the probability of a good match with proteins and peptides predicted to occur from the *M. capitata* genome, and give homologous scores for comparisons with decoys. They also give the numbers of unique proteins and peptides. 

A list of peptide and protein counts for the samples can be found here:

*Documents/GitHub/Jeremy-coral/data/protein\ counts.xlsx*



# Abacus

Abacus was run on all coral samples to extract adjusted spectral counts to be used to visualize and quantify protein data using R between different experimental groups (e.g. inner, outer, bleached and non-bleached).

Because Abacus attempts to grab all files in a directory, all interact-.pep.xml, interact-.prot.xml and the interact-COMBINED.prot.xml were comliled into this single directory:

*nexus1 /net/nunn/vol1/brook/2018_March_9_JPG_corals/All_coral_samples*

The Abacus parameters were also adjusted and added to the same directory, here:

*nexus1 /net/nunn/vol1/brook/2018_March_9_JPG_corals/All_coral_samples/Abacus_parameters.txt*

Then, the following command was used to run Abacus:

**java -Xmx16g -jar /net/pr/vol1/ProteomicsResource/bin/abacus.jar -p Abacus_parameters.txt**

The output was downloaded from the UW genome cluster (not sure how- need to ask Emma) and can be found here:

*~/Desktop/JPG Lab/Proteomics March 2018/ABACUS_output.tsv*

A .csv was also generated (not sure how again) for use in R, and can be found here:

*~/Desktop/JPG Lab/Proteomics March 2018/JPG_corals_R_project/Abacus_output.csv*


#NMDS plots in R

To visually compare differences in protein expression between coral treatments (bleach, non-bleached and inner, outer tissue) NMDS plots were generated in R. The code used was provided by Emma Timmins-Schifman. It essentially does a cluster analysis based on similarity of protein content in each sample based on these metrics:

- number of unique peptides: NUMPEPSUNIQ
- spectral count: NUMSPECSTOT
- adjusted spectral count: ADJNSAF

An initial set of analyses were run to QC some prep issues (see above). The r scripts, .csv files, and figures can all be found here: 

*~/Documents/GitHub/Jeremy-coral/scripts/R/R_scripts_Abacus_analysis*
*~/Documents/GitHub/Jeremy-coral/scripts/R/csv_files_Abacus_analysis*
*~/Documents/GitHub/Jeremy-coral/scripts/R/figures_Abacus_analysis*

From these analysis, I was able to distill the data down to the best data, deciding to remove the duplicates with lower protein counts, the samples where the column degraded and keep the rerun samples. Also the incorrectly desalted samples seem OK. Sample 69B looks like an outlier but is kept with the newly named *all good samples* for now.

From these *all good samples* data, I am starting to look for general differences between bleached and non-bleached, and inner and outer samples. The R project for these analysis can be found here:

*~/Documents/GitHub/Jeremy-coral/scripts/R/R_project_Abacus_analysis*

In that directory is the R project, titled *R_project_Abacus_analysis* including the .csv files for all bleached, all non-bleached, all inner, all outer, and the original Abacus output.

The figures were output here:

*~/Documents/GitHub/Jeremy-coral/scripts/R/figures_Abacus_analysis*

And here there are:  

!(bleached samples)




















