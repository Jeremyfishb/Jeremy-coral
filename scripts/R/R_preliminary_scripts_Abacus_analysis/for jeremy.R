



library(dplyr)
rpom.pepsuniq<-select(abacus, contains('NUMPEPSUNIQ'))
rpom.adjnsaf<-select(abacus, contains('ADJNSAF'))
rpom.spc<-select(abacus, contains('NUMSPECSTOT'))
rpom.spc2<-rpom.spc[-1]

#keep only proteins with at least 2 unique peptides
nsaf.uniqpeps<-cbind(rpom.adjnsaf, rpom.pepsuniq$ALL_NUMPEPSUNIQ)
rpom.2peps<-subset(nsaf.uniqpeps, select=X2013_JULY_15_FAUX_23_ADJNSAF:X2013_JULY_15_FAUX_37_ADJNSAF, nsaf.uniqpeps[,13]>1)

#make file for qspec
spc.uniqpeps<-cbind(rpom.spc2, rpom.pepsuniq$ALL_NUMPEPSUNIQ)
rpom.spc2peps<-subset(spc.uniqpeps, select=X2013_JULY_15_FAUX_23_NUMSPECSTOT:X2013_JULY_15_FAUX_37_NUMSPECSTOT, spc.uniqpeps[,13]>1)
prot.len<-subset(abacus, select=PROTLEN)
rpom.qspec<-merge(x=rpom.spc2peps, y=prot.len, by='row.names', all.x=T)
write.csv(rpom.qspec, 'spec counts for qspec.csv')

names(rpom.2peps)[names(rpom.2peps)=='X2013_JULY_15_FAUX_23_ADJNSAF']<-'TEE.1'