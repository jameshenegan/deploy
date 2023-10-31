#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/inst_ftap.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$dom_hand)="Dominant Hand"
label(data$error)="Error Field"
label(data$hand)="Hand"
label(data$loc)=""
label(data$mn_cnt)="Mean Count"
label(data$mn_time)="Mean Time"
label(data$ntrial)="Number of Trials"
label(data$sd_time)="Standared Deviation of Time"
label(data$type)=""
