#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_hvneurologicalassess.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_hvneuass)="CRF Version"
label(data$neu01)="Recite days of the week"
label(data$neu01a)="days of week reason not done"
label(data$neu02)="Smile"
label(data$neu02a)="Smile reason not done"
label(data$neu03)="Finger to Nose"
label(data$neu03a)="Finger to nose reason not done"
label(data$neu04)="Orbit Motion"
label(data$neu04a)="Orbit Motion reason not done"
label(data$neu05)="Open and Close Motion"
label(data$neu05a)="Open and Close Motion reason not done"
label(data$neu06)="Heel Taps"
label(data$neu06a)="Heel Taps reason not done"
label(data$neu07)="Chair Stand and Walk"
label(data$neu07a)="Chair Stand and Walk reason not done"
label(data$auto_id_hvneuass)="Unique Teleform Number"
label(data$testerid_hvneuass)="Tester ID"

#Create new variables for factors
data$neu01.factor = factor(data$neu01, levels = c("1","0"))
levels(data$neu01.factor) = c("Completed","Not Completed")

data$neu01a.factor = factor(data$neu01a, levels = c("666","777","888","555","999"))
levels(data$neu01a.factor) = c("666 = mental problems","777 = physical and mental problems","888 = refused but theoretically could do","555 = physical problems","999 = technical problems")

data$neu02.factor = factor(data$neu02, levels = c("1","0"))
levels(data$neu02.factor) = c("Completed","Not Completed")

data$neu02a.factor = factor(data$neu02a, levels = c("888","777","555","666","999"))
levels(data$neu02a.factor) = c("888 = refused but theoretically could do","777 = physical and mental problems","555 = physical problems","666 = mental problems","999 = technical problems")

data$neu03.factor = factor(data$neu03, levels = c("1","0"))
levels(data$neu03.factor) = c("Completed","Not Completed")

data$neu03a.factor = factor(data$neu03a, levels = c("666","777","555","888","999"))
levels(data$neu03a.factor) = c("666 = mental problems","777 = physical and mental problems","555 = physical problems","888 = refused but theoretically could do","999 = technical problems")

data$neu04.factor = factor(data$neu04, levels = c("1","0"))
levels(data$neu04.factor) = c("Completed","Not Completed")

data$neu04a.factor = factor(data$neu04a, levels = c("777","555","888","666","999"))
levels(data$neu04a.factor) = c("777 = physical and mental problems","555 = physical problems","888 = refused but theoretically could do","666 = mental problems","999 = technical problems")

data$neu05.factor = factor(data$neu05, levels = c("1","0"))
levels(data$neu05.factor) = c("Completed","Not Completed")

data$neu05a.factor = factor(data$neu05a, levels = c("555","777","666","888","999"))
levels(data$neu05a.factor) = c("555 = physical problems","777 = physical and mental problems","666 = mental problems","888 = refused but theoretically could do","999 = technical problems")

data$neu06.factor = factor(data$neu06, levels = c("1","0"))
levels(data$neu06.factor) = c("Completed","Not Completed")

data$neu06a.factor = factor(data$neu06a, levels = c("555","777","888","666","999"))
levels(data$neu06a.factor) = c("555 = physical problems","777 = physical and mental problems","888 = refused but theoretically could do","666 = mental problems","999 = technical problems")

data$neu07.factor = factor(data$neu07, levels = c("1","0"))
levels(data$neu07.factor) = c("Completed","Not Completed")

data$neu07a.factor = factor(data$neu07a, levels = c("555","777","888","666","999"))
levels(data$neu07a.factor) = c("555 = physical problems","777 = physical and mental problems","888 = refused but theoretically could do","666 = mental problems","999 = technical problems")

