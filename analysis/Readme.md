Here are the command line entries, r scripts and other codes used to analyze the coral proteomics data.

# Comet search

A comet search was run on all MS generated .raw files. The comet search was run using Putty command line via the UWPR cluster in the UW department of Genome Sciences. The comet searches were run three times: once for inner matrix samples, once for outer matrix samples and once for Rerun samples (the Reruns were reran because the column started to break down halfway through MS analysis, so we replaced it and reran samples that were not looking well). 

The comet parameters can be found here:

nexus1 /net/nunn/vol1/brook/2018_March_9_JPG_corals/comet.params

They are the same parameters used for all three searches.

The Montipora genome data base used for the searches can be found here (directory is also noted in the comet.params file)

nexus1 /net/gs/vol4/shared/nunnlab/search/emmats/databases/Montiporacapitata.contam.fasta

To convert the .raw files to .mzxml and .pep.xml files and run the comet search, the following directories were opened and these commands were used:

outer matrix:
nexus1 /net/nunn/vol1/jeremy/2018_March_9_JPG_corals/coral_outer

convert.sh *.RAW
runCometQ *.RAW

Inner matrix:
nexus1 /net/nunn/vol1/brook/2018_March_9_JPG_corals/coral_inner_matrix

convert.sh *.RAW
runCometQ *.RAW

Rerun inner matrix:
nexus1 /net/nunn/vol1/brook/2018_March_9_JPG_corals/coral_inner_matrix/Rerun_SOM_samples

convert.sh *.RAW
runCometQ *.RAW


# Peptideprophet and Proteinprophet

Peptide- and Protein-prophet were run to validate the quality of the peptides and proteins identified in Comet searches. To run the prophets, the following directories were opened:

outer matrix .mzXML and .pep.xml files cannot be found at this time

inner matrix .mzXML and .pep.xml files are found here:
nexus1 /net/nunn/vol1/brook/2018_March_9_JPG_corals/coral_inner_matrix

Rerun inner matrix .mzXML and .pep.xml files cannot be found at this time

Then this commands was used to generate interact-.pep-MODELS.html, interact-.pep.xml, interact-.pep.xml.index, interact-.prot.MODELS.html, interact-.prot.xml" files: 

runCometQ --wocomet --single *.mzXML\

And this command was used to generate an interact-COMBINED.prot.xml file:

runCometQ --wocomet --all *.mzXML

Peptide and protein



# Abacus









