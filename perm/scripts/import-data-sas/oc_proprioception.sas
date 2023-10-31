%let path_to_file = '../data-csv/oc_proprioception.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE pro01_
		1 = 'Attempted'
		0 = 'Not attempted'
	;

	VALUE pro01a_
		1 = 'Not enough time/not scheduled'
		3 = 'Technical/equipment problem'
		2 = 'No examiner available'
		8 = 'Other Physical problems'
		7 = 'Participant refused'
		6 = 'Examiner felt unsafe'
		5 = 'Unable to stand/walk'
		4 = 'Cognitively impaired'
		11 = 'Severely limited ankle range of motion (<10 degree dorsiflexion or plantar flexion)'
		12 = 'Unable to follow directions'
		10 = 'Lower limb braces ambulatory'
		9 = 'Lower limb amputations'
	;

	VALUE pro02_
		1 = 'All Correct'
		2 = 'Partially Correct'
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

	INFORMAT crf_version_pro $8.;
	FORMAT crf_version_pro $8.;

	INFORMAT pro01 BEST32.;
	FORMAT pro01 BEST12.;

	INFORMAT pro01a BEST32.;
	FORMAT pro01a BEST12.;

	INFORMAT pro02 BEST32.;
	FORMAT pro02 BEST12.;

	INFORMAT pro02a $1.;
	FORMAT pro02a $1.;

	INFORMAT auto_id_pro BEST32.;
	FORMAT auto_id_pro BEST12.;

	INFORMAT pro02a_1 BEST32.;
	FORMAT pro02a_1 BEST12.;

	INFORMAT pro02a_2 BEST32.;
	FORMAT pro02a_2 BEST12.;

	INFORMAT pro02a_3 BEST32.;
	FORMAT pro02a_3 BEST12.;

	INFORMAT pro02a_4 BEST32.;
	FORMAT pro02a_4 BEST12.;

	INFORMAT testerid_pro BEST32.;
	FORMAT testerid_pro BEST12.;

	INPUT
		id_addi
		visit
		crf_version_pro
		pro01
		pro01a
		pro02
		pro02a
		auto_id_pro
		pro02a_1
		pro02a_2
		pro02a_3
		pro02a_4
		testerid_pro
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_pro = "CRF Version"
		pro01 = "Status of Proprioception test"
		pro01a = "Reason test not performed"
		pro02 = "Accuracy in threshold test"
		pro02a = "Partially correct threshold"
		auto_id_pro = "Unique Teleform Number"
		pro02a_1 = "Partially correct threshold : Threshold 1 (Checkbox Indicator)"
		pro02a_2 = "Partially correct threshold : Threshold 2 (Checkbox Indicator)"
		pro02a_3 = "Partially correct threshold : Threshold 3 (Checkbox Indicator)"
		pro02a_4 = "Partially correct threshold : Threshold 4 (Checkbox Indicator)"
		testerid_pro = "Tester ID"
	;
	FORMAT
		pro01 pro01_.
		pro01a pro01a_.
		pro02 pro02_.
	;
RUN;


        DATA oc_proprioception;
            SET WORK.IMPORT;
        RUN;
        