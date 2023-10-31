%let path_to_file = '../data-csv/der_abi.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE abi2cat_
		0 = 'PAD Absent: ABI greater than or equal to 0.9'
		1 = 'PAD Present: ABI < 0.9'
	;

	VALUE pad_
		0 = 'PAD Absent'
		1 = 'PAD Present'
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

	INFORMAT abi BEST32.;
	FORMAT abi BEST12.;

	INFORMAT abi2cat BEST32.;
	FORMAT abi2cat BEST12.;

	INFORMAT pad BEST32.;
	FORMAT pad BEST12.;

	INPUT
		id_addi
		visit
		abi
		abi2cat
		pad
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		abi = "Ankle-Brachial Index"
		abi2cat = "Peripheral Artery Disease ABI Classification"
		pad = "Peripheral Artery Disease"
	;
	FORMAT
		abi2cat abi2cat_.
		pad pad_.
	;
RUN;


        DATA der_abi;
            SET WORK.IMPORT;
        RUN;
        