
print("Hello")

library(reshape2)
library(rjson)

data <- read.table("kolorob-categories-by-area.csv")

melt(data)

toJSON(data)
