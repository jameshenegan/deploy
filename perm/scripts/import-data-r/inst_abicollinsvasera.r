#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/inst_abicollinsvasera.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$instrument)="Instrumentation Device used to take measurement"
label(data$aid)="Auto-incrementing ID from Instrumentation Device"
label(data$r_abi)="Right ankle-brachial index"
label(data$l_abi)="Left ankle-brachial index"
label(data$hr)="Heart Rate"
label(data$rb_sys)="Right brachial Systolic Blood Pressure "
label(data$rb_mean)="Right brachial Mean Arterial Pressure"
label(data$rb_dia)="Right brachial Diastolic Blood Pressure"
label(data$lb_sys)="Left brachial Systolic Blood Pressure "
label(data$lb_mean)="Left brachial Mean Arterial Pressure"
label(data$lb_dia)="Left brachial Diastolic Blood Pressure"
label(data$ra_sys)="Right ankle Systolic Blood Pressure "
label(data$ra_mean)="Right ankle Mean Arterial Pressure"
label(data$ra_dia)="Right ankle Diastolic Blood Pressure"
label(data$la_sys)="Left ankle Systolic Blood Pressure "
label(data$la_mean)="Left ankle Mean Arterial Pressure"
label(data$la_dia)="Left ankle Diastolic Blood Pressure"
