#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_labs.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$ldl)="LDL Cholesterol (mg/dL)"
label(data$ldl5cat)="ATP III Fasting LDL Categorization"
label(data$hdl)="HDL Cholesterol (mg/dL)"
label(data$hdl3cat)="ATP III Fasting HDL Categorization"
label(data$trigs)="Triglycerides (mg/dL)"
label(data$trigs4cat)="ATP III Fasting Triglyceride Categorization"
label(data$hgb)="Hemoglobin (g/dL)"
label(data$anemia)="Anemia Classification"

#Create new variables for factors
data$ldl5cat.factor = factor(data$ldl5cat, levels = c("1","2","3","4","5"))
levels(data$ldl5cat.factor) = c("Optimal: LDL < 100 mg/dL","Near/Above Optimal: 100 less than or equal to LDL < 130 mg/dL","Borderline High: 130 less than or equal to LDL < 160 mg/dL","High: 160 less than or equal to LDL < 190 mg/dL","Very High: LDL ≥ 190 mg/dL")

data$hdl3cat.factor = factor(data$hdl3cat, levels = c("3","2","1"))
levels(data$hdl3cat.factor) = c("High: HDL ≥ 60 mg/dL","Normal: 40 less than or equal to HDL < 60 (males); 50 less than or equal to HDL < 60 mg/dL (females)","Low: HDL < 40 (males); HDL < 50 mg/dL (females)")

data$trigs4cat.factor = factor(data$trigs4cat, levels = c("1","2","3","4"))
levels(data$trigs4cat.factor) = c("Normal: Trigs < 150 mg/dL","Borderline High: 150 <= Trigs < 200 mg/dL","High: 200 <= Trigs < 500 mg/dL","Very High: Trigs >= 500 mg/dL")

data$anemia.factor = factor(data$anemia, levels = c("0","1"))
levels(data$anemia.factor) = c("Normal Hgb: Hgb greater than or equal to 40 (males); Hgb greater than or equal to 12 g/dL (females)","Anemia: Hgb < 13 (males); Hgb < 12 g/dL (females)")

