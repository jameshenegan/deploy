#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/cog_legacydement.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$dx)="dx"
label(data$dx_type1)="dx_type1"
label(data$dx_type2)="dx_type2"
label(data$donset)="donset"
label(data$dodx)="dodx"
label(data$nonautopsy)="nonautopsy"
