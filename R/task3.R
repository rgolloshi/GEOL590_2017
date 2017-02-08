
length.five <- c(1:5)
attr(length.five, "celltype") <- "Human Melanoma"
attr(length.five, "sampletype") <- "Cancer Cells"
str(length.five)



## Read the .csv files and create an object (dataframe) and skip 33rd row ###
plate_read <- read.csv("2016_10_11_plate_reader.csv", skip = 33)
## To find out the type of object created##
str(plate_read)
## Install tidyverse##
install.packages("tidyverse")
library(tidyverse)
plate_read1 <- read_csv("2016_10_11_plate_reader.csv")
## the difference between read.csv and read_csv is that the latest created a new column X3


##Subsetting Task
nrow(mtcars)
length(mtcars)
ncol(mtcars)
mtcars.cyl <- mtcars$cyl
mtcars_df <- data.frame(mtcars)
mtcars_weight <- subset(mtcars_df, wt < 3.0 | wt > 4.0)
mtcars_mpgwt <- mtcars_df[c("mpg", "wt")]
cars.median <- median(mtcars_df$mpg)
cars.md <- mtcars_df[ which(mtcars_df$mpg == cars.median),]

mtcars[mtcars$cyl == 4, ] # Trying to create a data frame of cars with 4 cylinders only
mtcars[-1, 0:4, ]
mtcars[mtcars$cyl <= 5,]
mtcars_cyl <- subset(mtcars, cyl == 4 | cyl == 6) # The | is an 'or' operator - you want a data frame of cars with 4 OR 6 cylinder engines
