#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_demographics.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$brthyr)="Year of Birth"
label(data$brthmo)="Month of Birth"
label(data$age)="Age at time of visit (years)"
label(data$baselineage)="Age at baseline visit (years)"
label(data$sex)="Sex (M, F)"
label(data$male)="Male Indicator (1=M, 0=F)"
label(data$race)="Race Category (White, Black or African American, American Indian or Alaskan Native, Asian or Pacific Islander, Hispanic, More than one race)"
label(data$race3cat)="Race Category (White, Black, Other)"
label(data$black)="Black Race Indicator (1=Black, 0=Non-Black)"
label(data$ethnicity)="Spanish Hispanic or Latino Ethnicity"
label(data$borninus)="Born in the United States"
label(data$englishfirstlang)="English was First Language"
label(data$maritalstatus)="Marital Status"
label(data$householdsize)="Size of Household"
label(data$housingtype)="Type of Housing"
label(data$smkstat)="Current smoking status (3-level)"
label(data$smokehx)="Smoking history (4-level)"
label(data$smoker)="Current smoking status (2-level)"
label(data$alcoholhx)="Drinking history (4-level)"
label(data$drinker)="Current drinking status (2-level)"
label(data$alcohol)="Drinks per week"
label(data$edyrsdegree)="Highest grade in school completed by the participant defined by final degree"
label(data$education)="Years of education as defined by final degree

0: No Formal Schooling 0-11 degree years 
12: High School (or GED equivalent): 12-13 degree years
14: Two Year College/Associate's Degree: 14-15 degree years
16: Four Year College: 16-17 degree years
18: Master's Degree: 18 degree years 
19: Law Degree: 19 degree years
20: MD or PhD: 20 degree years
21: Multiple Graduate Degrees: 21+ degree years"
label(data$educ3cat)="Education Category (<HS, HS, HS+)"
label(data$educ5cat)="Education Category (5-Level)"

#Create new variables for factors
data$male.factor = factor(data$male, levels = c("1","0"))
levels(data$male.factor) = c("Male","Female")

data$race.factor = factor(data$race, levels = c("6","8","3","1","5","2","9","7"))
levels(data$race.factor) = c("White","Unknown or not reported","Black or African American","Other Asian or Pacific Islander","Hispanic","American Indian or Alaskan Native","Asian","More than one race")

data$race3cat.factor = factor(data$race3cat, levels = c("1","2","3"))
levels(data$race3cat.factor) = c("White","Black or African American","Other")

data$black.factor = factor(data$black, levels = c("0","1"))
levels(data$black.factor) = c("NonBlack","Black")

data$ethnicity.factor = factor(data$ethnicity, levels = c("0","1","2"))
levels(data$ethnicity.factor) = c("Not reported / Unknown","Not Hispanic or Latino","Hispanic or Latino")

data$borninus.factor = factor(data$borninus, levels = c("1","0"))
levels(data$borninus.factor) = c("Born In US","Born Outside US")

data$englishfirstlang.factor = factor(data$englishfirstlang, levels = c("1","0"))
levels(data$englishfirstlang.factor) = c("Yes","No")

data$maritalstatus.factor = factor(data$maritalstatus, levels = c("1","5","4","6","2","3"))
levels(data$maritalstatus.factor) = c("Married","Widowed","Divorced","Never married","Living with a partner","Separated")

data$householdsize.factor = factor(data$householdsize, levels = c("1","0","2","3","8","7"))
levels(data$householdsize.factor) = c("1 other","Lives alone","2 others","3 or more others","Dont know","Refused")

data$housingtype.factor = factor(data$housingtype, levels = c("1","2","3","4","5","8","7"))
levels(data$housingtype.factor) = c("Single family home","Co-op, condominium, apartment","Continuing care community","Assisted living","Long term care facility","Dont know","refused")

data$smkstat.factor = factor(data$smkstat, levels = c("0","1","2"))
levels(data$smkstat.factor) = c("Never smoked","Former Smoker","Current Smoker")

data$smokehx.factor = factor(data$smokehx, levels = c("0","1","3","2"))
levels(data$smokehx.factor) = c("Never smoked","Quit 10+ yrs ago","Current smoker","Quit <10 yrs ago")

data$smoker.factor = factor(data$smoker, levels = c("0","1"))
levels(data$smoker.factor) = c("Non-Smoker","Smoker")

data$alcoholhx.factor = factor(data$alcoholhx, levels = c("2","0","1"))
levels(data$alcoholhx.factor) = c("Current Drinker","Non-Drinker","Former Drinker")

data$drinker.factor = factor(data$drinker, levels = c("1","0"))
levels(data$drinker.factor) = c("Drinker","Non-Drinker")

data$alcohol.factor = factor(data$alcohol, levels = c("0","1","2","3","4"))
levels(data$alcohol.factor) = c("less than one","1-3 drinks","4-7 drinks","8-14 drinks","more than 14")

data$education.factor = factor(data$education, levels = c("18","16","20","12","14","21","19","0","77","88"))
levels(data$education.factor) = c("Masters degree","four year college","MD or PhD","high school (or GED equivalent)","two year college / Associates degree","multiple graduate degrees","Law degree","no formal schooling","refused","unknown")

data$educ3cat.factor = factor(data$educ3cat, levels = c("2","1","0"))
levels(data$educ3cat.factor) = c(">High School","High School/GED","<High School")

data$educ5cat.factor = factor(data$educ5cat, levels = c("4","3","1","2","0"))
levels(data$educ5cat.factor) = c("Post college","College grad","High school","Some college","Less than high school")

data$sex.factor = factor(data$sex, levels = c("M","F"))
levels(data$sex.factor) = c("Male","Female")

