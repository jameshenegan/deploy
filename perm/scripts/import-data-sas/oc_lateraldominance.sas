%let path_to_file = '../data-csv/oc_lateraldominance.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE lhd01_
		1 = 'Right'
		2 = 'Left'
		3 = 'Ambidextrous'
	;

	VALUE lhd02_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lhd04a_
		5 = 'Right Always'
		1 = 'Left Always'
		4 = 'Right Usually'
		2 = 'Left Usually'
		3 = 'Equally'
	;

	VALUE lhd04b_
		5 = 'Right Always'
		1 = 'Left Always'
		4 = 'Right Usually'
		3 = 'Equally'
		2 = 'Left Usually'
	;

	VALUE lhd04c_
		5 = 'Right Always'
		4 = 'Right Usually'
		1 = 'Left Always'
		3 = 'Equally'
		2 = 'Left Usually'
	;

	VALUE lhd04d_
		5 = 'Right Always'
		4 = 'Right Usually'
		1 = 'Left Always'
		3 = 'Equally'
		2 = 'Left Usually'
	;

	VALUE lhd04e_
		5 = 'Right Always'
		4 = 'Right Usually'
		1 = 'Left Always'
		2 = 'Left Usually'
		3 = 'Equally'
	;

	VALUE lhd04f_
		5 = 'Right Always'
		4 = 'Right Usually'
		1 = 'Left Always'
		3 = 'Equally'
		2 = 'Left Usually'
	;

	VALUE lhd04g_
		5 = 'Right Always'
		4 = 'Right Usually'
		1 = 'Left Always'
		3 = 'Equally'
		2 = 'Left Usually'
	;

	VALUE lhd04h_
		5 = 'Right Always'
		4 = 'Right Usually'
		1 = 'Left Always'
		3 = 'Equally'
		2 = 'Left Usually'
	;

	VALUE lhd04i_
		5 = 'Right Always'
		4 = 'Right Usually'
		1 = 'Left Always'
		3 = 'Equally'
		2 = 'Left Usually'
	;

	VALUE lhd04j_
		5 = 'Right Always'
		4 = 'Right Usually'
		3 = 'Equally'
		1 = 'Left Always'
		2 = 'Left Usually'
	;

	VALUE lhd04k_
		5 = 'Right Always'
		4 = 'Right Usually'
		1 = 'Left Always'
		3 = 'Equally'
		2 = 'Left Usually'
	;

	VALUE lhd04l_
		5 = 'Right Always'
		4 = 'Right Usually'
		3 = 'Equally'
		1 = 'Left Always'
		2 = 'Left Usually'
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

	INFORMAT crf_version_latdom $8.;
	FORMAT crf_version_latdom $8.;

	INFORMAT lhd01 BEST32.;
	FORMAT lhd01 BEST12.;

	INFORMAT lhd02 BEST32.;
	FORMAT lhd02 BEST12.;

	INFORMAT lhd02age BEST32.;
	FORMAT lhd02age BEST12.;

	INFORMAT lhd04a BEST32.;
	FORMAT lhd04a BEST12.;

	INFORMAT lhd04b BEST32.;
	FORMAT lhd04b BEST12.;

	INFORMAT lhd04c BEST32.;
	FORMAT lhd04c BEST12.;

	INFORMAT lhd04d BEST32.;
	FORMAT lhd04d BEST12.;

	INFORMAT lhd04e BEST32.;
	FORMAT lhd04e BEST12.;

	INFORMAT lhd04f BEST32.;
	FORMAT lhd04f BEST12.;

	INFORMAT lhd04g BEST32.;
	FORMAT lhd04g BEST12.;

	INFORMAT lhd04h BEST32.;
	FORMAT lhd04h BEST12.;

	INFORMAT lhd04i BEST32.;
	FORMAT lhd04i BEST12.;

	INFORMAT lhd04j BEST32.;
	FORMAT lhd04j BEST12.;

	INFORMAT lhd04k BEST32.;
	FORMAT lhd04k BEST12.;

	INFORMAT lhd04l BEST32.;
	FORMAT lhd04l BEST12.;

	INFORMAT auto_id_latdom BEST32.;
	FORMAT auto_id_latdom BEST12.;

	INFORMAT testerid_latdom BEST32.;
	FORMAT testerid_latdom BEST12.;

	INPUT
		id_addi
		visit
		crf_version_latdom
		lhd01
		lhd02
		lhd02age
		lhd04a
		lhd04b
		lhd04c
		lhd04d
		lhd04e
		lhd04f
		lhd04g
		lhd04h
		lhd04i
		lhd04j
		lhd04k
		lhd04l
		auto_id_latdom
		testerid_latdom
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_latdom = "CRF Version"
		lhd01 = "Describe your handedness"
		lhd02 = "Did you ever change your writing hand"
		lhd02age = "If yes at what change writing hand"
		lhd04a = "Hand dominance writing"
		lhd04b = "Hand dominance drawing"
		lhd04c = "Hand dominance throwing"
		lhd04d = "Hand dominance hammer"
		lhd04e = "Hand dominance Scissors"
		lhd04f = "Hand dominance toothbrush"
		lhd04g = "Hand dominance knife without fork"
		lhd04h = "Hand dominance spoon"
		lhd04i = "Hand dominance screwdriver"
		lhd04j = "Hand dominance broom upper hand"
		lhd04k = "Hand dominance striking match"
		lhd04l = "Hand dominance opening box lid"
		auto_id_latdom = "Unique Teleform Number"
		testerid_latdom = "Tester ID"
	;
	FORMAT
		lhd01 lhd01_.
		lhd02 lhd02_.
		lhd04a lhd04a_.
		lhd04b lhd04b_.
		lhd04c lhd04c_.
		lhd04d lhd04d_.
		lhd04e lhd04e_.
		lhd04f lhd04f_.
		lhd04g lhd04g_.
		lhd04h lhd04h_.
		lhd04i lhd04i_.
		lhd04j lhd04j_.
		lhd04k lhd04k_.
		lhd04l lhd04l_.
	;
RUN;


        DATA oc_lateraldominance;
            SET WORK.IMPORT;
        RUN;
        