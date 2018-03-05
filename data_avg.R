install.packages("plyr")
library(plyr)

y = ddply(DataSet, "Sex", transform, Grade.Average=mean(Grade))
y
write.table(y,"Sorted_Average")
