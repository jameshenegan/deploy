#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_anthropometry.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$weight)="Weight (kg)"
label(data$weightloss)="Weight Loss Since Previous Visit (kg)"
label(data$intweightloss)="Intentional Weight Loss Since Previous Visit (kg)"
label(data$height)="Height (cm)"
label(data$bsa)="Body Surface Area using Du Bois formula (m^2)"
label(data$bmi)="Body Mass Index (kg/m^2)"
label(data$obesity4cat)="CDC Obesity Classification (4-category)"
label(data$obesity6cat)="CDC Obesity Classification (6-category)"
label(data$waistcirc)="Upper Waist Circumference (cm)"
label(data$lowerwaistcirc)="Lower Waist Circumference (cm)"
label(data$waistdiam)="Waist Diameter (cm)"
label(data$waistdepth)="Waist Depth (cm)"
label(data$bodytemp)="Oral Body Temperature (Fahrenheit)"
label(data$hipcirc)="Hip (buttocks) Circumference (cm)"
label(data$tibialength)="Right Tibia Length (cm)"
label(data$bicepskinfold)="Right Bicep Skinfold Thickness (cm)"
label(data$respirations)="Respirations (breaths/min)"
label(data$pulse)="Pulse (beats/min)"
label(data$waisthip)="Waist-to-Hip Ratio"
label(data$waistheight)="Waist-to-Height Ratio"

#Create new variables for factors
data$intweightloss.factor = factor(data$intweightloss, levels = c("1","0"))
levels(data$intweightloss.factor) = c("Intentional Weight Loss","Unintentional Weight Loss")

data$obesity4cat.factor = factor(data$obesity4cat, levels = c("3","2","4","1"))
levels(data$obesity4cat.factor) = c("Overweight: 25 ≤ BMI < 30 kg/m^2","Normal: 18.5 ≤ BMI < 25 kg/m^2","Obese: BMI ≥ 30 kg/m^2","Underweight: BMI < 18.5 kg/m^2")

data$obesity6cat.factor = factor(data$obesity6cat, levels = c("3","2","4","5","6","1"))
levels(data$obesity6cat.factor) = c("Overweight: 25 less than or equal to BMI < 30 kg/m^2","Normal: 18.5 less than or equal to BMI < 25 kg/m^2","Class 1 Obesity: 30 less than or equal to BMI < 35 kg/m^2","Class 2 Obesity: 35 less than or equal to BMI < 40 kg/m^2","Class 3 Obesity: BMI ≥ 40 kg/m^2","Underweight: BMI < 18.5 kg/m^2")

