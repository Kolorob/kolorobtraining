
#library(reshape2)
library(rjson)
data <- read.table("kolorob-categories-by-area.csv", header=TRUE, sep =",")
json <- toJSON(data)
write(json, "kolorob-categories-by-area.json")
