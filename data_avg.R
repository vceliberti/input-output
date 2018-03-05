install.packages("plyr")
library(plyr)

x = read.table(file.choose(DataSet),header = TRUE,sep = ",")
x
y = ddply(DataSet, "Sex", transform, Grade.Average=mean(Grade))
y
write.table(y,"Sorted_Average")

write.table(y,"Sorted_Average", sep = ",")

newx = subset(x,grepl("[iI]",x$Name))
newx
write.table(newx,"DataSubSet",sep = ",")
                 