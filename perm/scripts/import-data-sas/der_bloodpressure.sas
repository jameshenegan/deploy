%let path_to_file = '../data-csv/der_bloodpressure.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE htn_self_
		1 = 'Self-Reported History of HTN'
		0 = 'No Reported History of HTN'
	;

	VALUE bpjnc7_
		0 = 'Normal'
		1 = 'Pre-HTN'
		2 = 'Stage I HTN'
		3 = 'Stage II HTN'
	;

	VALUE bp2cat_
		0 = 'Normal: SBP < 130 and DBP < 80'
		1 = 'Elevated: SBP greater than or equal to 130 or DBP greater than or equal to 80'
	;

	VALUE htn_
		0 = 'Non-Hypertensive'
		1 = 'Hypertensive'
	;

	VALUE icrose_
		0 = 'Intermittent Claudication Sympoms Absent'
		1 = 'Intermittent Claudication Sympoms Present'
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

	INFORMAT htn_self BEST32.;
	FORMAT htn_self BEST12.;

	INFORMAT sbp BEST32.;
	FORMAT sbp BEST12.;

	INFORMAT dbp BEST32.;
	FORMAT dbp BEST12.;

	INFORMAT bpjnc7 BEST32.;
	FORMAT bpjnc7 BEST12.;

	INFORMAT bp2cat BEST32.;
	FORMAT bp2cat BEST12.;

	INFORMAT htn BEST32.;
	FORMAT htn BEST12.;

	INFORMAT icrose BEST32.;
	FORMAT icrose BEST12.;

	INPUT
		id_addi
		visit
		htn_self
		sbp
		dbp
		bpjnc7
		bp2cat
		htn
		icrose
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		htn_self = "Hypertension Status (using self-reported physician DX and BP medication use)"
		sbp = "Systolic Blood Pressure (mmHg)"
		dbp = "Diastolic Blood Pressure (mmHg)"
		bpjnc7 = "JNC 7 BP Classification"
		bp2cat = "Elevated BP Classification"
		htn = "Hypertension Status"
		icrose = "Classic Symptoms of Intermittent Claudication as Defined by Rose"
	;
	FORMAT
		htn_self htn_self_.
		bpjnc7 bpjnc7_.
		bp2cat bp2cat_.
		htn htn_.
		icrose icrose_.
	;
RUN;


        DATA der_bloodpressure;
            SET WORK.IMPORT;
        RUN;
        