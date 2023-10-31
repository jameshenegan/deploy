%let path_to_file = '../data-csv/oc_holter.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE holdone_
		1 = 'Yes'
		4 = '4-Pacemaker'
		9 = '9-Technical problems'
		8 = '8-Refused Holter but could do'
		5 = '5-Physical problems'
		6 = '6-Mental problems'
		7 = '7-Physical & Mental problems'
	;

	VALUE hol2001_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hol02ap_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE hol02bp_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE ogtt01_hol_
		0 = 'Not Done'
		1 = 'Forgot to Press Holter Button'
	;

	VALUE ogtt01a_
		1 = 'Day 1'
		2 = 'Day 2'
	;

	VALUE pe04_hol_
		0 = 'Not Done'
		1 = 'Forgot to Press Holter Button'
	;

	VALUE pe04a_
		1 = 'Day 1'
		2 = 'Day 2'
	;

	VALUE hol04ap_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE hol04cp_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE tm10_
		1 = 'Forgot to Press Holter Button'
		0 = 'Not Done'
	;

	VALUE tm10a_
		1 = 'Day 1'
		2 = 'Day 2'
	;

	VALUE hol10ap_
		2 = 'Pm'
		1 = 'Am'
	;

	VALUE hol10cp_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE hol1001_
		2 = 'Sinus with atrial ectopic beats'
		0 = 'Sinus rhythm'
		4 = 'Sinus with wandering atrial pacemaker'
		1 = 'Sinus with sinus arrhythmia'
		3 = 'Rhythm other than sinus'
	;

	VALUE hol2002_
		0 = 'Absent'
		1 = 'Present'
	;

	VALUE hol3001_
		0 = 'Absent'
		1 = '1st degree AV block'
		3 = '2nd degree AV (Mobitz Type II)'
		2 = '2nd degree AV block (Wenckebach Mobitz Type I)'
		4 = '3rd degree AV block'
	;

	VALUE hol4001_
		0 = 'Absent'
		2 = 'Mostly Day'
		1 = 'Mostly Night'
		3 = 'Equally Night and Day'
	;

	VALUE hol5001_
		0 = 'Absent'
		1 = 'Present'
	;

	VALUE hol5002_
		1 = 'QRS 0.12'
		3 = 'LBBB (QRS > 0.12)'
		2 = 'RBBB (QRS > 0.12)'
		4 = 'Other IVCD'
	;

	VALUE hol6001_
		0 = 'Absent'
		1 = 'Present'
	;

	VALUE hol6002_
		2 = 'Mostly day'
		1 = 'Mostly night'
		3 = 'Equally night and day'
	;

	VALUE hol6003_
		0 = 'Absent'
		1 = 'Present'
	;

	VALUE hol6012_
		5 = 'Other'
		1 = 'A. Fib. Continuous'
		6 = 'Combination'
		3 = 'A. Fib. more than one episode'
		2 = 'A. Fib. single episode'
		4 = 'A. Flutter'
	;

	VALUE hol7001_
		0 = 'Absent'
		1 = 'Present'
	;

	VALUE hol7002_
		2 = 'Mostly day'
		1 = 'Mostly night'
		3 = 'Equally night and day'
	;

	VALUE hol7003_
		0 = 'Absent'
		1 = 'Present'
	;

	VALUE hol8001_
		2 = 'Good'
		3 = 'Excellent'
		0 = 'Very poor'
		1 = 'Poor but probably usable'
	;

