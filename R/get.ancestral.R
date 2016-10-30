## Function to extract ancestral alleles from 1000G data
## Input is .info file from pegas

get.ancestral <-function(dat.info){
  test3 <-dat.info$INFO # Extract INFO from data
  test3.spl <-sapply(test3, strsplit,";") # split into columns
  names(test3.spl)=dat.info$ID # rename with snp ID's
  test3.all <-do.call(rbind,test3.spl) # convert to matrix
  test4 <-test3.all[,1] # extract first column
  has.aa <-which(substr(test4,1,2)=="AA") # find those with AA=
  test4.aa <-test4[has.aa] # remove SNPs with missing AA
  dat.anc <-gsub("|||",";",test4.aa,fixed=TRUE) # character replacement
  dat.anc <-sapply(dat.anc,substr,4,4) # Select last position
  dat.anc
}