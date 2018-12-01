Mcapdata <- read.csv("Abacus_output_Mcap_allgoodsamples.csv",header = T,row.names = 1)


library(dplyr)
Mcap.pepsuniq<-select(Mcapdata, contains('NUMPEPSUNIQ')) #subset of unique peptides 

Mcap.adjnsaf<-select(Mcapdata, contains('ADJNSAF')) #subset of adjnsaf
Mcap.spc<-select(Mcapdata, contains('NUMSPECSTOT')) 
Mcap.spc2<-Mcap.spc[-1] #gets rid of first column(combined spec counts from all samples)

#keep only proteins with at least 2 unique peptides
nsaf.uniqpeps<-cbind(Mcap.adjnsaf, Mcap.pepsuniq$ALL_NUMPEPSUNIQ) #combines columns with total number of unique peps with adjnsaf)
Mcap.2peps<-subset(nsaf.uniqpeps, select=X2018_MARCH_12_CORAL_JAA_01_ADJNSAF:X2018_MARCH_22_JPG_CORAL_19_ADJNSAF, nsaf.uniqpeps[,41]>1) #filters out 1 count peps

Mcap.coral.prot<-subset(Mcap.2peps, grepl(paste('lcl', collapse='|'), rownames(Mcap.2peps)))


#make file for qspec (web base tool to find differential proteins)
#spc.uniqpeps<-cbind(rpom.spc2, rpom.pepsuniq$ALL_NUMPEPSUNIQ) 
#rpom.spc2peps<-subset(spc.uniqpeps, select=X2013_JULY_15_FAUX_23_NUMSPECSTOT:X2013_JULY_15_FAUX_37_NUMSPECSTOT, spc.uniqpeps[,13]>1)
#prot.len<-subset(abacus, select=PROTLEN)
#rpom.qspec<-merge(x=rpom.spc2peps, y=prot.len, by='row.names', all.x=T)
#write.csv(rpom.qspec, 'spec counts for qspec.csv')

#Match sample names to MS sample IDs
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_01_ADJNSAF']<-'41BO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_02_ADJNSAF']<-'74B2O'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_03_ADJNSAF']<-'65BO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_04_ADJNSAF']<-'26NBO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_05_ADJNSAF']<-'32NBO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_06_ADJNSAF']<-'69NBO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_07_ADJNSAF']<-'65NBO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_08_ADJNSAF']<-'74BO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_09_ADJNSAF']<-'21BO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_10_ADJNSAF']<-'13BO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_11_ADJNSAF']<-'10BO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_12_ADJNSAF']<-'74NBO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_13_ADJNSAF']<-'21NBO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_14_ADJNSAF']<-'13NBO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_15_ADJNSAF']<-'69BO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_16_ADJNSAF']<-'66BO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_17_ADJNSAF']<-'26BO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_18_ADJNSAF']<-'65NB2O'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_19_ADJNSAF']<-'32BO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_20_ADJNSAF']<-'41NBO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_21_ADJNSAF']<-'10NBO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_22_ADJNSAF']<-'66NBO'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_23_ADJNSAF']<-'69NBI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_24_ADJNSAF']<-'13BI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_25_ADJNSAF']<-'41NBI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_26_ADJNSAF']<-'66BI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_27_ADJNSAF']<-'26NBI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_28_ADJNSAF']<-'74B2I'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_29_ADJNSAF']<-'66NBI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_30_ADJNSAF']<-'41BI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_31_ADJNSAF']<-'21BI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_32_ADJNSAF']<-'74BI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_33_ADJNSAF']<-'10NBI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_34_ADJNSAF']<-'26BI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_35_ADJNSAF']<-'13NBI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_36_ADJNSAF']<-'32NBI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_37_ADJNSAF']<-'21NBI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_38_ADJNSAF']<-'65NB2I'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_39_ADJNSAF']<-'65NBI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_40_ADJNSAF']<-'32BI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_41_ADJNSAF']<-'74NBI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_42_ADJNSAF']<-'65BI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_43_ADJNSAF']<-'69BI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_44_ADJNSAF']<-'10BI'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_12_CORAL_JAA_45_ADJNSAF']<-'*'

