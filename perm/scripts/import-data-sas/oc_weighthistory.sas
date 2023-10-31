%let path_to_file = '../data-csv/oc_weighthistory.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE whxdone_
		1 = 'Yes'
		9 = '(9) Technical problems (no time/not scheduled)'
		7 = '(7) Refused to answer'
		5 = '(5) Physical (communication problem)'
		8 = "(8) Don't remember any weight"
		6 = '(6) Cannot understand the questions'
	;

	VALUE whx1nd_
		8 = '(8) DK/DR'
		7 = '(7) Refused'
	;

	VALUE whx2nd_
		8 = '(8) DK/DR'
		7 = '(7) Refused'
	;

	VALUE whx3nd_
		8 = '(8) DK/DR'
		7 = '(7) Refused'
	;

	VALUE whx4nd_
		8 = '(8) DK/DR'
		9 = '(9) NA'
		7 = '(7) Refused'
	;

	VALUE whx5and_
		8 = '(8) DK/DR'
		7 = '(7) Refused'
	;

	VALUE whx5bnd_
		8 = '(8) DK/DR'
		7 = '(7) Refused'
	;

	VALUE whx6and_
		8 = '(8) DK/DR'
		7 = '(7) Refused'
	;

	VALUE whx6bnd_
		8 = '(8) DK/DR'
		7 = '(7) Refused'
	;

	VALUE whx7_
		2 = '(2) You have had a gradual gain in weight (>10 lbs)'
		1 = '(1) Your weight has stayed about the same +/- 10 lbs'
		5 = '(5) Your weight has repeatedly gone up and down again'
		3 = '(3) You have had a gradual loss in weight'
		4 = '(4) You have had a marked loss in weight and then kept it off'
		8 = '(8) DK/DR'
		7 = '(7) Refused'
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

	INFORMAT crf_version_weihis $7.;
	FORMAT crf_version_weihis $7.;

	INFORMAT whxdone BEST32.;
	FORMAT whxdone BEST12.;

	INFORMAT whx1 BEST32.;
	FORMAT whx1 BEST12.;

	INFORMAT whx1nd BEST32.;
	FORMAT whx1nd BEST12.;

	INFORMAT whx2 BEST32.;
	FORMAT whx2 BEST12.;

	INFORMAT whx2nd BEST32.;
	FORMAT whx2nd BEST12.;

	INFORMAT whx3 BEST32.;
	FORMAT whx3 BEST12.;

	INFORMAT whx3nd BEST32.;
	FORMAT whx3nd BEST12.;

	INFORMAT whx4 BEST32.;
	FORMAT whx4 BEST12.;

	INFORMAT whx4nd BEST32.;
	FORMAT whx4nd BEST12.;

	INFORMAT whx5a BEST32.;
	FORMAT whx5a BEST12.;

	INFORMAT whx5and BEST32.;
	FORMAT whx5and BEST12.;

	INFORMAT whx5b BEST32.;
	FORMAT whx5b BEST12.;

	INFORMAT whx5bnd BEST32.;
	FORMAT whx5bnd BEST12.;

	INFORMAT whx6a BEST32.;
	FORMAT whx6a BEST12.;

	INFORMAT whx6and BEST32.;
	FORMAT whx6and BEST12.;

	INFORMAT whx6b BEST32.;
	FORMAT whx6b BEST12.;

	INFORMAT whx6bnd BEST32.;
	FORMAT whx6bnd BEST12.;

	INFORMAT whx7 BEST32.;
	FORMAT whx7 BEST12.;

	INFORMAT auto_id_weihis BEST32.;
	FORMAT auto_id_weihis BEST12.;

	INFORMAT testerid_weihis BEST32.;
	FORMAT testerid_weihis BEST12.;

	INPUT
		id_addi
		visit
		crf_version_weihis
		whxdone
		whx1
		whx1nd
		whx2
		whx2nd
		whx3
		whx3nd
		whx4
		whx4nd
		whx5a
		whx5and
		whx5b
		whx5bnd
		whx6a
		whx6and
		whx6b
		whx6bnd
		whx7
		auto_id_weihis
		testerid_weihis
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_weihis = "CRF Version"
		whxdone = "Was weight history collected"
		whx1 = "Weight 1 year ago"
		whx1nd = "Reason Q1 not answered"
		whx2 = "Weight 10 years ago"
		whx2nd = "Reason Q2 not answered"
		whx3 = "Weight at age 25"
		whx3nd = "Reason Q3 not answered"
		whx4 = "Weight at age 50"
		whx4nd = "Reqson Q4 not answered"
		whx5a = "What is the most you have ever weighed"
		whx5and = "Reason Q5a not answered"
		whx5b = "How old were you then"
		whx5bnd = "Reason Q5b not answered"
		whx6a = "What is the least you have ever weighed"
		whx6and = "Reason Q6a not answered"
		whx6b = "How old were you then"
		whx6bnd = "Reason Q6b not answered"
		whx7 = "What would you say about your weight during adult life"
		auto_id_weihis = "Unique Teleform Number"
		testerid_weihis = "Tester ID"
	;
	FORMAT
		whxdone whxdone_.
		whx1nd whx1nd_.
		whx2nd whx2nd_.
		whx3nd whx3nd_.
		whx4nd whx4nd_.
		whx5and whx5and_.
		whx5bnd whx5bnd_.
		whx6and whx6and_.
		whx6bnd whx6bnd_.
		whx7 whx7_.
	;
RUN;


        DATA oc_weighthistory;
            SET WORK.IMPORT;
        RUN;
        