%let path_to_file = '../data-csv/oc_labprocessing.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE lab03_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE lab03c_
		0 = 'Other (please specify)'
		2 = 'Insufficient venous access'
		7 = 'Refused'
		9 = 'Technical problems'
		1 = 'Exclusion criteria (includes lower hemoglobin)'
		5 = 'Physical problems'
	;

	VALUE lab03a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lab03b_
		3 = 'Good (moderate thin veins adequate blood flow)'
		4 = 'Excellent (large veins no problems all tubes collected)'
		2 = 'Fair (this veins slow blood flow)'
		1 = 'Poor (small veins could not thread IV difficult blood blow)'
	;

	VALUE lab04_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE lab04a_
		1 = 'Fasting'
		0 = 'Not fasting'
	;

	VALUE lab01_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lab02_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lab07_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE lab06_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE lab06a_
		1 = 'Fasting'
		0 = 'Not fasting'
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

	INFORMAT crf_version_labpro $10.;
	FORMAT crf_version_labpro $10.;

	INFORMAT lab03 BEST32.;
	FORMAT lab03 BEST12.;

	INFORMAT lab03c BEST32.;
	FORMAT lab03c BEST12.;

	INFORMAT lab03a BEST32.;
	FORMAT lab03a BEST12.;

	INFORMAT lab03b BEST32.;
	FORMAT lab03b BEST12.;

	INFORMAT lab04 BEST32.;
	FORMAT lab04 BEST12.;

	INFORMAT lab04a BEST32.;
	FORMAT lab04a BEST12.;

	INFORMAT auto_id_labpro BEST32.;
	FORMAT auto_id_labpro BEST12.;

	INFORMAT lab01 BEST32.;
	FORMAT lab01 BEST12.;

	INFORMAT lab02 BEST32.;
	FORMAT lab02 BEST12.;

	INFORMAT lab07 BEST32.;
	FORMAT lab07 BEST12.;

	INFORMAT lab07a_labpro $5.;
	FORMAT lab07a_labpro $5.;

	INFORMAT lab07b_labpro $5.;
	FORMAT lab07b_labpro $5.;

	INFORMAT lab06 BEST32.;
	FORMAT lab06 BEST12.;

	INFORMAT lab06a BEST32.;
	FORMAT lab06a BEST12.;

	INFORMAT lab07d $5.;
	FORMAT lab07d $5.;

	INFORMAT testerid_labpro BEST32.;
	FORMAT testerid_labpro BEST12.;

	INPUT
		id_addi
		visit
		crf_version_labpro
		lab03
		lab03c
		lab03a
		lab03b
		lab04
		lab04a
		auto_id_labpro
		lab01
		lab02
		lab07
		lab07a_labpro
		lab07b_labpro
		lab06
		lab06a
		lab07d
		testerid_labpro
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_labpro = "CRF Version"
		lab03 = "Venipuncture done"
		lab03c = "Venipuncture reason not done"
		lab03a = "Venipuncture require more than 2 sticks"
		lab03b = "Veins quality assessment"
		lab04 = "Were all expected samples collected at first day"
		lab04a = "Fasting"
		auto_id_labpro = "Unique Teleform Number"
		lab01 = "Have you donated blood within 56 days"
		lab02 = "Have history of anemia"
		lab07 = "Was 24 hour urine collection obtained"
		lab07a_labpro = "24 hour urine begin time"
		lab07b_labpro = "24 hour urine end time"
		lab06 = "Urine specimen collected for UA"
		lab06a = "Urine Fasting or Non Fasting"
		lab07d = "Total time for 24 hr urine"
		testerid_labpro = "Tester ID"
	;
	FORMAT
		lab03 lab03_.
		lab03c lab03c_.
		lab03a lab03a_.
		lab03b lab03b_.
		lab04 lab04_.
		lab04a lab04a_.
		lab01 lab01_.
		lab02 lab02_.
		lab07 lab07_.
		lab06 lab06_.
		lab06a lab06a_.
	;
RUN;


        DATA oc_labprocessing;
            SET WORK.IMPORT;
        RUN;
        