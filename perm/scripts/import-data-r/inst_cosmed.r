#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/inst_cosmed.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$test_number)="Test Number"
label(data$study_cosmed)="Study"
label(data$aid)="Auto-incrementing ID"
label(data$notes_cosmed)=""
label(data$clinic_test)="Clinic Test"
label(data$weight_kg_cosmed)=""
label(data$sex_cosmed)=""
label(data$age_cosmed)=""
label(data$height_cm_cosmed)=""
label(data$bsa___m2)="Body Surface Area (meters squared)"
label(data$amr___kcal_day)="Active Metabolic Rate (kilo-calories per day)"
label(data$barometric_press___mmhg)="Barometric Pressure (millimeters mercury)"
label(data$bmi_kg_m2_cosmed)=""
label(data$btps_exp)="BTPS exp"
label(data$btps_insp)="BTPS insp"
label(data$duration___hhmmss)="Test Duration"
label(data$hr_max___bpm)="Maximum Heart Rate (beats per minute)"
label(data$humidity_flowmpct)=""
label(data$humiditypct)=""
label(data$n_of_steps)=""
label(data$stpd)=""
label(data$temperature___degrees_c)=""
label(data$temp_flowm___degrees_c)=""
label(data$un___g_day)=""
label(data$vd___ml)=""
