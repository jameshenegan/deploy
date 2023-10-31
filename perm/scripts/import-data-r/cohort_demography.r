#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/cohort_demography.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$age_at_screening_visit)="Age at Screening Visit"
label(data$age_units)="Age Units at Screening Visit"
label(data$sex)="Sex given at Screening Visit"
label(data$race)="Race given at Screening Visit"
label(data$ethnicity)="Ethnicity given at Screening Visit"

#Create new variables for factors
data$age_units.factor = factor(data$age_units, levels = c("1"))
levels(data$age_units.factor) = c("Years")

data$race.factor = factor(data$race, levels = c("8","6","3","1","5","2","9","7"))
levels(data$race.factor) = c("Race: Unknown or not reported","Race: White","Race: Black or African American","Race: Hawaiian or Pacific Islander","Race: Hispanic","Race: American Indian or Alaskan Native","Race: Asian","Race: More than one race")

data$ethnicity.factor = factor(data$ethnicity, levels = c("0","1","2"))
levels(data$ethnicity.factor) = c("Not reported / Unknown","Not Hispanic or Latino","Hispanic or Latino")

data$sex.factor = factor(data$sex, levels = c("M","F"))
levels(data$sex.factor) = c("Male","Female")