RUN;

    
DATA WORK.IMPORT;
	%let _EFIERR_ = 0;
	INFILE &path_to_file.
	DELIMITER = ','
	MISSOVER
	DSD
	FIRSTOBS = 2;                

	INFORMAT id_addi BEST32.;
	FORMAT id_addi BEST12.;

	INFORMAT visit BEST32.;
	FORMAT visit BEST12.;

	INFORMAT crf_version_hol $8.;
	FORMAT crf_version_hol $8.;

	INFORMAT holdone BEST32.;
	FORMAT holdone BEST12.;

	INFORMAT hol2001 BEST32.;
	FORMAT hol2001 BEST12.;

	INFORMAT hol02a $5.;
	FORMAT hol02a $5.;

	INFORMAT hol02ap BEST32.;
	FORMAT hol02ap BEST12.;

	INFORMAT hol02b $5.;
	FORMAT hol02b $5.;

	INFORMAT hol02bp BEST32.;
	FORMAT hol02bp BEST12.;

	INFORMAT hol02c BEST32.;
	FORMAT hol02c BEST12.;

	INFORMAT ogtt01_hol BEST32.;
	FORMAT ogtt01_hol BEST12.;

	INFORMAT ogtt01a BEST32.;
	FORMAT ogtt01a BEST12.;

	INFORMAT hol03a $5.;
	FORMAT hol03a $5.;

	INFORMAT hol03b BEST32.;
	FORMAT hol03b BEST12.;

	INFORMAT hol03c $5.;
	FORMAT hol03c $5.;

	INFORMAT hol03d BEST32.;
	FORMAT hol03d BEST12.;

	INFORMAT pe04_hol BEST32.;
	FORMAT pe04_hol BEST12.;

	INFORMAT petid BEST32.;
	FORMAT petid BEST12.;

	INFORMAT pe04a BEST32.;
	FORMAT pe04a BEST12.;

	INFORMAT hol04a $5.;
	FORMAT hol04a $5.;

	INFORMAT hol04ap BEST32.;
	FORMAT hol04ap BEST12.;

	INFORMAT hol04b BEST32.;
	FORMAT hol04b BEST12.;

	INFORMAT hol04c $5.;
	FORMAT hol04c $5.;

	INFORMAT hol04cp BEST32.;
	FORMAT hol04cp BEST12.;

	INFORMAT hol04d BEST32.;
	FORMAT hol04d BEST12.;

	INFORMAT hol05a $5.;
	FORMAT hol05a $5.;

	INFORMAT hol05c $5.;
	FORMAT hol05c $5.;

	INFORMAT hol05b BEST32.;
	FORMAT hol05b BEST12.;

	INFORMAT hol05d BEST32.;
	FORMAT hol05d BEST12.;

	INFORMAT hol06a $5.;
	FORMAT hol06a $5.;

	INFORMAT hol06c $5.;
	FORMAT hol06c $5.;

	INFORMAT hol06b BEST32.;
	FORMAT hol06b BEST12.;

	INFORMAT hol06d BEST32.;
	FORMAT hol06d BEST12.;

	INFORMAT hol07a $5.;
	FORMAT hol07a $5.;

	INFORMAT hol07c $5.;
	FORMAT hol07c $5.;

	INFORMAT hol07b BEST32.;
	FORMAT hol07b BEST12.;

	INFORMAT hol07d BEST32.;
	FORMAT hol07d BEST12.;

	INFORMAT hol08a $5.;
	FORMAT hol08a $5.;

	INFORMAT hol08c $5.;
	FORMAT hol08c $5.;

	INFORMAT hol08b BEST32.;
	FORMAT hol08b BEST12.;

	INFORMAT hol08d BEST32.;
	FORMAT hol08d BEST12.;

	INFORMAT hol09a $5.;
	FORMAT hol09a $5.;

	INFORMAT hol09c $5.;
	FORMAT hol09c $5.;

	INFORMAT hol09b BEST32.;
	FORMAT hol09b BEST12.;

	INFORMAT hol09d BEST32.;
	FORMAT hol09d BEST12.;

	INFORMAT tm10 BEST32.;
	FORMAT tm10 BEST12.;

	INFORMAT tmtid BEST32.;
	FORMAT tmtid BEST12.;

	INFORMAT tm10a BEST32.;
	FORMAT tm10a BEST12.;

	INFORMAT hol10a $5.;
	FORMAT hol10a $5.;

	INFORMAT hol10ap BEST32.;
	FORMAT hol10ap BEST12.;

	INFORMAT hol10c $5.;
	FORMAT hol10c $5.;

	INFORMAT hol10cp BEST32.;
	FORMAT hol10cp BEST12.;

	INFORMAT hol10b BEST32.;
	FORMAT hol10b BEST12.;

	INFORMAT hol10d BEST32.;
	FORMAT hol10d BEST12.;

	INFORMAT hol11a $5.;
	FORMAT hol11a $5.;

	INFORMAT hol11c $5.;
	FORMAT hol11c $5.;

	INFORMAT hol11b BEST32.;
	FORMAT hol11b BEST12.;

	INFORMAT hol11d BEST32.;
	FORMAT hol11d BEST12.;

	INFORMAT holt1d1 $1.;
	FORMAT holt1d1 $1.;

	INFORMAT holaqid BEST32.;
	FORMAT holaqid BEST12.;

	INFORMAT holinid BEST32.;
	FORMAT holinid BEST12.;

	INFORMAT hol1001 BEST32.;
	FORMAT hol1001 BEST12.;

	INFORMAT hol2002 BEST32.;
	FORMAT hol2002 BEST12.;

	INFORMAT hol2003 BEST32.;
	FORMAT hol2003 BEST12.;

	INFORMAT hol3001 BEST32.;
	FORMAT hol3001 BEST12.;

	INFORMAT hol4001 BEST32.;
	FORMAT hol4001 BEST12.;

	INFORMAT hol5001 BEST32.;
	FORMAT hol5001 BEST12.;

	INFORMAT hol5002 BEST32.;
	FORMAT hol5002 BEST12.;

	INFORMAT hol6001 BEST32.;
	FORMAT hol6001 BEST12.;

	INFORMAT hol6002 BEST32.;
	FORMAT hol6002 BEST12.;

	INFORMAT hol6003 BEST32.;
	FORMAT hol6003 BEST12.;

	INFORMAT hol6012 BEST32.;
	FORMAT hol6012 BEST12.;

	INFORMAT hol7001 BEST32.;
	FORMAT hol7001 BEST12.;

	INFORMAT hol7002 BEST32.;
	FORMAT hol7002 BEST12.;

	INFORMAT hol7003 BEST32.;
	FORMAT hol7003 BEST12.;

	INFORMAT hol8001 BEST32.;
	FORMAT hol8001 BEST12.;

	INFORMAT offsite_id BEST32.;
	FORMAT offsite_id BEST12.;

	INFORMAT holquality BEST32.;
	FORMAT holquality BEST12.;

	INFORMAT auto_id_hol BEST32.;
	FORMAT auto_id_hol BEST12.;

	INFORMAT testerid_hol BEST32.;
	FORMAT testerid_hol BEST12.;

	INFORMAT testerid_1_hol BEST32.;
	FORMAT testerid_1_hol BEST12.;

	INPUT
		id_addi
		visit
		crf_version_hol
		holdone
		hol2001
		hol02a
		hol02ap
		hol02b
		hol02bp
		hol02c
		ogtt01_hol
		ogtt01a
		hol03a
		hol03b
		hol03c
		hol03d
		pe04_hol
		petid
		pe04a
		hol04a
		hol04ap
		hol04b
		hol04c
		hol04cp
		hol04d
		hol05a
		hol05c
		hol05b
		hol05d
		hol06a
		hol06c
		hol06b
		hol06d
		hol07a
		hol07c
		hol07b
		hol07d
		hol08a
		hol08c
		hol08b
		hol08d
		hol09a
		hol09c
		hol09b
		hol09d
		tm10
		tmtid
		tm10a
		hol10a
		hol10ap
		hol10c
		hol10cp
		hol10b
		hol10d
		hol11a
		hol11c
		hol11b
		hol11d
		holt1d1
		holaqid
		holinid
		hol1001
		hol2002
		hol2003
		hol3001
		hol4001
		hol5001
		hol5002
		hol6001
		hol6002
		hol6003
		hol6012
		hol7001
		hol7002
		hol7003
		hol8001
		offsite_id
		holquality
		auto_id_hol
		testerid_hol
		testerid_1_hol
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_hol = "CRF Version"
		holdone = "Was holter done"
		hol2001 = "Does participant have pacemaker"
		hol02a = "Holter hook up begin time"
		hol02ap = "Holter hook up begin time AmPm"
		hol02b = "Holter hook up end time"
		hol02bp = "Holter hook up end time AmPm"
		hol02c = "Holter end event"
		ogtt01_hol = "OGTT not done or forgot to press holter button"
		ogtt01a = "OGTT day"
		hol03a = "OGTT begin time"
		hol03b = "OGTT begin event number"
		hol03c = "OGTT end time"
		hol03d = "OGTT end event number"
		pe04_hol = "Physical Exam not done or forgot to press holter button"
		petid = "Physical Exam tester ID"
		pe04a = "Physical Exam day"
		hol04a = "Physical Exam begin time"
		hol04ap = "Physical Exam begin time AmPm"
		hol04b = "Physical Exam begin event number"
		hol04c = "Physical Exam end time"
		hol04cp = "Physical Exam end time AmPm"
		hol04d = "Physical Exam end event number"
		hol05a = "Sleep time begin time"
		hol05c = "Sleep time end time"
		hol05b = "Sleep time begin event number"
		hol05d = "Sleep time end event number"
		hol06a = "Nap time begin time"
		hol06c = "Nap time end time"
		hol06b = "Nap time begin event number"
		hol06d = "Nap time end event number"
		hol07a = "GAIT begin time"
		hol07c = "GAIT end time"
		hol07b = "GAIT begin event number"
		hol07d = "GAIT end event number"
		hol08a = "Finger tapping begin time"
		hol08c = "Finger tapping end time"
		hol08b = "Finger tapping begin event number"
		hol08d = "Finger tapping end event number"
		hol09a = "DEXA scan begin time"
		hol09c = "DEXA scan end time"
		hol09b = "DEXA scan begin event number"
		hol09d = "DEXA scan end event number"
		tm10 = "Treadmill not done or forgot to press holter button"
		tmtid = "Treadmill tester ID"
		tm10a = "Treadmill day"
		hol10a = "Treadmill begin time"
		hol10ap = "Treadmill begin time AmPm"
		hol10c = "Treadmill end time"
		hol10cp = "Treadmill end time AmPm"
		hol10b = "Treadmill begin event number"
		hol10d = "Treadmill end event number"
		hol11a = "PFT begin time"
		hol11c = "PFT end time"
		hol11b = "PFT begin event number"
		hol11d = "PFT end event number"
		holt1d1 = "Tester ID comment 1"
		holaqid = "Acquired Tester ID"
		holinid = "Interpreter Tester ID"
		hol1001 = "Rhythm"
		hol2002 = "Detected pacer"
		hol2003 = "Percent paced"
		hol3001 = "AV Blocks"
		hol4001 = "Distribution of pauses"
		hol5001 = "Intraventricular blocks"
		hol5002 = "IV Block type"
		hol6001 = "Supraventricular arrhythmias"
		hol6002 = "Distribution of SV arrhythmias"
		hol6003 = "SV symptom:"
		hol6012 = "SVT type"
		hol7001 = "Ventricular arrhythmias"
		hol7002 = "Distribution of Ventricular arrhythmias"
		hol7003 = "Ventricular arrhythmias symptom"
		hol8001 = "Recording quality"
		offsite_id = "Offsite tester ID"
		holquality = "Holter Quality"
		auto_id_hol = "Unique Teleform Number"
		testerid_hol = "Tester ID"
		testerid_1_hol = "Tester ID 1"
	;
	FORMAT
		holdone holdone_.
		hol2001 hol2001_.
		hol02ap hol02ap_.
		hol02bp hol02bp_.
		ogtt01_hol ogtt01_hol_.
		ogtt01a ogtt01a_.
		pe04_hol pe04_hol_.
		pe04a pe04a_.
		hol04ap hol04ap_.
		hol04cp hol04cp_.
		tm10 tm10_.
		tm10a tm10a_.
		hol10ap hol10ap_.
		hol10cp hol10cp_.
		hol1001 hol1001_.
		hol2002 hol2002_.
		hol3001 hol3001_.
		hol4001 hol4001_.
		hol5001 hol5001_.
		hol5002 hol5002_.
		hol6001 hol6001_.
		hol6002 hol6002_.
		hol6003 hol6003_.
		hol6012 hol6012_.
		hol7001 hol7001_.
		hol7002 hol7002_.
		hol7003 hol7003_.
		hol8001 hol8001_.
	;
RUN;


        DATA oc_holter;
            SET WORK.IMPORT;
        RUN;
        