names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_22_JPG_CORAL_05_ADJNSAF']<-'10BI*'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_22_JPG_CORAL_06_ADJNSAF']<-'69BI*'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_22_JPG_CORAL_07_ADJNSAF']<-'65BI*'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_22_JPG_CORAL_08_ADJNSAF']<-'74NBI*'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_22_JPG_CORAL_09_ADJNSAF']<-'32BI*'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_22_JPG_CORAL_10_ADJNSAF']<-'65NBI*'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_22_JPG_CORAL_11_ADJNSAF']<-'65NB2I*'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_22_JPG_CORAL_14_ADJNSAF']<-'21NBI*'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_22_JPG_CORAL_15_ADJNSAF']<-'32NBI*'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_22_JPG_CORAL_16_ADJNSAF']<-'13NBI*'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_22_JPG_CORAL_17_ADJNSAF']<-'26BI*'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_22_JPG_CORAL_18_ADJNSAF']<-'10NBI*'
names(Mcap.coral.prot)[names(Mcap.coral.prot)=='X2018_MARCH_22_JPG_CORAL_19_ADJNSAF']<-'74BI*'






head(Mcap.2peps)


source(file = "biostats.r")


library(vegan)

Mcap.coral.prot.t<-t(Mcap.coral.prot) # use Mcap.coral.prot

Mcap.tra<-(Mcap.coral.prot.t+1) #log transforms data
Mcap.tra<-data.trans(Mcap.tra, method='log', plot=F)


Mcap.nmds<-metaMDS(Mcap.tra, distance='bray', k=2, trymax=100, autotransform=F)

ordiplot(Mcap.nmds, choices=c(1,2), type='text', display='sites', cex=0.5, xlim = c(-.2,.2),
         ylim= c(-.1,.1), main = "ALL good samples")# end here makes rough plot- look for outliers(and remove),(normally would check replicates here)

library(MASS)

plot(Mcap.nmds,type = 'n')
text(Mcap.nmds,labels=names(Mcap.coral.prot)) #replotting data

vec.prot<-envfit(Mcap.nmds$points, Mcap.tra, perm=1000) #calculate eigenvectors

ordiplot(Mcap.nmds, choices = c(1, 2), type="text", display = "sites",
         xlab="Axis 1", ylab="Axis 2", xlim = c(-0.2, 0.2), ylim = c(-0.1, 0.15),
         main = "all samples") #plot again
plot(vec.prot, p.max=.001, col="blue") #plot eigenvectors 


#only significant pvalues
#shortcutting vec.prot$vectors
A <- as.list(vec.prot$vectors)
#creating the dataframe
pvals<-as.data.frame(A$pvals)
arrows<-as.data.frame(A$arrows)
C<-cbind(arrows, pvals)
names(C)

sig.prots001 <- subset(C, A$pvals < 0.001)
names(sig.prots001)
write.csv(sig.prots001, file = "all_samples_sig_prots001") # save as text csv

sig.prots01 <- subset(C, A$pvals < 0.01)
names(sig.prots01)
write.csv(sig.prots01, file = "all_samples_sig_prots01")

fig1<-ordiplot(Mcap.nmds, choices=c(1,2), type='none', display='sites', main = "All samples by color")
fig1

col.vec  <-c("yellow","yellow","red","red","red","red","yellow","yellow","yellow","yellow","red","red","red",
             "yellow","yellow","yellow","yellow","red","red","red","blue","orange","blue","orange","blue",
             "blue","orange","orange","orange","orange","orange","blue","orange","blue","blue","blue","blue",
             "orange","blue","orange")



points(fig1, 'sites', col='grey76', bg=col.vec, pch=21, cex=2)

legend(0.15, 0.2, col=c('yellow', 'red', 'orange', 'blue'), pch=19, bty = "n",
       legend=c('outer bleached', 'outer non-bleached', 'inner bleached', 'inner non-bleached'))
