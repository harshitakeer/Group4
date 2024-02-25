NonCancerousUnique <- NonCancerousPathways[c()]
#I used the EC table instead of the pathways one
for (i in 1:nrow(NonCancerousPathways)){
  if (!(NonCancerousPathways$EC.Number[i] %in% CancerousPathways$EC.Number)){
    NonCancerousUnique <- rbind(NonCancerousUnique, NonCancerousPathways[i,])
    }
}
CancerousUnique <- CancerousPathways[c()]
for (i in 1:nrow(CancerousPathways)){
  if (!(CancerousPathways$EC.Number[i] %in% NonCancerousPathways$EC.Number)){
    CancerousUnique <- rbind(CancerousUnique, CancerousPathways[i,])
  }
}