#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/crbsh_blsaneuropsychteleform.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$cog02)="PMA vocabulary"
label(data$cog04)="California Verbal Learning - Part 1"
label(data$cog07)="Purdue Pegboard"
label(data$cog09)="California Verbal Learning - Part 2"
label(data$cog10)="Verbal Fluency - Letter F"
label(data$cog11)="Verbal Fluency - Letter A"
label(data$cog12)="Verbal Fluency - Letter S"
label(data$cog13)="Verbal Fluency - Fruit"
label(data$cog14)="Verbal Fluency - Animals"
label(data$cog15)="Verbal Fluency - Vegetables"
label(data$cog16)="WAIS Digit Symbol Substitution"
label(data$cog17)="WRAT"
label(data$cog18)="WAIS-R Similarities"
