%let path_to_file = '../data-csv/oc_hvneurologicalassess.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE neu01_
		1 = 'Completed'
		0 = 'Not Completed'
	;

	VALUE neu01a_
		666 = '666 = mental problems'
		777 = '777 = physical and mental problems'
		888 = '888 = refused but theoretically could do'
		555 = '555 = physical problems'
		999 = '999 = technical problems'
	;

	VALUE neu02_
		1 = 'Completed'
		0 = 'Not Completed'
	;

	VALUE neu02a_
		888 = '888 = refused but theoretically could do'
		777 = '777 = physical and mental problems'
		555 = '555 = physical problems'
		666 = '666 = mental problems'
		999 = '999 = technical problems'
	;

	VALUE neu03_
		1 = 'Completed'
		0 = 'Not Completed'
	;

	VALUE neu03a_
		666 = '666 = mental problems'
		777 = '777 = physical and mental problems'
		555 = '555 = physical problems'
		888 = '888 = refused but theoretically could do'
		999 = '999 = technical problems'
	;

	VALUE neu04_
		1 = 'Completed'
		0 = 'Not Completed'
	;

	VALUE neu04a_
		777 = '777 = physical and mental problems'
		555 = '555 = physical problems'
		888 = '888 = refused but theoretically could do'
		666 = '666 = mental problems'
		999 = '999 = technical problems'
	;

	VALUE neu05_
		1 = 'Completed'
		0 = 'Not Completed'
	;

	VALUE neu05a_
		555 = '555 = physical problems'
		777 = '777 = physical and mental problems'
		666 = '666 = mental problems'
		888 = '888 = refused but theoretically could do'
		999 = '999 = technical problems'
	;

	VALUE neu06_
		1 = 'Completed'
		0 = 'Not Completed'
	;

	VALUE neu06a_
		555 = '555 = physical problems'
		777 = '777 = physical and mental problems'
		888 = '888 = refused but theoretically could do'
		666 = '666 = mental problems'
		999 = '999 = technical problems'
	;

	VALUE neu07_
		1 = 'Completed'
		0 = 'Not Completed'
	;

	VALUE neu07a_
		555 = '555 = physical problems'
		777 = '777 = physical and mental problems'
		888 = '888 = refused but theoretically could do'
		666 = '666 = mental problems'
		999 = '999 = technical problems'
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

	INFORMAT crf_version_hvneuass $7.;
	FORMAT crf_version_hvneuass $7.;

	INFORMAT neu01 BEST32.;
	FORMAT neu01 BEST12.;

	INFORMAT neu01a BEST32.;
	FORMAT neu01a BEST12.;

	INFORMAT neu02 BEST32.;
	FORMAT neu02 BEST12.;

	INFORMAT neu02a BEST32.;
	FORMAT neu02a BEST12.;

	INFORMAT neu03 BEST32.;
	FORMAT neu03 BEST12.;

	INFORMAT neu03a BEST32.;
	FORMAT neu03a BEST12.;

	INFORMAT neu04 BEST32.;
	FORMAT neu04 BEST12.;

	INFORMAT neu04a BEST32.;
	FORMAT neu04a BEST12.;

	INFORMAT neu05 BEST32.;
	FORMAT neu05 BEST12.;

	INFORMAT neu05a BEST32.;
	FORMAT neu05a BEST12.;

	INFORMAT neu06 BEST32.;
	FORMAT neu06 BEST12.;

	INFORMAT neu06a BEST32.;
	FORMAT neu06a BEST12.;

	INFORMAT neu07 BEST32.;
	FORMAT neu07 BEST12.;

	INFORMAT neu07a BEST32.;
	FORMAT neu07a BEST12.;

	INFORMAT auto_id_hvneuass BEST32.;
	FORMAT auto_id_hvneuass BEST12.;

	INFORMAT testerid_hvneuass BEST32.;
	FORMAT testerid_hvneuass BEST12.;

	INPUT
		id_addi
		visit
		crf_version_hvneuass
		neu01
		neu01a
		neu02
		neu02a
		neu03
		neu03a
		neu04
		neu04a
		neu05
		neu05a
		neu06
		neu06a
		neu07
		neu07a
		auto_id_hvneuass
		testerid_hvneuass
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_hvneuass = "CRF Version"
		neu01 = "Recite days of the week"
		neu01a = "days of week reason not done"
		neu02 = "Smile"
		neu02a = "Smile reason not done"
		neu03 = "Finger to Nose"
		neu03a = "Finger to nose reason not done"
		neu04 = "Orbit Motion"
		neu04a = "Orbit Motion reason not done"
		neu05 = "Open and Close Motion"
		neu05a = "Open and Close Motion reason not done"
		neu06 = "Heel Taps"
		neu06a = "Heel Taps reason not done"
		neu07 = "Chair Stand and Walk"
		neu07a = "Chair Stand and Walk reason not done"
		auto_id_hvneuass = "Unique Teleform Number"
		testerid_hvneuass = "Tester ID"
	;
	FORMAT
		neu01 neu01_.
		neu01a neu01a_.
		neu02 neu02_.
		neu02a neu02a_.
		neu03 neu03_.
		neu03a neu03a_.
		neu04 neu04_.
		neu04a neu04a_.
		neu05 neu05_.
		neu05a neu05a_.
		neu06 neu06_.
		neu06a neu06a_.
		neu07 neu07_.
		neu07a neu07a_.
	;
RUN;


        DATA oc_hvneurologicalassess;
            SET WORK.IMPORT;
        RUN;
        