#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_vempandvog.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_vemandvog)="CRF Version"
label(data$vem0a)="WEBER sound the same in both ears"
label(data$vem0b)="WEBER sound heard louder"
label(data$vem0cr)="Mastoid process positive conduction Right"
label(data$vem0cl)="Mastoid process positive conduction Left"
label(data$vem0dr)="External auditory meatus positive perception Right"
label(data$vem0dl)="External auditory meatus positive perception Left"
label(data$vog0r)="Impacted Cerumen Right"
label(data$vog0l)="Impacted Cerumen Left"
label(data$vem01a)="OVEMP able to see target"
label(data$vem1la)="OVEMP Left Eye trace on top Ln1"
label(data$vem1lb)="OVEMP Left Eye trace on top Lp1"
label(data$vem1le)="OVEMP Left Eye trace on top Lamp"
label(data$vem1lg)="OVEMP Left Eye Calibration LpA"
label(data$vem1lh)="OVEMP Left Eye Calibration LnA"
label(data$vem1ra)="OVEMP Right Eye trace on top Ln1"
label(data$vem1rb)="OVEMP Right Eye trace on top Lp1"
label(data$vem1re)="OVEMP Right Eye trace on top Lamp"
label(data$vem1rg)="OVEMP Right Eye Calibration LpA"
label(data$vem1rh)="OVEMP Right Eye Calibration LnA"
label(data$vem2a)="CVEMP No conductive hearing loss"
label(data$vem2b)="CVEMP Can move the neck with no restriction or pain"
label(data$vem2ra)="CVEMP Right SCM Rp1"
label(data$vem2rb)="CVEMP Right SCM Rn1"
label(data$vem2rc)="CVEMP Right SCM Ramp"
label(data$vem2rd)="CVEMP Right SCM Rrec"
label(data$vem2la)="CVEMP Left SCM Lp1"
label(data$vem2lb)="CVEMP Left SCM Ln1"
label(data$vem2lc)="CVEMP Left SCM Lamp"
label(data$vem2ld)="CVEMP Left SCM Lrec"
label(data$vog31a)="VOG able to see target"
label(data$vog31b)="VOG can move neck without restriction or pain"
label(data$vog31c)="VOG No history of surgery in the blood vessels of the neck"
label(data$vog31d)="VOG Had had cervical spine surgery and can move the head from side to side without restriction or pain"
label(data$vog32almn)="VOG Left Horizontal neutral head position with 10 degree pitch MEAN"
label(data$vog32alsd)="VOG Left Horizontal neutral head position with 10 degree pitch Standard Deviation"
label(data$vog32armn)="VOG Right Horizontal neutral head position with 10 degree pitch MEAN"
label(data$vog32arsd)="VOG Right Horizontal neutral head position with 10 degree pitch Standard Deviation"
label(data$auto_id_vemandvog)="Unique Teleform Number"
label(data$vem1lf2)="OVEMP Left Eye trace on top Unknown"
label(data$vem1rf2)="OVEMP Right trace on top Unknown"
label(data$vem2re2)="CVEMP Right SCM Unknown"
label(data$vem2le2)="CVEMP Left SCM Unknown"
label(data$vog32auk2)="VOG Unknown"
label(data$vem1lc)="OVEMP Left Eye trace on top Ln1"
label(data$vem1ld)="OVEMP Left Eye trace on top Lp1"
label(data$vem1lf)="OVEMP Left Eye trace on top Unknown"
label(data$vem1rc)="OVEMP Right Eye trace on top Ln1"
label(data$vem1rd)="OVEMP Right Eye trace on top Lp1"
label(data$vem1rf)="OVEMP Right trace on top Unknown"
label(data$vem2re)="CVEMP Right SCM Unknown"
label(data$vem2le)="CVEMP Left SCM Unknown"
label(data$vog32auk)="VOG Unknown"
label(data$testerid_vemandvog)="Tester ID"

#Create new variables for factors
data$vem0a.factor = factor(data$vem0a, levels = c("1","0"))
levels(data$vem0a.factor) = c("Yes","No")

data$vem0b.factor = factor(data$vem0b, levels = c("1","0","2"))
levels(data$vem0b.factor) = c("Right Ear"," Unable to discern","Left Ear")

data$vem0cr.factor = factor(data$vem0cr, levels = c("1","0"))
levels(data$vem0cr.factor) = c("Yes","No")

