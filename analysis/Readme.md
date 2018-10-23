Here are the command line entries, r scripts and other codes used to analyze the coral proteomics data.

# Comet search

A comet search was run on all MS generated .raw files. The comet search was run using Putty command line via the UWPR cluster in the UW department of Genome Sciences. The comet searches were run three times: once for inner matrix samples, once for outer matrix samples and once for Rerun samples (the Reruns were reran because the column started to break down halfway through MS analysis, so we replaced it and reran samples that were not looking well). 

The comet parameters can be found here:

nexus1 /net/nunn/vol1/brook/2018_March_9_JPG_corals/comet.params

They are the same parameters used for all three searches.

The Montipora genome data base used for the searches can be found here (directory is also noted in the comet.params file)

nexus1 /net/gs/vol4/shared/nunnlab/search/emmats/databases/Montiporacapitata.contam.fasta

To convert the .raw files to .mzxml files and run the comet search, the following directories were opened and these commands were used:

outer matrix:
nexus1 /net/nunn/vol1/jeremy/2018_March_9_JPG_corals/coral_outer

runCometQ *.RAW

Inner matrix:
nexus1 /net/nunn/vol1/brook/2018_March_9_JPG_corals/coral_inner_matrix

runCometQ *.RAW

Rerun inner matrix:
nexus1 /net/nunn/vol1/brook/2018_March_9_JPG_corals/coral_inner_matrix/Rerun_SOM_samples

runCometQ *.RAW







