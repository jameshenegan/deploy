%let path_to_file = '../data-csv/oc_fingertapping.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ftt01_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE fttdone_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE ftt02a_
		999 = 'Technical problems (includes no time or no tester)'
		1 = 'Other (please specify)'
		555 = 'Physical problems'
		666 = 'Mental problems'
		888 = 'Refused'
		777 = 'Physical and mental problems'
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

	INFORMAT crf_version_fintap $7.;
	FORMAT crf_version_fintap $7.;

	INFORMAT ftt01 BEST32.;
	FORMAT ftt01 BEST12.;

	INFORMAT fttdone BEST32.;
	FORMAT fttdone BEST12.;

	INFORMAT ftt02a BEST32.;
	FORMAT ftt02a BEST12.;

	INFORMAT auto_id_fintap BEST32.;
	FORMAT auto_id_fintap BEST12.;

	INFORMAT testerid_fintap BEST32.;
	FORMAT testerid_fintap BEST12.;

	INPUT
		id_addi
		visit
		crf_version_fintap
		ftt01
		fttdone
		ftt02a
		auto_id_fintap
		testerid_fintap
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_fintap = "CRF Version"
		ftt01 = "Does the participant have physical hand problems"
		fttdone = "Was finger tapping completed"
		ftt02a = "Reason test not performed or unsatisfactory"
		auto_id_fintap = "Unique Teleform Number"
		testerid_fintap = "Tester ID"
	;
	FORMAT
		ftt01 ftt01_.
		fttdone fttdone_.
		ftt02a ftt02a_.
	;
RUN;


        DATA oc_fingertapping;
            SET WORK.IMPORT;
        RUN;
        