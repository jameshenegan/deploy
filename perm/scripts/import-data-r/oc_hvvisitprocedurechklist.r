#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_hvvisitprocedurechklist.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_hvvisproche)="CRF Version"
label(data$hvttime1)="HV Start time"
label(data$hvttimea)="Start time am pm"
label(data$hvttime2)="HV Start time"
label(data$hvttimeb)="Start time am pm"
label(data$hvttype)="Visit type"
label(data$hvt15)="Physician orders"
label(data$hvt15id)="Physician orders Tester ID"
label(data$hvt15a)="Physician orders RND"
label(data$hvt01)="BLSA Consent"
label(data$hvt01id)="BLSA Consent TID"
label(data$hvt02)="HIPAA"
label(data$hvt02id)="HIPAA TID"
label(data$hvt16)="Filming Consent"
label(data$hvt16id)="Filming Consent Tester ID"
label(data$hvt16a)="Filming Consent RND"
label(data$hvt03)="General Interview"
label(data$hvt03id)="General Interview Tester ID"
label(data$hvt03a)="General Interview RND"
label(data$hvt03b)="General Interview to be resch"
label(data$hvt20)="Activity Related Fatigue Scale"
label(data$hvt20id)="Activity Related Fatigue Scale Tester ID"
label(data$hvt20a)="Activity Related Fatigue Scale RND"
label(data$hvt20b)="Activity Related Fatigue Scale to be resch"
label(data$hvt21)="Epworth Sleep Scale"
label(data$hvt21id)="Epworth Sleep Scale Tester ID"
label(data$hvt21a)="Epworth Sleep Scale RND"
label(data$hvt21b)="Epworth Sleep Scale to be resch"
label(data$hvt04)="Medical Interview"
label(data$hvt04id)="Medical Interview Tester ID"
label(data$hvt04a)="Medical Interview RND"
label(data$hvt04b)="Medical Interview to be resch"
label(data$hvt05)="Physical Exam"
label(data$hvt05id)="Physical Exam Tester ID"
label(data$hvt05a)="Physical Exam RND"
label(data$hvt05b)="Physical Exam to be resch"
label(data$hvt06)="Grip Strength"
label(data$hvt06id)="Grip Strength Tester ID"
label(data$hvt06a)="Grip Strength RND"
label(data$hvt06b)="Grip Strength to be resch"
label(data$hvt07)="LE Physical Performance"
label(data$hvt07id)="LE Physical Performance Tester ID"
label(data$hvt07a)="LE Physical Performance RND"
label(data$hvt07b)="LE Physical Performance to be resch"
label(data$hvt08)="Neurological Assessment"
label(data$hvt08id)="Neurological Assessment Tester ID"
label(data$hvt08a)="Neurological Assessment RND"
label(data$hvt08b)="Neurological Assessment to be resch"
label(data$hvt09)="Core Cognitive Testing"
label(data$hvt09id)="Core Cognitive Testing Tester ID"
label(data$hvt09a)="Core Cognitive Testing RND"
label(data$hvt09b)="Core Cognitive Testing to be resch"
label(data$hvt10)="Medication List"
label(data$hvt10id)="Medication List Tester ID"
label(data$hvt10a)="Medication List RND"
label(data$hvt10b)="Medication List to be resch"
label(data$hvt11)="FFQ"
label(data$hvt11id)="FFQ Tester ID"
label(data$hvt11a)="FFQ RND"
label(data$hvt11b)="FFQ to be resch"
label(data$hvt17)="DVD"
label(data$hvt17id)="DVD Tester ID"
label(data$hvt17a)="DVD RND"
label(data$hvt18)="Autopsy Report"
label(data$hvt18id)="Autopsy Report Tester ID"
label(data$hvt18a)="Autopsy Report RND"
label(data$hvt18b)="Autopsy Report to be resch"
label(data$hvt12)="Autopsy Consent"
label(data$hvt12id)="Autopsy Consent Tester ID"
label(data$hvt12a)="Autopsy Consent RND"
label(data$hvt12b)="Autopsy Consent to be resch"
label(data$hvt13)="Blood"
label(data$hvt13id)="Blood Tester ID"
label(data$hvt13a)="Blood RND"
label(data$hvt13b)="Blood to be resch"
label(data$hvt14)="EKG"
label(data$hvt14id)="EKG Tester ID"
label(data$hvt14a)="EKG RND"
label(data$hvt14b)="EKG to be resch"
label(data$hvt19)="Informant CDR"
label(data$hvt19id)="Informant CDR Tester ID"
label(data$hvt19a)="Informant CDR RND"
label(data$hvt19b)="Informant CDR to be resch"
label(data$hvt22)="Accelerometer"
label(data$hvt22id)="Accelerometer Tester ID"
label(data$hvt22a)="Accelerometer RND"
label(data$hvt22b)="Accelerometer to be resch"
label(data$hvfollowup)="Additional Follow-up contact as needed between scheduled visit"
label(data$hvreason)="Reason for home visit"
label(data$auto_id_hvvisproche)="Unique Teleform Number"

