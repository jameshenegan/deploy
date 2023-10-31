#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/crbsh_digitspan.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$digfor)="WAIS-R Digits Forward Traditional score"
label(data$digformax)="WAIS-R Digits Forward Maximum score"
label(data$digbac)="WAIS-R Digits Backward Traditional score"
label(data$digbacmax)="WAIS-R Digits Backward Maximum score"
