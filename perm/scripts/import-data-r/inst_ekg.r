#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/inst_ekg.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$vent)="Heart Rate"
label(data$pr)="PR Interval time (ms)"
label(data$qrs)="QRS Complex time (ms)"
label(data$qt)="QT Interval time (ms)"
label(data$qtc)="QT Interval time (ms) corrected for heart rate"
label(data$pacemaker)="Pacemaker"
label(data$dig_version)="dig_version"