#Create new variables for factors
data$hvttimea.factor = factor(data$hvttimea, levels = c("1","2"))
levels(data$hvttimea.factor) = c("am","pm")

data$hvttimeb.factor = factor(data$hvttimeb, levels = c("2","1"))
levels(data$hvttimeb.factor) = c("pm","am")

data$hvttype.factor = factor(data$hvttype, levels = c("0","1"))
levels(data$hvttype.factor) = c("Normal (default)","Continuation of previous visit")

data$hvt15.factor = factor(data$hvt15, levels = c("1","0"))
levels(data$hvt15.factor) = c("Done","Not done")

data$hvt15a.factor = factor(data$hvt15a, levels = c("9","4","5","7","6","8"))
levels(data$hvt15a.factor) = c("9-Not scheduled/Not applicable","4-Refused","5-Unable (Physical or mental","7-No tester/no time","6-Equipment problem","8-Not eligible")

data$hvt01.factor = factor(data$hvt01, levels = c("1","0"))
levels(data$hvt01.factor) = c("Done","Not done")

data$hvt02.factor = factor(data$hvt02, levels = c("1","0"))
levels(data$hvt02.factor) = c("Done","Not done")

data$hvt16.factor = factor(data$hvt16, levels = c("1","0"))
levels(data$hvt16.factor) = c("Done","Not done")

data$hvt16a.factor = factor(data$hvt16a, levels = c("9","4","5","6","7","8"))
levels(data$hvt16a.factor) = c("9-Not scheduled/Not applicable","4-Refused","5-Unable (Physical or mental","6-Equipment problem","7-No tester/no time","8-Not eligible")

data$hvt03.factor = factor(data$hvt03, levels = c("1","2","0"))
levels(data$hvt03.factor) = c("Done","Proxy","Not done")

data$hvt03a.factor = factor(data$hvt03a, levels = c("7","4","5","6","8","9"))
levels(data$hvt03a.factor) = c("7-No tester/no time","4-Refused","5-Unable (Physical or mental","6-Equipment problem","8-Not eligible","9-Not scheduled/Not applicable")

data$hvt20.factor = factor(data$hvt20, levels = c("1","0"))
levels(data$hvt20.factor) = c("Done","Not done")

data$hvt20a.factor = factor(data$hvt20a, levels = c("9","4","7","5","6","8"))
levels(data$hvt20a.factor) = c("9-Not scheduled/Not applicable","4-Refused","7-No tester/no time","5-Unable (Physical or mental","6-Equipment problem","8-Not eligible")

data$hvt21.factor = factor(data$hvt21, levels = c("1","0"))
levels(data$hvt21.factor) = c("Done","Not done")

