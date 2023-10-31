#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_glucose.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$gluload)="Sugar concentration for OGTT (grams)"
label(data$sample_dilution)="Diluation factor"
label(data$glucose0_1964)="Fasting Glucose 1964-1977 (mg/dl)"
label(data$glucose5_1964)="OGTT Glucose at 5-mins 1964-1977 (mg/dl)"
label(data$glucose10_1964)="OGTT Glucose at 10-mins 1964-1977 (mg/dl)"
label(data$glucose15_1964)="OGTT Glucose at 15-mins 1964-1977 (mg/dl)"
label(data$glucose20_1964)="OGTT Glucose at 20-mins 1964-1977 (mg/dl)"
label(data$glucose40_1964)="OGTT Glucose at 40-mins 1964-1977 (mg/dl)"
label(data$glucose60_1964)="OGTT Glucose at 60-mins 1964-1977 (mg/dl)"
label(data$glucose80_1964)="OGTT Glucose at 80-mins 1964-1977 (mg/dl)"
label(data$glucose100_1964)="OGTT Glucose at 100-mins 1964-1977 (mg/dl)"
label(data$glucose120_1964)="OGTT Glucose at 120-mins 1964-1977 (mg/dl)"
label(data$glucose0_1977)="Fasting Glucose 1977-2000 (mg/dl)"
label(data$glucose5_1977)="OGTT Glucose at 5-mins 1977-2000 (mg/dl)"
label(data$glucose10_1977)="OGTT Glucose at 10-mins 1977-2000 (mg/dl)"
label(data$glucose15_1977)="OGTT Glucose at 15-mins 1977-2000 (mg/dl)"
label(data$glucose20_1977)="OGTT Glucose at 20-mins 1977-2000 (mg/dl)"
label(data$glucose40_1977)="OGTT Glucose at 40-mins 1977-2000 (mg/dl)"
label(data$glucose60_1977)="OGTT Glucose at 60-mins 1977-2000 (mg/dl)"
label(data$glucose80_1977)="OGTT Glucose at 80-mins 1977-2000 (mg/dl)"
label(data$glucose100_1977)="OGTT Glucose at 100-mins 1977-2000 (mg/dl)"
label(data$glucose120_1977)="OGTT Glucose at 120-mins 1977-2000 (mg/dl)"
label(data$glucose0_2001)="Fasting Glucose 2001-current (mg/dl)"
label(data$glucose5_2001)="OGTT Glucose at 5-mins 2001-current (mg/dl)"
label(data$glucose10_2001)="OGTT Glucose at 10-mins 2001-current (mg/dl)"
label(data$glucose15_2001)="OGTT Glucose at 15-mins 2001-current (mg/dl)"
label(data$glucose20_2001)="OGTT Glucose at 20-mins 2001-current (mg/dl)"
label(data$glucose40_2001)="OGTT Glucose at 40-mins 2001-current (mg/dl)"
label(data$glucose60_2001)="OGTT Glucose at 60-mins 2001-current (mg/dl)"
label(data$glucose80_2001)="OGTT Glucose at 80-mins 2001-current (mg/dl)"
label(data$glucose100_2001)="OGTT Glucose at 100-mins 2001-current (mg/dl)"
label(data$glucose120_2001)="OGTT Glucose at 120-mins 2001-current (mg/dl)"
label(data$glucose0)="Fasting Glucose calibrated (mg/dl)"
label(data$glucose0_3cat)="OGTT Glucose Categorization at 0-mins, calibrated (Norm, At Risk, Diab)"
label(data$glucose20)="OGTT Glucose at 20-mins calibrated (mg/dl)"
label(data$glucose40)="OGTT Glucose at 40-mins calibrated (mg/dl)"
label(data$glucose60)="OGTT Glucose at 60-mins calibrated (mg/dl)"
label(data$glucose80)="OGTT Glucose at 80-mins calibrated (mg/dl)"
label(data$glucose100)="OGTT Glucose at 100-mins calibrated (mg/dl)"
label(data$glucose120)="OGTT Glucose at 120-mins calibrated (mg/dl)"
label(data$glucose120_3cat)="OGTT Glucose Categorization at 120-mins, calibrated (Norm, At Risk, Diab)"
label(data$insulin0)="OGTT Insulin at 0-mins (µU/ml)"
label(data$insulin5)="OGTT Insulin at 5-mins (µU/ml)"
label(data$insulin10)="OGTT Insulin at 10-mins (µU/ml)"
label(data$insulin15)="OGTT Insulin at 15-mins (µU/ml)"
label(data$insulin20)="OGTT Insulin at 20-mins (µU/ml)"
label(data$insulin40)="OGTT Insulin at 40-mins (µU/ml)"
label(data$insulin60)="OGTT Insulin at 60-mins (µU/ml)"
label(data$insulin80)="OGTT Insulin at 80-mins (µU/ml)"
label(data$insulin100)="OGTT Insulin at 100-mins (µU/ml)"
label(data$insulin120)="OGTT Insulin at 120-mins (µU/ml)"
label(data$hba1c)="Plasma Hemoglobin HbA1c (%)"
label(data$hba1c3cat)="Plasma Hemoglobin HbA1c (%) Categorization (Norm, At Risk, Diab)"
label(data$glucose3cat)="Diabetes Categorization (Norm, At Risk, Diab)"
label(data$diab3cat)="Diabetes Categorization (Norm, At Risk, Diab)"

#Create new variables for factors
data$glucose0_3cat.factor = factor(data$glucose0_3cat, levels = c("0","1","2"))
levels(data$glucose0_3cat.factor) = c("Normal Glucose Tolerance","Pre-Diabetes","Type 2 Diabetes")

data$glucose120_3cat.factor = factor(data$glucose120_3cat, levels = c("0","1","2"))
levels(data$glucose120_3cat.factor) = c("Normal Glucose Tolerance","Pre-Diabetes","Type 2 Diabetes")

data$hba1c3cat.factor = factor(data$hba1c3cat, levels = c("1","0","2"))
levels(data$hba1c3cat.factor) = c("Pre-Diabetes","Normal Glucose Tolerance","Type 2 Diabetes")

data$glucose3cat.factor = factor(data$glucose3cat, levels = c("0","1","2"))
levels(data$glucose3cat.factor) = c("Normal Glucose Tolerance","Pre-Diabetes","Type 2 Diabetes")

data$diab3cat.factor = factor(data$diab3cat, levels = c("1","2","0"))
levels(data$diab3cat.factor) = c("Pre-Diabetes","Type 2 Diabetes","Normal Glucose Tolerance")

