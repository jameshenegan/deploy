#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_treadmill.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_tre)="CRF Version"
label(data$trm01)="Treadmill done"
label(data$trm01a)="Treadmill reason not done"
label(data$trm01b)="Treadmill contraindications"
label(data$trm02)="Oxygen consumption measured"
label(data$trm02a)="Oxygen consumption Reason not done"
label(data$trm03)="Reason exercise was stopped"
label(data$trm04)="Participant complained of chest pain"
label(data$trmborg)="Borg score"
label(data$trmf1)="Fatigability performed"
label(data$trmf2)="Was oxygen consumption measured during SS"
label(data$trmf3)="Which Fatigability speed setting was used"
label(data$tssborg5)="Borg score Fatigability 5 min"
label(data$tssborg10)="Borg score Fatigability 10 min"
label(data$tssborg15)="Borg score Fatigability 15 min"
label(data$trmf7)="Did participant complete Fatigability test"
label(data$trmf7a)="Reason exercise was stopped"
label(data$trmss1)="Steady Stage performed"
label(data$trmss2)="Was oxygen consumption measured during SS"
label(data$tssborg)="Borg score for Steady Stage"
label(data$auto_id_tre)="Unique Teleform Number"
label(data$testerid_tre)="Tester ID"

#Create new variables for factors
data$trm01.factor = factor(data$trm01, levels = c("1","0"))
levels(data$trm01.factor) = c("Yes","No")

data$trm01a.factor = factor(data$trm01a, levels = c("1","999","888","555","0","777","666"))
levels(data$trm01a.factor) = c("Contraindication","Technical problems","Refused","Physical problems","Other","Physical and cognitive","Cognitive")

data$trm01b.factor = factor(data$trm01b, levels = c("0","5","1","4","10","2","9","6","8","3","7"))
levels(data$trm01b.factor) = c("Other medical","Factors that would preclude subject from being able to walk on a treadmill (unsteady gait difficulty with ambulation etc)","Aortic stenosis of at least moderate severity","Uncontrolled hypertension (SBP >180 or DBP >110)","Poor health status","Symptoms suspicious for unstable angina","Resting heart rate >120","High grade AV block on resting EKG (Mobitz Type II 2nd or 3rd degree heart block)","LBBB with Hx of previous MI or coronary revascularization","Recent (<6 months) myocardial infaction or revascularization","Ate full meal within the past 2 hours")

data$trm02.factor = factor(data$trm02, levels = c("1","0"))
levels(data$trm02.factor) = c("Yes","No")

data$trm02a.factor = factor(data$trm02a, levels = c("555","999","888","1","777","666"))
levels(data$trm02a.factor) = c("Physical problems","Technical problems","Refused mouthpiece (or could not tolerate)","Other (please specify)","Physical and cognitive","Cognitive")

data$trm03.factor = factor(data$trm03, levels = c("6","3","0","2","1","11","5","9","8","10","4","7"))
levels(data$trm03.factor) = c("Fatigue","Dyspena","Other","Musculoskeletal pain","Tester request","Mouthpiece discomfort","Ischemia","Arrhythmia","Dizziness","Claudication","Chest pain","Nausea")

data$trm04.factor = factor(data$trm04, levels = c("0","1"))
levels(data$trm04.factor) = c("No","Yes")

data$trmf1.factor = factor(data$trmf1, levels = c("1","8","4","5","6","7","9"))
levels(data$trmf1.factor) = c("Yes","Not Eligible","Refused","Unable","Technical","No Tester","Not Scheduled")

data$trmf2.factor = factor(data$trmf2, levels = c("1","0"))
levels(data$trmf2.factor) = c("Yes","No")

data$trmf3.factor = factor(data$trmf3, levels = c("3","4","2","1"))
levels(data$trmf3.factor) = c("Max Treadmill speed 2.5 mph","Max Treadmill speed 3.0 mph","Max Treadmill speed 2.0 mph","Max Treadmill speed 1.5 mph")

data$trmf7.factor = factor(data$trmf7, levels = c("1","0"))
levels(data$trmf7.factor) = c("Yes","No")

data$trmf7a.factor = factor(data$trmf7a, levels = c("3","6","0","2","1","10","4","9","11","5","7","8"))
levels(data$trmf7a.factor) = c("Dyspena","Fatigue","Other","Musculoskeletal pain","Tester request","Claudication","Chest pain","Arrhythmia","Mouthpiece discomfort","Ischemia","Nausea","Dizziness")

data$trmss1.factor = factor(data$trmss1, levels = c("1","9","5","8","4","6","7"))
levels(data$trmss1.factor) = c("Yes","Not Scheduled","Unable","Not Eligible","Refused","Technical","No Tester")

data$trmss2.factor = factor(data$trmss2, levels = c("1","0"))
levels(data$trmss2.factor) = c("Yes","No")

