#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_physicalperformance.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$r6mtime)="6 meter walk time (sec)"
label(data$rapidgaitspeed)="Rapid gait speed (m/s)"
label(data$gaitspeed)="Usual gait speed (m/s)"
label(data$sppb_gs)="SPPB - gait speed score"
label(data$sppb_cs)="SPPB - chair stand score"
label(data$sppb_sb)="SPPB - standing balance score"
label(data$sppb)="SPPB - score"
label(data$gs_ratio)="Expanded SPPB - Gait Speed Ratio"
label(data$cs5pace)="SPPB - 5 chair stand speed"
label(data$cs10pace)="SPPB - 10 chair stand speed"
label(data$cs_ratio)="Expanded SPPB - Chair Stand Ratio"
label(data$nwalk)="Successfully completed narrow walk"
label(data$nwalktime)="Narrow walk time in seconds"
label(data$nwspeed)="Narrow walk speed (m/s)"
label(data$nw_ratio)="Expanded SPPB - Narrow Walk Ratio"
label(data$ststime)="Semi-tandem stand time in seconds"
label(data$ftstime)="Full-tandem time in seconds"
label(data$slstime)="Single leg stand time in seconds"
label(data$totsbtime)="Total standing balance time (seconds)"
label(data$sb_ratio)="Expanded SPPB - Standing Balance Ratio"
label(data$habcppb)="Expanded SPPB - score"

#Create new variables for factors
data$nwalk.factor = factor(data$nwalk, levels = c("1","0"))
levels(data$nwalk.factor) = c("Yes","No")

