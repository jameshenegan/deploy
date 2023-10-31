#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/nutr_blsaffqmind.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$kcal)="Energy (kcal)"
label(data$visit)="Visit Number"
label(data$d_wg)="Daily Whole Grains Intake"
label(data$d_veg_leafy)="Daily Leafy Vegetables Intake"
label(data$d_veg_other)="Daily Other Vegetables Intake"
label(data$d_berry)="Daily Berries Intake"
label(data$d_nuts)="Daily Nuts Intake"
label(data$d_oil_olive)="Daily Olive Oil Intake"
label(data$d_buttermarg)="Daily Butter/Margarine Intake"
label(data$d_cheese)="Daily Cheese Intake"
label(data$d_fish)="Daily Fish Intake"
label(data$d_bean)="Daily Bean Intake"
label(data$d_poultry)="Daily Poultry Intake"
label(data$d_redprocmeat)="Daily Red/Processed Meat Intake"
label(data$d_friedfood)="Daily Fried/Fast Food Intake"
label(data$d_sweet)="Daily Pastries/Sweets Intake"
label(data$d_wine)="Daily Wine Intake"
label(data$maxoil)="Maximum Oil Intake"
label(data$mind_greenveg)="MIND Score for Green Leafy Vegetables"
label(data$mind_otherveg)="MIND Score for Other Vegetables"
label(data$mind_berry)="MIND Score for Berries"
label(data$mind_nuts)="MIND Score for Nuts"
label(data$mind_oliveoil)="MIND Score for Olive Oil"
label(data$mind_buttermarg)="MIND Score for Butter/Margarine"
label(data$mind_cheese)="MIND Score for Cheese"
label(data$mind_wg)="MIND Score for Whole Grains"
label(data$mind_fish)="MIND Score for Fish"
label(data$mind_bean)="MIND Score for Beans"
label(data$mind_poultry)="MIND Score for Poultry"
label(data$mind_redprocmeat)="MIND Score for Red/Processed Meat"
label(data$mind_friedfood)="MIND Score for Fried/Fast Food"
label(data$mind_sweet)="MIND Score for Pastries/Sweets"
label(data$mind_wine)="MIND Score for Wine"
label(data$mind_score)="Total MIND Diet Score"
label(data$age)="Age"
