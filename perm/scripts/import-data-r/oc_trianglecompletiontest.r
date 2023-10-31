#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_trianglecompletiontest.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_tricomtes)="CRF Version"
label(data$tricom01a_tricomtes)="Able to stand unassisted"
label(data$tricom01b)="Use assistive device for standing or walking"
label(data$tricomt1dd)="Triangle 1 distance of deviation"
label(data$tricomt1ad)="Triangle 1 angle of deviation"
label(data$tricomt1dt)="Triangle 1 distance traveled"
label(data$tricomt1ar)="Triangle 1 angle rotated"
label(data$tricom1yn)="Triangle 1 think you reached original starting point"
label(data$tricom1lr)="Triangle 1 think you are to the left or right"
label(data$tricomt1i)="Triangle 1 interrupted by tester for safety"
label(data$tricomt2dd)="Triangle 2 distance of deviation"
label(data$tricomt2ad)="Triangle 2 angle of deviation"
label(data$tricomt2dt)="Triangle 2 distance traveled"
label(data$tricomt2ar)="Triangle 2 angle rotated"
label(data$tricom2yn)="Triangle 2 think you reached original starting point"
label(data$tricom2lr)="Triangle 2 think you are to the left or right"
label(data$tricomt2i)="Triangle 2 interrupted by tester for safety"
label(data$tricomt3dd)="Triangle 3 distance of deviation"
label(data$tricomt3ad)="Triangle 3 angle of deviation"
label(data$tricomt3dt)="Triangle 3 distance traveled"
label(data$tricomt3ar)="Triangle 3 angle rotated"
label(data$tricom3yn)="Triangle 3 think you reached original starting point"
label(data$tricom3lr)="Triangle 3 think you are to the left or right"
label(data$tricomt3i)="Triangle 3 interrupted by tester for safety"
label(data$tricomt4dd)="Triangle 4 distance of deviation"
label(data$tricomt4ad)="Triangle 4 angle of deviation"
label(data$tricomt4dt)="Triangle 4 distance traveled"
label(data$tricomt4ar)="Triangle 4 angle rotated"
label(data$tricom4yn)="Triangle 4 think you reached original starting point"
label(data$tricom4lr)="Triangle 4 think you are to the left or right"
label(data$tricomt4i)="Triangle 4 interrupted by tester for safety"
label(data$tricomdone)="Was triangle completion test done"
label(data$tricomrnd)="reason not done"
label(data$trisod)="Sense of Direction"
label(data$auto_id_tricomtes)="Unique Teleform Number"
label(data$testerid_tricomtes)="Tester ID"

#Create new variables for factors
data$tricom01a_tricomtes.factor = factor(data$tricom01a_tricomtes, levels = c("1","0"))
levels(data$tricom01a_tricomtes.factor) = c("Yes","No - DO NOT TEST")

data$tricom01b.factor = factor(data$tricom01b, levels = c("0","1"))
levels(data$tricom01b.factor) = c("No","Yes - DO NOT TEST")

data$tricom1yn.factor = factor(data$tricom1yn, levels = c("1","0"))
levels(data$tricom1yn.factor) = c("Yes","No")

data$tricom1lr.factor = factor(data$tricom1lr, levels = c("2","1"))
levels(data$tricom1lr.factor) = c("to its right","to its Left")

data$tricomt1i.factor = factor(data$tricomt1i, levels = c("1"))
levels(data$tricomt1i.factor) = c("Interrupted by tester for safety")

data$tricom2yn.factor = factor(data$tricom2yn, levels = c("1","0"))
levels(data$tricom2yn.factor) = c("Yes","No")

data$tricom2lr.factor = factor(data$tricom2lr, levels = c("2","1"))
levels(data$tricom2lr.factor) = c("to its right","to its Left")

data$tricomt2i.factor = factor(data$tricomt2i, levels = c("1"))
levels(data$tricomt2i.factor) = c("Interrupted by tester for safety")

data$tricom3yn.factor = factor(data$tricom3yn, levels = c("1","0"))
levels(data$tricom3yn.factor) = c("Yes","No")

data$tricom3lr.factor = factor(data$tricom3lr, levels = c("1","2"))
levels(data$tricom3lr.factor) = c("to its Left","to its right")

data$tricomt3i.factor = factor(data$tricomt3i, levels = c("1"))
levels(data$tricomt3i.factor) = c("Interrupted by tester for safety")

data$tricom4yn.factor = factor(data$tricom4yn, levels = c("1","0"))
levels(data$tricom4yn.factor) = c("Yes","No")

data$tricom4lr.factor = factor(data$tricom4lr, levels = c("1","2"))
levels(data$tricom4lr.factor) = c("to its Left","to its right")

data$tricomt4i.factor = factor(data$tricomt4i, levels = c("1"))
levels(data$tricomt4i.factor) = c("Interrupted by tester for safety")

data$tricomdone.factor = factor(data$tricomdone, levels = c("1","0"))
levels(data$tricomdone.factor) = c("Yes","No")

data$tricomrnd.factor = factor(data$tricomrnd, levels = c("6","9","3","7","5","8","4"))
levels(data$tricomrnd.factor) = c("6-Equipment problem","9-Not scheduled/Not applicable","3-No Time","7-No Tester","5-Unable (Physical or Mental)","8-Not eligible","4-Refused")

data$trisod.factor = factor(data$trisod, levels = c("6","5","7","4","3","2","1"))
levels(data$trisod.factor) = c("6","5","7 Good","4","3","2","1 Poor")

