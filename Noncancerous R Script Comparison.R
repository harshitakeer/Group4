setwd("C:/Users/isaac/OneDrive/Desktop/Bioinformatics in CRC")
PcopriNDdf <- read_excel("PcopriND.xlsx")
BlongumNDdf <- read_excel("BlongumND.xlsx")
Pcopriunique <- PcopriNDdf[!duplicated(PcopriNDdf),]
Blongumunique <- BlongumNDdf[!duplicated(BlongumNDdf),]
merge(Pcopriunique, Blongumunique)
Tsanguinisunique <- Tsanguinisproteinnames[!duplicated(Tsanguinisproteinnames),]
merge(Tsanguinisunique, merge(Pcopriunique, Blongumunique))
Pstercoreadf <- read_excel("Pstercorea.xlsx")
Pstercoreaunique<- Pstercoreadf[!duplicated(Pstercoreadf),]
merge(Pstercoreaunique, merge(Tsanguinisunique, merge(Pcopriunique, Blongumunique)) )
Aaeriphiladf <- read_excel("Aaeriphila.xlsx")
Aaeriphilaunique <- Aaeriphiladf[!duplicated(Aaeriphiladf),]
merge(Aaeriphilaunique, merge(Pstercoreaunique, merge(Tsanguinisunique, merge(Pcopriunique, Blongumunique)) ))
Ahadrusdf <- read_excel("Ahadrus.xlsx")
Ahadrusunique <- Ahadrusdf[!duplicated(Ahadrusdf),]
merge(Ahadrusunique, merge(Aaeriphilaunique, merge(Pstercoreaunique, merge(Tsanguinisunique, merge(Pcopriunique, Blongumunique)) )))
merge6 <- merge(Ahadrusunique, merge(Aaeriphilaunique, merge(Pstercoreaunique, merge(Tsanguinisunique, merge(Pcopriunique, Blongumunique)) )))
Badolescentisdf <- read_excel("Badolescentis.xlsx")
Badolescentisunique <- Badolescentisdf[!duplicated(Badolescentisdf),]
merge(Badolescentisunique, merge6)
Dlongicatenadf <- read_excel("Dlongicatena.xlsx")
Dlongicatenaunique <- Dlongicatenadf[!duplicated(Dlongicatenadf),]
merge(Dlongicatenaunique, merge(Badolescentisunique, merge6))
Ahalliidf <- read_excel("Ahallii.xlsx")
Ahalliiunique <- Ahalliidf[!duplicated(Ahalliidf),]
merge(Ahalliiunique, merge(Dlongicatenaunique, merge(Badolescentisunique, merge6)))
Eventriosum <- read_excel("Eventriosum.xlsx")
Eventriosumunique <- Eventriosum[!duplicated(Eventriosum),]
merge(Eventriosumunique,merge(Ahalliiunique, merge(Dlongicatenaunique, merge(Badolescentisunique, merge6))))
Rcag471unique <- read_excel("Rcag471.xlsx")[!duplicated(read_excel("Rcag471.xlsx")),]
merge(Rcag471unique, merge(Eventriosumunique,merge(Ahalliiunique, merge(Dlongicatenaunique, merge(Badolescentisunique, merge6)))))
Dcag357 <- read_excel("Dcag357.xlsx")[!duplicated(read_excel("Dcag357.xlsx")),]
merge(Dcag357, merge(Rcag471unique, merge(Eventriosumunique,merge(Ahalliiunique, merge(Dlongicatenaunique, merge(Badolescentisunique, merge6))))))
as_tibble(merge(Dcag357, merge(Rcag471unique, merge(Eventriosumunique,merge(Ahalliiunique, merge(Dlongicatenaunique, merge(Badolescentisunique, merge6)))))))
NCmerge2 <- as_tibble(merge(Dcag357, merge(Rcag471unique, merge(Eventriosumunique,merge(Ahalliiunique, merge(Dlongicatenaunique, merge(Badolescentisunique, merge6)))))))
write.table(NCmerge2, file = "C:/Users/isaac/OneDrive/Desktop/Bioinformatics in CRC//NCmerge2.csv", row.names=FALSE)