%let path_to_file = '../data-csv/oc_ticsm.csv';
OPTIONS nofmterr;

    
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

	INFORMAT crf_version_tic $8.;
	FORMAT crf_version_tic $8.;

	INFORMAT ticsm1 BEST32.;
	FORMAT ticsm1 BEST12.;

	INFORMAT ticsm2 BEST32.;
	FORMAT ticsm2 BEST12.;

	INFORMAT ticsm3 BEST32.;
	FORMAT ticsm3 BEST12.;

	INFORMAT ticsm4 BEST32.;
	FORMAT ticsm4 BEST12.;

	INFORMAT ticsm5 BEST32.;
	FORMAT ticsm5 BEST12.;

	INFORMAT ticsm6 BEST32.;
	FORMAT ticsm6 BEST12.;

	INFORMAT ticsm7 BEST32.;
	FORMAT ticsm7 BEST12.;

	INFORMAT ticsm8 BEST32.;
	FORMAT ticsm8 BEST12.;

	INFORMAT ticsm9 BEST32.;
	FORMAT ticsm9 BEST12.;

	INFORMAT ticsm10 BEST32.;
	FORMAT ticsm10 BEST12.;

	INFORMAT ticsm11 BEST32.;
	FORMAT ticsm11 BEST12.;

	INFORMAT ticsm12 BEST32.;
	FORMAT ticsm12 BEST12.;

	INFORMAT ticsm13 BEST32.;
	FORMAT ticsm13 BEST12.;

	INFORMAT ticsm14 BEST32.;
	FORMAT ticsm14 BEST12.;

	INFORMAT ticsm15 BEST32.;
	FORMAT ticsm15 BEST12.;

	INFORMAT ticsm16 BEST32.;
	FORMAT ticsm16 BEST12.;

	INFORMAT ticsm_subtot BEST32.;
	FORMAT ticsm_subtot BEST12.;

	INFORMAT auto_id_tic BEST32.;
	FORMAT auto_id_tic BEST12.;

	INFORMAT testerid_tic BEST32.;
	FORMAT testerid_tic BEST12.;

	INPUT
		id_addi
		visit
		crf_version_tic
		ticsm1
		ticsm2
		ticsm3
		ticsm4
		ticsm5
		ticsm6
		ticsm7
		ticsm8
		ticsm9
		ticsm10
		ticsm11
		ticsm12
		ticsm13
		ticsm14
		ticsm15
		ticsm16
		ticsm_subtot
		auto_id_tic
		testerid_tic
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_tic = "CRF Version"
		ticsm1 = "TICSm1 Score"
		ticsm2 = "TICSm2 Score"
		ticsm3 = "TICSm3 Score Recite words"
		ticsm4 = "TICSm4 Score"
		ticsm5 = "TICSm5 Score What do people cut paper with"
		ticsm6 = "TICSm6 Score How many things in a dozen"
		ticsm7 = "TICSm7 Score What do you call the prickly green plant that lives in the desert"
		ticsm8 = "TICSm8 Score What animal does wool come from"
		ticsm9 = "TICSm9 Score Say no ifs ands or buts"
		ticsm10 = "TICSm10 Score Say Methodist Episcopal"
		ticsm11 = "TICSm11 Score Who is the president of the United States"
		ticsm12 = "TICSm12 Score Who is the vice president of the United States"
		ticsm13 = "TICSm13 Score Tap with finger 5 times"
		ticsm14 = "TICSm14 Score opposite of west"
		ticsm15 = "TICSm15 Score opposite of generous"
		ticsm16 = "TICSm16 Score Recall words from earlier"
		ticsm_subtot = "Validated Score"
		auto_id_tic = "Unique Teleform Number"
		testerid_tic = "Tester ID"
	;
RUN;


        DATA oc_ticsm;
            SET WORK.IMPORT;
        RUN;
        