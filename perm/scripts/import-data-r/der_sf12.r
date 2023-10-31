#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_sf12.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$sf12_pcscore)="Physical health composite score"
label(data$sf12_mcscore)="Mental health composite score"
label(data$nmisssf)="Number of missing components in SF12"
