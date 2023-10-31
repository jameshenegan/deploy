#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_epidermalaging.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_epiagi)="CRF Version"
label(data$testerid_epiagi)="Tester ID"
label(data$informedconsent)="Able to provide informed consent"
label(data$adhesiveallergy)="Does not have a known allergy to adhesive tape"
label(data$fragileskin)="Does not have fragile skin"
label(data$skincondition)="Does not have a wound or skin condition prone to excessive scarring"
label(data$smoked)="Has not smoked 3 hours prior to the procedure"
label(data$nocaffeine)="Has not drank any caffeinated beverages 3 hours prior to the procedure"
label(data$notopicalprod)="Has not used any topical products 6 to 8 hrs before procedure"
label(data$notpregnant_epiagi)="Is not pregnant"
label(data$eligibilityyn)="Eligibility"
label(data$d1testerid)="D1 Tester ID"
label(data$consent_epiagi)="Consent reviewed"
label(data$reveligibility)="Eligibility criteria reviewed"
label(data$day1photo)="Day 1 Forearm photographed"
label(data$d2time)="D2 Time"
label(data$d2ampm)="D2 am pm"
label(data$d2testerid)="D2 Tester ID"
label(data$d2topicalprod)="Has the participant used topical products on the forearm in the last 6-8 hours"
label(data$d2caffeine)="Has the participant drank any caffeine or smoked in the past 3 hours"
label(data$acclimate)="Has the participant remained in the room 15-20 min to acclimate to the temperature and humidity"
label(data$temproom)="Room temperature"
label(data$humidityrm)="Room Humidity"
label(data$baselinetewl)="Baseline TEWL measurement"
label(data$d3time)="D3 Time"
label(data$d3ampm)="D3 am pm"
label(data$d3testerid)="D3 Tester ID"
label(data$d3topicalprod)="D3 Has the participant used topical products on the forearm in the last 6-8 hours"
label(data$d3caffeine)="D3 Has the participant drank any caffeine or smoked in the past 3 hours"
label(data$d3acclimate)="D3 Has the participant remained in the room 15-20 min to acclimate to the temperature and humidity"
label(data$d3rmtemp)="D3 Room temperature"
label(data$d3rmhumidity)="D3 Room Humidity"
label(data$d3tewl)="D3 TEWL measurement"
label(data$day3photo)="D3 Forearm photographed"
label(data$d3tewlm2)="D3 TEWL measurement 2"
label(data$d3tewlm3)="D3 TEWL measurement 3"
label(data$d2tewlm2)="D2 TEWL measurement 2"
label(data$d2tewlm3)="D2 TEWL measurement 3"
label(data$discsize)="Stripping disc size"
label(data$tewlavg)="TEWL average"

#Create new variables for factors
data$informedconsent.factor = factor(data$informedconsent, levels = c("1","0"))
levels(data$informedconsent.factor) = c("Yes","No")

data$adhesiveallergy.factor = factor(data$adhesiveallergy, levels = c("1","0"))
levels(data$adhesiveallergy.factor) = c("Yes","No")

data$fragileskin.factor = factor(data$fragileskin, levels = c("1","0"))
levels(data$fragileskin.factor) = c("Yes","No")

data$skincondition.factor = factor(data$skincondition, levels = c("1","0"))
levels(data$skincondition.factor) = c("Yes","No")

data$smoked.factor = factor(data$smoked, levels = c("1","0"))
levels(data$smoked.factor) = c("Yes","No")

data$nocaffeine.factor = factor(data$nocaffeine, levels = c("1","0"))
levels(data$nocaffeine.factor) = c("Yes","No")

data$notopicalprod.factor = factor(data$notopicalprod, levels = c("1","0"))
levels(data$notopicalprod.factor) = c("Yes","No")

data$notpregnant_epiagi.factor = factor(data$notpregnant_epiagi, levels = c("1","0"))
levels(data$notpregnant_epiagi.factor) = c("Yes","No")

data$eligibilityyn.factor = factor(data$eligibilityyn, levels = c("1","0"))
levels(data$eligibilityyn.factor) = c("Yes","No")

data$consent_epiagi.factor = factor(data$consent_epiagi, levels = c("1","0"))
levels(data$consent_epiagi.factor) = c("Yes","No")

data$reveligibility.factor = factor(data$reveligibility, levels = c("1","0"))
levels(data$reveligibility.factor) = c("Yes","No")

data$day1photo.factor = factor(data$day1photo, levels = c("2","1"))
levels(data$day1photo.factor) = c("Right","Left")

data$d2ampm.factor = factor(data$d2ampm, levels = c("2","1"))
levels(data$d2ampm.factor) = c("Pm","Am")

data$d2topicalprod.factor = factor(data$d2topicalprod, levels = c("0","1"))
levels(data$d2topicalprod.factor) = c("No","Yes")

data$d2caffeine.factor = factor(data$d2caffeine, levels = c("0","1"))
levels(data$d2caffeine.factor) = c("No","Yes")

data$acclimate.factor = factor(data$acclimate, levels = c("1","0"))
levels(data$acclimate.factor) = c("Yes","No")

data$d3ampm.factor = factor(data$d3ampm, levels = c("2","1"))
levels(data$d3ampm.factor) = c("Pm","Am")

data$d3topicalprod.factor = factor(data$d3topicalprod, levels = c("0","1"))
levels(data$d3topicalprod.factor) = c("No","Yes")

data$d3caffeine.factor = factor(data$d3caffeine, levels = c("0","1"))
levels(data$d3caffeine.factor) = c("No","Yes")

data$d3acclimate.factor = factor(data$d3acclimate, levels = c("1","0"))
levels(data$d3acclimate.factor) = c("Yes","No")

data$day3photo.factor = factor(data$day3photo, levels = c("1","0"))
levels(data$day3photo.factor) = c("Yes","No")

data$discsize.factor = factor(data$discsize, levels = c("1","2"))
levels(data$discsize.factor) = c("D-Squame size 1.1875_x009d_ (D102 Large)","D-Squame size 0.875_x009d_ (D100 Standard)")