data$hvt21a.factor = factor(data$hvt21a, levels = c("9","7","4","5","6","8"))
levels(data$hvt21a.factor) = c("9-Not scheduled/Not applicable","7-No tester/no time","4-Refused","5-Unable (Physical or mental","6-Equipment problem","8-Not eligible")

data$hvt04.factor = factor(data$hvt04, levels = c("1","2","0"))
levels(data$hvt04.factor) = c("Done","Proxy","Not done")

data$hvt04a.factor = factor(data$hvt04a, levels = c("7","4","9","5","6","8"))
levels(data$hvt04a.factor) = c("7-No tester/no time","4-Refused","9-Not scheduled/Not applicable","5-Unable (Physical or mental","6-Equipment problem","8-Not eligible")

data$hvt05.factor = factor(data$hvt05, levels = c("1","0"))
levels(data$hvt05.factor) = c("Done","Not done")

data$hvt05a.factor = factor(data$hvt05a, levels = c("4","9","5","6","7","8"))
levels(data$hvt05a.factor) = c("4-Refused","9-Not scheduled/Not applicable","5-Unable (Physical or mental","6-Equipment problem","7-No tester/no time","8-Not eligible")

data$hvt06.factor = factor(data$hvt06, levels = c("1","0"))
levels(data$hvt06.factor) = c("Done","Not done")

data$hvt06a.factor = factor(data$hvt06a, levels = c("4","9","5","6","7","8"))
levels(data$hvt06a.factor) = c("4-Refused","9-Not scheduled/Not applicable","5-Unable (Physical or mental","6-Equipment problem","7-No tester/no time","8-Not eligible")

data$hvt07.factor = factor(data$hvt07, levels = c("1","0"))
levels(data$hvt07.factor) = c("Done","Not done")

data$hvt07a.factor = factor(data$hvt07a, levels = c("4","9","5","6","7","8"))
levels(data$hvt07a.factor) = c("4-Refused","9-Not scheduled/Not applicable","5-Unable (Physical or mental","6-Equipment problem","7-No tester/no time","8-Not eligible")

data$hvt08.factor = factor(data$hvt08, levels = c("1","0"))
levels(data$hvt08.factor) = c("Done","Not done")

data$hvt08a.factor = factor(data$hvt08a, levels = c("9","4","5","6","7","8"))
levels(data$hvt08a.factor) = c("9-Not scheduled/Not applicable","4-Refused","5-Unable (Physical or mental","6-Equipment problem","7-No tester/no time","8-Not eligible")

data$hvt09.factor = factor(data$hvt09, levels = c("1","0"))
levels(data$hvt09.factor) = c("Done","Not done")

data$hvt09a.factor = factor(data$hvt09a, levels = c("4","9","5","8","6","7"))
levels(data$hvt09a.factor) = c("4-Refused","9-Not scheduled/Not applicable","5-Unable (Physical or mental","8-Not eligible","6-Equipment problem","7-No tester/no time")

data$hvt10.factor = factor(data$hvt10, levels = c("1","0","2"))
levels(data$hvt10.factor) = c("Done","Not done","Proxy")

data$hvt10a.factor = factor(data$hvt10a, levels = c("4","9","5","6","7","8"))
levels(data$hvt10a.factor) = c("4-Refused","9-Not scheduled/Not applicable","5-Unable (Physical or mental","6-Equipment problem","7-No tester/no time","8-Not eligible")

data$hvt10b.factor = factor(data$hvt10b, levels = c("1"))
levels(data$hvt10b.factor) = c("To be rescheduled")

data$hvt11.factor = factor(data$hvt11, levels = c("1","0","2"))
levels(data$hvt11.factor) = c("Done","Not done","Proxy")

data$hvt11a.factor = factor(data$hvt11a, levels = c("9","4","7","5","8","6"))
levels(data$hvt11a.factor) = c("9-Not scheduled/Not applicable","4-Refused","7-No tester/no time","5-Unable (Physical or mental","8-Not eligible","6-Equipment problem")

