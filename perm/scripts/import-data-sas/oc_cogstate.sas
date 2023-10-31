%let path_to_file = '../data-csv/oc_cogstate.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE handprob_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE done_cogsta_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE rnd_
		1 = 'Other (please specify)'
		999 = 'Technical problems (includes no time or no tester)'
		555 = 'Physical problems'
		888 = 'Refused'
		666 = 'Mental problems'
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

	INFORMAT crf_version_cogsta $7.;
	FORMAT crf_version_cogsta $7.;

	INFORMAT randomizationid BEST32.;
	FORMAT randomizationid BEST12.;

	INFORMAT handprob BEST32.;
	FORMAT handprob BEST12.;

	INFORMAT done_cogsta BEST32.;
	FORMAT done_cogsta BEST12.;

	INFORMAT rnd BEST32.;
	FORMAT rnd BEST12.;

	INFORMAT testerid_cogsta BEST32.;
	FORMAT testerid_cogsta BEST12.;

	INPUT
		id_addi
		visit
		crf_version_cogsta
		randomizationid
		handprob
		done_cogsta
		rnd
		testerid_cogsta
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_cogsta = "CRF Version"
		randomizationid = "Randomization number"
		handprob = "Does the participant have physical hand problems"
		done_cogsta = "Was Cog State protocol completed"
		rnd = "Reason test not performed or unsatisfactory"
		testerid_cogsta = "Tester ID"
	;
	FORMAT
		handprob handprob_.
		done_cogsta done_cogsta_.
		rnd rnd_.
	;
RUN;


        DATA oc_cogstate;
            SET WORK.IMPORT;
        RUN;
        