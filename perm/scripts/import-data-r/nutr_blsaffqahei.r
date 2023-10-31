#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/nutr_blsaffqahei.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$f_kcal)="Energy (kcal) (food)"
label(data$s_veg)="Serving of Vegetables"
label(data$s_fruit)="Serving of Fruit"
label(data$f_grain_who)="Whole Grain Intake Following WHO Guidelines"
label(data$s_ssbfj)="Serving of Sugar-Sweetened Beverages and Fruit Juices"
label(data$s_nutbean)="Serving of Nuts and Beans"
label(data$s_red_proc_meat)="Serving of Red and Processed Meat"
label(data$tfat_pctkcal)="Trans Fat as Percentage of Total Calories"
label(data$epa_dha)="EPA and DHA Omega-3 Fatty Acids Intake"
label(data$pufa_pctkcal)="Polyunsaturated Fat as Percentage of Total Calories"
label(data$f_na)="Sodium Intake"
label(data$s_alc_dk)="Serving of Alcoholic Drinks"
label(data$ahei_veg)="AHEI Score for Vegetable Intake"
label(data$ahei_fruit)="AHEI Score for Fruit Intake"
label(data$ahei_wg)="AHEI Score for Whole Grain Intake"
label(data$ahei_ssbfj)="AHEI Score for Sugar-Sweetened Beverages and Fruit Juices Intake"
label(data$ahei_nutbean)="AHEI Score for Nuts and Beans Intake"
label(data$ahei_redprocmeat)="AHEI Score for Red and Processed Meat Intake"
label(data$ahei_tfat)="AHEI Score for Trans Fat Intake"
label(data$ahei_epadha)="AHEI Score for EPA and DHA Omega-3 Fatty Acids Intake"
label(data$ahei_pufa)="AHEI Score for Polyunsaturated Fat Intake"
label(data$ahei_na)="AHEI Score for Sodium Intake"
label(data$ahei_alc)="AHEI Score for Alcohol Intake"
label(data$ahei_score)="Total AHEI Score"
