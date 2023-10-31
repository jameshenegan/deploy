#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/nutr_blsaffqmds.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$bkid1)="Book ID (for paper version)"
label(data$id_seqn)="Sequence id (for REDcap imported)"
label(data$f_kcal)="Energy (kcal) (food)"
label(data$mds_veg)="Mediterranean Diet Score: Vegetable Intake"
label(data$mds_fruit)="Mediterranean Diet Score: Fruit Intake"
label(data$mds_bean)="Mediterranean Diet Score: Bean Intake"
label(data$mds_fish)="Mediterranean Diet Score: Fish Intake"
label(data$mutosfa)="Ratio of Mono-Unsaturated to Saturated Fat"
label(data$f_grain_who)="Whole Grain Intake Following WHO Guidelines"
label(data$mds_meat)="Mediterranean Diet Score: Meat Intake"
label(data$mds_dairy)="Mediterranean Diet Score: Dairy Intake"
label(data$f_alc)="Alcohol Intake Following Mediterranean Diet Guidelines"
label(data$mdscat_veg)="Mediterranean Diet Score Category: Vegetable Intake"
label(data$mdscat_fruit)="Mediterranean Diet Score Category: Fruit Intake"
label(data$mdscat_beans)="Mediterranean Diet Score Category: Bean Intake"
label(data$mdscat_fish)="Mediterranean Diet Score Category: Fish Intake"
label(data$mdscat_mtosfa)="Mediterranean Diet Score Category: Mono-Unsaturated to Saturated Fat Ratio"
label(data$mdscat_wg)="Mediterranean Diet Score Category: Whole Grains Intake"
label(data$mdscat_meat)="Mediterranean Diet Score Category: Meat Intake"
label(data$mdscat_dairy)="Mediterranean Diet Score Category: Dairy Intake"
label(data$medi_score)="Total Mediterranean Diet Score"
label(data$medi_score3c)="Three Component Total Mediterranean Diet Score"