data$hvt11b.factor = factor(data$hvt11b, levels = c("1"))
levels(data$hvt11b.factor) = c("To be rescheduled")

data$hvt17.factor = factor(data$hvt17, levels = c("1","0"))
levels(data$hvt17.factor) = c("Done","Not done")

data$hvt17a.factor = factor(data$hvt17a, levels = c("9","4","5","6","7","8"))
levels(data$hvt17a.factor) = c("9-Not scheduled/Not applicable","4-Refused","5-Unable (Physical or mental","6-Equipment problem","7-No tester/no time","8-Not eligible")

data$hvt18.factor = factor(data$hvt18, levels = c("0","1","2"))
levels(data$hvt18.factor) = c("Not done","Done","Proxy")

data$hvt18a.factor = factor(data$hvt18a, levels = c("9","4","5","6","7","8"))
levels(data$hvt18a.factor) = c("9-Not scheduled/Not applicable","4-Refused","5-Unable (Physical or mental","6-Equipment problem","7-No tester/no time","8-Not eligible")

data$hvt12.factor = factor(data$hvt12, levels = c("1","0"))
levels(data$hvt12.factor) = c("Done","Not done")

data$hvt12a.factor = factor(data$hvt12a, levels = c("9","4","5","6","7","8"))
levels(data$hvt12a.factor) = c("9-Not scheduled/Not applicable","4-Refused","5-Unable (Physical or mental","6-Equipment problem","7-No tester/no time","8-Not eligible")

data$hvt13.factor = factor(data$hvt13, levels = c("3","0","1"))
levels(data$hvt13.factor) = c("Consented","Not done","Done")

data$hvt13a.factor = factor(data$hvt13a, levels = c("4","9","5","6","7","8"))
levels(data$hvt13a.factor) = c("4-Refused","9-Not scheduled/Not applicable","5-Unable (Physical or mental","6-Equipment problem","7-No tester/no time","8-Not eligible")

data$hvt14.factor = factor(data$hvt14, levels = c("3","0","1"))
levels(data$hvt14.factor) = c("Consented","Not done","Done")

data$hvt14a.factor = factor(data$hvt14a, levels = c("4","9","5","6","7","8"))
levels(data$hvt14a.factor) = c("4-Refused","9-Not scheduled/Not applicable","5-Unable (Physical or mental","6-Equipment problem","7-No tester/no time","8-Not eligible")

data$hvt19.factor = factor(data$hvt19, levels = c("0","1","3"))
levels(data$hvt19.factor) = c("Not done","Done","Consented")

data$hvt19a.factor = factor(data$hvt19a, levels = c("9","4","7","5","6","8"))
levels(data$hvt19a.factor) = c("9-Not scheduled/Not applicable","4-Refused","7-No tester/no time","5-Unable (Physical or mental","6-Equipment problem","8-Not eligible")

data$hvt19b.factor = factor(data$hvt19b, levels = c("1"))
levels(data$hvt19b.factor) = c("To be rescheduled")

data$hvt22.factor = factor(data$hvt22, levels = c("0","1"))
levels(data$hvt22.factor) = c("Not done","Done")

data$hvt22a.factor = factor(data$hvt22a, levels = c("9","4","7","6","5","8"))
levels(data$hvt22a.factor) = c("9-Not scheduled/Not applicable","4-Refused","7-No tester/no time","6-Equipment problem","5-Unable (Physical or mental","8-Not eligible")

data$hvfollowup.factor = factor(data$hvfollowup, levels = c("1","0"))
levels(data$hvfollowup.factor) = c("Yes","No")

data$hvreason.factor = factor(data$hvreason, levels = c("4","3","1","2","5"))
levels(data$hvreason.factor) = c(" Unable/unwilling to travel","Falls Risk","Caregiver","Cognitive Impairment","Clinic staff has concern for participants safety on the unit")

