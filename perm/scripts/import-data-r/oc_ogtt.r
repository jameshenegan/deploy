#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_ogtt.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_ogt)="CRF Version"
label(data$ogtt01_ogt)="Do you take insulin to controldiabetes"
label(data$ogtt02a)="Was glucose tolerance test done"
label(data$ogtt02b)="reason not done"
label(data$ogtt02c)="Exclusion criteria"
label(data$ogtt04)="Was entire glucose drink consumed"
label(data$ogtt05)="Which protocol was performed"
label(data$ogtt05a)="Samples collected"
label(data$ogtt05b)="Reason all samples not colleted"
label(data$ogtt06)="Body temperature before OGTT"
label(data$ogtt07)="Body temperature after OGTT"
label(data$ogtt08)="Any steroid use the past 3 months"
label(data$ogtt08a1)="Oral steroid"
label(data$ogtt08b1)="Oral steroid recency"
label(data$ogtt08c1)="Duration of use oral steroid"
label(data$ogtt08a2)="Injectable steroid"
label(data$ogtt08b2)="Injectable steroid recency"
label(data$ogtt08c2)="Duration of use Injectable steroid"
label(data$ogtt08a3)="Topical steroid"
label(data$ogtt08b3)="Topical steroid recency"
label(data$ogtt08c3)="Duration of use Topical steroid"
label(data$ogtt08a4)="Nasal steroid"
label(data$ogtt08b4)="Nasal steroid recency"
label(data$ogtt08c4)="Duration of use Nasal steroid"
label(data$ogtt08a5)="Inhaled steroid"
label(data$ogtt08b5)="Inhaled steroid recency"
label(data$ogtt08c5)="Duration of use Inhaled steroid"
label(data$auto_id_ogt)="Unique Teleform Number"
label(data$ogtt05a_0)="Samples collected : 0 (Checkbox Indicator)"
label(data$ogtt05a_100)="Samples collected : 100 (Checkbox Indicator)"
label(data$ogtt05a_120)="Samples collected : 120 (Checkbox Indicator)"
label(data$ogtt05a_20)="Samples collected : 20 (Checkbox Indicator)"
label(data$ogtt05a_40)="Samples collected : 40 (Checkbox Indicator)"
label(data$ogtt05a_60)="Samples collected : 60 (Checkbox Indicator)"
label(data$ogtt05a_80)="Samples collected : 80 (Checkbox Indicator)"
label(data$testerid_ogt)="Tester ID"

#Create new variables for factors
data$ogtt01_ogt.factor = factor(data$ogtt01_ogt, levels = c("0","1"))
levels(data$ogtt01_ogt.factor) = c("No","Yes")

data$ogtt02a.factor = factor(data$ogtt02a, levels = c("1","0"))
levels(data$ogtt02a.factor) = c("Yes","No")

data$ogtt02b.factor = factor(data$ogtt02b, levels = c("7","2","1","4","3"))
levels(data$ogtt02b.factor) = c("Refused","Venous access difficult","Exclusion criteria"," Other (please specify)","Could not tolerate test beverage")

data$ogtt02c.factor = factor(data$ogtt02c, levels = c("2","5","3","1","4"))
levels(data$ogtt02c.factor) = c("Taken any steroids in past 3 mo","Uses insulin","Did not fast","Exercised this morning","Has fever (or infection within past 3 days)")

data$ogtt04.factor = factor(data$ogtt04, levels = c("1","0"))
levels(data$ogtt04.factor) = c("Yes","No")

data$ogtt05.factor = factor(data$ogtt05, levels = c("1","0"))
levels(data$ogtt05.factor) = c("Complete","Short")

data$ogtt05b.factor = factor(data$ogtt05b, levels = c("2","4","9","7","3"))
levels(data$ogtt05b.factor) = c("Venous access difficult","Other","Technical problems","Refused","Vasovagal reaction")

data$ogtt08.factor = factor(data$ogtt08, levels = c("0","1","8","7"))
levels(data$ogtt08.factor) = c("No","Yes","Dont know","Refused")

data$ogtt08a1.factor = factor(data$ogtt08a1, levels = c("0","1"))
levels(data$ogtt08a1.factor) = c("No","Yes")

data$ogtt08b1.factor = factor(data$ogtt08b1, levels = c("1","3","2","8","4","7"))
levels(data$ogtt08b1.factor) = c("Within past one wk","Within past 1 mo","Within past two wk","Dont know","Greater than 1 mo","Refused")

data$ogtt08c1.factor = factor(data$ogtt08c1, levels = c("3","2","8","1","7"))
levels(data$ogtt08c1.factor) = c("Greater than 2 weeks","Less than 2 weeks","Dont know","One dose","Refused")

data$ogtt08a2.factor = factor(data$ogtt08a2, levels = c("0","1"))
levels(data$ogtt08a2.factor) = c("No","Yes")

data$ogtt08b2.factor = factor(data$ogtt08b2, levels = c("4","2","3","1","7","8"))
levels(data$ogtt08b2.factor) = c("Greater than 1 mo","Within past two wk","Within past 1 mo","Within past one wk","Refused","Dont know")

data$ogtt08c2.factor = factor(data$ogtt08c2, levels = c("1","3","2","7","8"))
levels(data$ogtt08c2.factor) = c("One dose","Greater than 2 weeks","Less than 2 weeks","Refused","Dont know")

data$ogtt08a3.factor = factor(data$ogtt08a3, levels = c("0","1"))
levels(data$ogtt08a3.factor) = c("No","Yes")

data$ogtt08b3.factor = factor(data$ogtt08b3, levels = c("1","3","4","2","7","8"))
levels(data$ogtt08b3.factor) = c("Within past one wk","Within past 1 mo","Greater than 1 mo","Within past two wk","Refused","Dont know")

data$ogtt08c3.factor = factor(data$ogtt08c3, levels = c("3","1","2","7","8"))
levels(data$ogtt08c3.factor) = c("Greater than 2 weeks","One dose","Less than 2 weeks","Refused","Dont know")

data$ogtt08a4.factor = factor(data$ogtt08a4, levels = c("0","1"))
levels(data$ogtt08a4.factor) = c("No","Yes")

data$ogtt08b4.factor = factor(data$ogtt08b4, levels = c("1","2","4","3","7","8"))
levels(data$ogtt08b4.factor) = c("Within past one wk","Within past two wk","Greater than 1 mo","Within past 1 mo","Refused","Dont know")

data$ogtt08c4.factor = factor(data$ogtt08c4, levels = c("3","2","8","1","7"))
levels(data$ogtt08c4.factor) = c("Greater than 2 weeks","Less than 2 weeks","Dont know","One dose","Refused")

data$ogtt08a5.factor = factor(data$ogtt08a5, levels = c("0","1"))
levels(data$ogtt08a5.factor) = c("No","Yes")

data$ogtt08b5.factor = factor(data$ogtt08b5, levels = c("1","2","3","4","7","8"))
levels(data$ogtt08b5.factor) = c("Within past one wk","Within past two wk","Within past 1 mo","Greater than 1 mo","Refused","Dont know")

data$ogtt08c5.factor = factor(data$ogtt08c5, levels = c("3","2","1","7","8"))
levels(data$ogtt08c5.factor) = c("Greater than 2 weeks","Less than 2 weeks","One dose","Refused","Dont know")

