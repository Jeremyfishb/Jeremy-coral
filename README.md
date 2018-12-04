# Jeremy-coral

## Project info
This is my repository for Bioinformatics class where I will analyze proteomics data from a coral bleaching project.

For this project, I will compare the relative protein expression level, and types of proteins expressed, between coral tissue and coral skeletal material in bleached and non-bleached corals. 

## Repository info
This repository includes files for data (which may actually be stored in the genome science cluster), analyses and scripts. Analyses contain detailed methods and steps as well as some results of analyses (e.g. figures and conclusions with regards to moving forward) and scripts contain the commands used to organize, examine and analyze the protein data. The analyses and scripts files may also contain sub-folders for different programs used to run programs and scripts (e.g. R, Jupyter, Putty, etc.).

## Plans for weeks 4 and 5

This week (week 4), I hope to meet with one of my collaborators, Brook Nunn, to figure out how to access my data from the genome science cluster. It has been moved from it's previous directory to one that I do not have access to. I will also discuss with Brook what steps to take next, but here is what I envision:

Get access to a copy of the original data set. I will re-run .raw files with Comet to convert them to .pep.xml files. Then I will analyze those files using Peptideprophet and Proteinprophet. From there, I should be able to do some quality checks of the data and download spreadsheets of peptide and protein data. After that, I am not yet sure what needs to be done and will discuss this with Brook.

## Week 5 (draft of project)

Well, I was told not to re-run any programs as Brook's data storage is becoming too full. Instead, for the last couple weeks I have reorganized my repo and then ran some R analyses with Abacus data to determine which comparisons between coral treatments seem the most warranted. I was also able to QC and distill my data down to what will be used for the ultimate analyses.
 

For a draft of my project please see the readme.md file in the analysis directory [link](https://github.com/Jeremyfishb/Jeremy-coral/blob/master/analysis/Readme.md). In short, here is what I produced:


![](https://github.com/Jeremyfishb/Jeremy-coral/blob/master/scripts/R/figures_Abacus_analysis/all_good_samples.png)

![](https://github.com/Jeremyfishb/Jeremy-coral/blob/master/scripts/R/figures_Abacus_analysis/bleached_samples.png)

![](https://github.com/Jeremyfishb/Jeremy-coral/blob/master/scripts/R/figures_Abacus_analysis/non_bleached_samples.png)

![](https://github.com/Jeremyfishb/Jeremy-coral/blob/master/scripts/R/figures_Abacus_analysis/outer_samples.png)

![](https://github.com/Jeremyfishb/Jeremy-coral/blob/master/scripts/R/figures_Abacus_analysis/inner_samples.png)

All the plots look good with the exception of *inner samples*. For those inner data, the r function metaMDS returned this:

*Warning message:
In metaMDS(Mcap.tra, distance = "bray", k = 2, trymax = 100, autotransform = F) :
  stress is (nearly) zero: you may have insufficient data*

I am not sure what this means so will talk to Brook about it. You can also see from the figure that all the samples (except for one outlier) are all plotted at the same spot. Interesting??


## Plans for completion

So, where I am at now is that I think I will be concentrating my efforts on looking at protein differences between inner and outer coral tissue.

The next steps will be to generate eigenvectors on nmds plots to see which proteins are driving the differences between tissue groups. I have some rudimentary r code to do this but suspect it will take a few days to figure out how to get it working properly. 

There is also a program *Qspec* that I need to learn how to use that should be able to compute statistical differences in proteins expressed between the groups. I will talk to Brook and Emma about this.

After those proteins have been identified, their functions will be identified (if possible) to begin to understand the biological differences and molecular pathways involved with each tissue type. I'm not quite sure how to go about that, but I suspect it will involve a lot of literature searching. A pilot study looking at similar data from our samples suggests we might be able to determine how corals lay down their skeletal matrix at the molecular level, very exciting!
 


# The End

# Question

# What I did

# Visualization


