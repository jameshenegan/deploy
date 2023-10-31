%let path_to_file = '../data-csv/oc_gripstrength.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE grip1_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE grip1a_
		3 = 'Both'
		1 = 'Right'
		2 = 'Left'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE grip1b_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE grip1c_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE grip2_
		0 = 'No'
		8 = "Don't know"
		1 = 'Yes'
		7 = 'Refused'
	;

	VALUE grip2a_
		2 = 'Left (Test right side only)'
		1 = 'Right (Test left side only)'
		8 = "Don't know (Do not test)"
		3 = 'Both (Do not test)'
	;

	VALUE grip3r4_
		1 = 'Did 3 trials'
		4 = 'Unable to do'
		7 = 'Refused'
		0 = 'Excluded'
		3 = 'Did 1 trial'
		2 = 'Did 2 trials'
	;

	VALUE grip3l4_
		1 = 'Did 3 trials'
		4 = 'Unable to do'
		7 = 'Refused'
		0 = 'Excluded'
		3 = 'Did 1 trial'
		2 = 'Did 2 trials'
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

	INFORMAT crf_version_gristr $8.;
	FORMAT crf_version_gristr $8.;

	INFORMAT grip1 BEST32.;
	FORMAT grip1 BEST12.;

	INFORMAT grip1a BEST32.;
	FORMAT grip1a BEST12.;

	INFORMAT grip1b BEST32.;
	FORMAT grip1b BEST12.;

	INFORMAT grip1c BEST32.;
	FORMAT grip1c BEST12.;

	INFORMAT grip2 BEST32.;
	FORMAT grip2 BEST12.;

	INFORMAT grip2a BEST32.;
	FORMAT grip2a BEST12.;

	INFORMAT grip3r1 BEST32.;
	FORMAT grip3r1 BEST12.;

	INFORMAT grip3r2 BEST32.;
	FORMAT grip3r2 BEST12.;

	INFORMAT grip3r3 BEST32.;
	FORMAT grip3r3 BEST12.;

	INFORMAT grip3r4 BEST32.;
	FORMAT grip3r4 BEST12.;

	INFORMAT grip3l1 BEST32.;
	FORMAT grip3l1 BEST12.;

	INFORMAT grip3l2 BEST32.;
	FORMAT grip3l2 BEST12.;

	INFORMAT grip3l3 BEST32.;
	FORMAT grip3l3 BEST12.;

	INFORMAT grip3l4 BEST32.;
	FORMAT grip3l4 BEST12.;

	INFORMAT auto_id_gristr BEST32.;
	FORMAT auto_id_gristr BEST12.;

	INFORMAT testerid_gristr BEST32.;
	FORMAT testerid_gristr BEST12.;

	INPUT
		id_addi
		visit
		crf_version_gristr
		grip1
		grip1a
		grip1b
		grip1c
		grip2
		grip2a
		grip3r1
		grip3r2
		grip3r3
		grip3r4
		grip3l1
		grip3l2
		grip3l3
		grip3l4
		auto_id_gristr
		testerid_gristr
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_gristr = "CRF Version"
		grip1 = "Do you have arthritis in either hand or wrist"
		grip1a = "Is the pain or arthritis in your right left or both hands or wrists"
		grip1b = "Has the pain or arthritis gotten worse recently"
		grip1c = "Will the pain or arthritis keep you from squeezing as hard as you can"
		grip2 = "Have you had surgery on either hand or wrist in the past 3 months"
		grip2a = "Was the surgery on your right left or both hands or wrists"
		grip3r1 = "Trial 1 right hand"
		grip3r2 = "Trial 2 right hand"
		grip3r3 = "Trial 3 right hand"
		grip3r4 = "Right hand completion status"
		grip3l1 = "Trial 1 left hand"
		grip3l2 = "Trial 2 left hand"
		grip3l3 = "Trial 3 left hand"
		grip3l4 = "Left hand completion status"
		auto_id_gristr = "Unique Teleform Number"
		testerid_gristr = "Tester ID"
	;
	FORMAT
		grip1 grip1_.
		grip1a grip1a_.
		grip1b grip1b_.
		grip1c grip1c_.
		grip2 grip2_.
		grip2a grip2a_.
		grip3r4 grip3r4_.
		grip3l4 grip3l4_.
	;
RUN;


        DATA oc_gripstrength;
            SET WORK.IMPORT;
        RUN;
        