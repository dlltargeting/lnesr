######################################################################
###############This function is used for obtaining the Natural Logarithmic transformed 
###############soil Enzyme Stoichiometry Ratios of soil 
#############carbon, nitrogen and phosphorus acquisition enzymes.
###############This function is based on the following literature.
##############Moorhead, D. L., Sinsabaugh, R. L., Hill, B. H. & Weintraub, M. N. 
##############Vector analysis of ecoenzyme activities reveal constraints on coupled C, N and P dynamics. 
###########################Soil Biology and Biochemistry,2016,93,1-7, doi:10.1016/j.soilbio.2015.10.019.
###this R function is named lnesr
###its R code is made by  Ding Leilei (Guizhou Institution of Prataculture, Guizhou Academy of Agricultural Sciences, Guizhou, China)
###for researchers to use.
##########################
###*****
###*****
###*****
lnesr<-function(data){
  ec<-data$ec
  en<-data$en1+data$en2
  ep<-data$ep
  ECN<-log(ec)/log(en)
  ECP<-log(ec)/log(ep)
  ENP<-log(en)/log(ep)
  results<-as.data.frame(cbind(ECN,ECP,ENP))
  return(results)
}
###***** 
###*****
###*****
#####################  

