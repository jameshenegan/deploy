%let path_to_file = '../data-csv/oc_consentparticipant.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE dna_
		1 = 'YES - I consent to the DNA collection.'
		0 = 'NO - I do NOT consent to the DNA collection.'
	;

	VALUE future_studies1_
		2 = 'YES - these samples may be used for other research projects without contacting me even if the identification code is left on the samples'
		1 = 'YES - these samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine'
		3 = 'MAYBE - I wish to be re-contacted if further studies with my samples are considered'
		4 = 'NO - under no circumstances shall my samples be used for any future studies.'
	;

	VALUE future_studies2_
		1 = 'YES - Specimens and data may be stored and used for future research studies.'
		0 = 'NO - Specimens and data may NOT be stored and used for future research studies.'
	;

	VALUE future_studies_shared_
		1 = 'YES - Specimens and data may be shared with other researchers and used by these researchers for future research.'
		0 = 'NO - Specimens and data may NOT be shared with other researchers and used by these researchers for future research.'
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

	INFORMAT crf_version_conpar $7.;
	FORMAT crf_version_conpar $7.;

	INFORMAT dna BEST32.;
	FORMAT dna BEST12.;

	INFORMAT entered_by BEST32.;
	FORMAT entered_by BEST12.;

	INFORMAT future_studies1 BEST32.;
	FORMAT future_studies1 BEST12.;

	INFORMAT future_studies2 BEST32.;
	FORMAT future_studies2 BEST12.;

	INFORMAT future_studies_shared BEST32.;
	FORMAT future_studies_shared BEST12.;

	INFORMAT systemrecordid BEST32.;
	FORMAT systemrecordid BEST12.;

	INPUT
		id_addi
		visit
		crf_version_conpar
		dna
		entered_by
		future_studies1
		future_studies2
		future_studies_shared
		systemrecordid
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_conpar = "CRF Version"
		dna = "MAYBE, I wish to be re-contacted if further studies with my samples are considered. After the study has been explained, I will then decide if I want my samples to be included."
		entered_by = "Staffmember entering this Consent"
		future_studies1 = "Samples my be used in future studies."
		future_studies2 = "YES, These samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine"
		future_studies_shared = "YES, These samples may be used for other research projects without contacting me only if the identification code is removed so that the sample can no longer be identified as mine"
		systemrecordid = "ID from MySql Consents Table"
	;
	FORMAT
		dna dna_.
		future_studies1 future_studies1_.
		future_studies2 future_studies2_.
		future_studies_shared future_studies_shared_.
	;
RUN;


        DATA oc_consentparticipant;
            SET WORK.IMPORT;
        RUN;
        