acc <- read.csv("/home/amitabh/Desktop/amitds/AISHE/2011_12_accreditation.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
colnames(acc)
#naac1 <- acc[acc$accreditation_body== 'NAAC' | acc$score<=10.0,]
#print(naac1)
naac2 <- subset(acc,acc$accreditation_body =='NAAC' & acc$score <= 10.0 ,)
naac3 <- naac2[sample(1:nrow(naac2),200,replace=TRUE),]
write.csv(naac3, file = "/home/amitabh/Desktop/amitds/naac1.csv")