data$vem0cl.factor = factor(data$vem0cl, levels = c("1","0"))
levels(data$vem0cl.factor) = c("Yes","No")

data$vem0dr.factor = factor(data$vem0dr, levels = c("1","0"))
levels(data$vem0dr.factor) = c("Yes","No")

data$vem0dl.factor = factor(data$vem0dl, levels = c("1","0"))
levels(data$vem0dl.factor) = c("Yes","No")

data$vog0r.factor = factor(data$vog0r, levels = c("0","1"))
levels(data$vog0r.factor) = c("No","Yes")

data$vog0l.factor = factor(data$vog0l, levels = c("0","1"))
levels(data$vog0l.factor) = c("No","Yes")

data$vem01a.factor = factor(data$vem01a, levels = c("1","0"))
levels(data$vem01a.factor) = c("Yes","No")

data$vem2a.factor = factor(data$vem2a, levels = c("1","0"))
levels(data$vem2a.factor) = c("True","False")

data$vem2b.factor = factor(data$vem2b, levels = c("1","0"))
levels(data$vem2b.factor) = c("Yes","No")

data$vog31a.factor = factor(data$vog31a, levels = c("1","0"))
levels(data$vog31a.factor) = c("Yes","No")

data$vog31b.factor = factor(data$vog31b, levels = c("1","0"))
levels(data$vog31b.factor) = c("Yes","No")

data$vog31c.factor = factor(data$vog31c, levels = c("1","0"))
levels(data$vog31c.factor) = c("True","False")

data$vog31d.factor = factor(data$vog31d, levels = c("1","0"))
levels(data$vog31d.factor) = c("True","False")

data$vem1lf2.factor = factor(data$vem1lf2, levels = c("7","4","6","5","2","1","3"))
levels(data$vem1lf2.factor) = c("Not Scheduled","Technical Difficulties","Time constraints","Refused but theoretically could do","Physical Problems","Not Eligible","Mental Problems")

data$vem1rf2.factor = factor(data$vem1rf2, levels = c("7","4","6","5","2","1","3"))
levels(data$vem1rf2.factor) = c("Not Scheduled","Technical Difficulties","Time constraints","Refused but theoretically could do","Physical Problems","Not Eligible","Mental Problems")

data$vem2re2.factor = factor(data$vem2re2, levels = c("7","4","6","2","5","1","3"))
levels(data$vem2re2.factor) = c("Not Scheduled","Technical Difficulties","Time constraints","Physical Problems","Refused but theoretically could do","Not Eligible","Mental Problems")

data$vem2le2.factor = factor(data$vem2le2, levels = c("7","4","6","2","5","1","3"))
levels(data$vem2le2.factor) = c("Not Scheduled","Technical Difficulties","Time constraints","Physical Problems","Refused but theoretically could do","Not Eligible","Mental Problems")

data$vog32auk2.factor = factor(data$vog32auk2, levels = c("7","2","4","6","1","5","3"))
levels(data$vog32auk2.factor) = c("Not Scheduled","Physical Problems","Technical Difficulties","Time constraints","Not Eligible","Refused but theoretically could do","Mental Problems")

data$vem1lf.factor = factor(data$vem1lf, levels = c("6","4","1","2","5","3"))
levels(data$vem1lf.factor) = c("Time constraints","Technical Difficulties","Not Eligible","Physical Problems","Refused but theoretically could do","Mental Problems")

data$vem1rf.factor = factor(data$vem1rf, levels = c("6","4","1","2","5","3"))
levels(data$vem1rf.factor) = c("Time constraints","Technical Difficulties","Not Eligible","Physical Problems","Refused but theoretically could do","Mental Problems")

data$vem2re.factor = factor(data$vem2re, levels = c("4","6","1","2","5","3"))
levels(data$vem2re.factor) = c("Technical Difficulties","Time constraints","Not Eligible","Physical Problems","Refused but theoretically could do","Mental Problems")

data$vem2le.factor = factor(data$vem2le, levels = c("6","4","1","2","5","3"))
levels(data$vem2le.factor) = c("Time constraints","Technical Difficulties","Not Eligible","Physical Problems","Refused but theoretically could do","Mental Problems")

data$vog32auk.factor = factor(data$vog32auk, levels = c("6","4","1","2","5","3"))
levels(data$vog32auk.factor) = c("Time constraints","Technical Difficulties","Not Eligible","Physical Problems","Refused but theoretically could do","Mental Problems")

