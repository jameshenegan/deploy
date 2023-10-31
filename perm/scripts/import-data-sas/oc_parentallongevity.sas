%let path_to_file = '../data-csv/oc_parentallongevity.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE pl1_
		0 = 'No'
		1 = 'Yes'
		7 = 'Prefer not to answer'
		8 = "Don't know"
	;

	VALUE pl2_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
		7 = 'Prefer not to answer'
	;

	VALUE pl2c_
		4 = 'Cancer'
		13 = 'Other (please specify)'
		14 = 'Undetermined/unknown'
		2 = 'Stroke'
		1 = 'Myocardial infarction'
		6 = "Alzheimer's disease/other dementia"
		3 = 'Other CVD'
		10 = 'Complications of fracture'
		5 = 'COPD (emphysema chronic bronchitis)'
		9 = 'Kidney disease'
		8 = 'Influenze or pneumonia'
		7 = 'Diabetes'
		11 = 'Accident/trauma'
		12 = 'Intentional self-harm (suicide)'
	;

	VALUE pl3_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
		7 = 'Prefer not to answer'
	;

	VALUE pl3c_
		4 = 'Cancer'
		1 = 'Myocardial infarction'
		13 = 'Other (please specify)'
		2 = 'Stroke'
		14 = 'Undetermined/unknown'
		11 = 'Accident/trauma'
		8 = 'Influenze or pneumonia'
		6 = "Alzheimer's disease/other dementia"
		9 = 'Kidney disease'
		5 = 'COPD (emphysema chronic bronchitis)'
		3 = 'Other CVD'
		7 = 'Diabetes'
		10 = 'Complications of fracture'
		12 = 'Intentional self-harm (suicide)'
	;

	VALUE pl4_
		0 = 'No'
		8 = "Don't know"
		7 = 'Prefer not to answer'
		1 = 'Yes'
	;

	VALUE pl4c_
		6 = "Alzheimer's disease/other dementia"
		14 = 'Undetermined/unknown'
		8 = 'Influenze or pneumonia'
		3 = 'Other CVD'
		7 = 'Diabetes'
		1 = 'Myocardial infarction'
		10 = 'Complications of fracture'
		11 = 'Accident/trauma'
		12 = 'Intentional self-harm (suicide)'
		13 = 'Other (please specify)'
		2 = 'Stroke'
		4 = 'Cancer'
		5 = 'COPD (emphysema chronic bronchitis)'
		9 = 'Kidney disease'
	;

	VALUE pl5_
		0 = 'No'
		8 = "Don't know"
		7 = 'Prefer not to answer'
		1 = 'Yes'
	;

	VALUE pl5c_
		14 = 'Undetermined/unknown'
		8 = 'Influenze or pneumonia'
		13 = 'Other (please specify)'
		4 = 'Cancer'
		3 = 'Other CVD'
		2 = 'Stroke'
		12 = 'Intentional self-harm (suicide)'
		1 = 'Myocardial infarction'
		10 = 'Complications of fracture'
		11 = 'Accident/trauma'
		5 = 'COPD (emphysema chronic bronchitis)'
		6 = "Alzheimer's disease/other dementia"
		7 = 'Diabetes'
		9 = 'Kidney disease'
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

	INFORMAT crf_version_parlon $7.;
	FORMAT crf_version_parlon $7.;

	INFORMAT pl1 BEST32.;
	FORMAT pl1 BEST12.;

	INFORMAT pl2 BEST32.;
	FORMAT pl2 BEST12.;

	INFORMAT pl2a BEST32.;
	FORMAT pl2a BEST12.;

	INFORMAT pl2b BEST32.;
	FORMAT pl2b BEST12.;

	INFORMAT pl2c BEST32.;
	FORMAT pl2c BEST12.;

	INFORMAT pl3 BEST32.;
	FORMAT pl3 BEST12.;

	INFORMAT pl3a BEST32.;
	FORMAT pl3a BEST12.;

	INFORMAT pl3b BEST32.;
	FORMAT pl3b BEST12.;

	INFORMAT pl3c BEST32.;
	FORMAT pl3c BEST12.;

	INFORMAT pl4 BEST32.;
	FORMAT pl4 BEST12.;

	INFORMAT pl4a BEST32.;
	FORMAT pl4a BEST12.;

	INFORMAT pl4b BEST32.;
	FORMAT pl4b BEST12.;

	INFORMAT pl4c BEST32.;
	FORMAT pl4c BEST12.;

	INFORMAT pl5 BEST32.;
	FORMAT pl5 BEST12.;

	INFORMAT pl5a $1.;
	FORMAT pl5a $1.;

	INFORMAT pl5b BEST32.;
	FORMAT pl5b BEST12.;

	INFORMAT pl5c BEST32.;
	FORMAT pl5c BEST12.;

	INFORMAT testerid_parlon BEST32.;
	FORMAT testerid_parlon BEST12.;

	INPUT
		id_addi
		visit
		crf_version_parlon
		pl1
		pl2
		pl2a
		pl2b
		pl2c
		pl3
		pl3a
		pl3b
		pl3c
		pl4
		pl4a
		pl4b
		pl4c
		pl5
		pl5a
		pl5b
		pl5c
		testerid_parlon
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_parlon = "CRF Version"
		pl1 = "Were you adopted"
		pl2 = "Is your biological mother alive"
		pl2a = "What is your mother's age now"
		pl2b = "How old was your mother when she died"
		pl2c = "Cause of death"
		pl3 = "Is your biological father alive"
		pl3a = "What is your father's age now"
		pl3b = "How old was your father when he died"
		pl3c = "Cause of death"
		pl4 = "Is your adoptivel mother alive"
		pl4a = "What is your mother's age now"
		pl4b = "How old was your mother when she died"
		pl4c = "Cause of death"
		pl5 = "Is your adoptive father alive"
		pl5a = "What is your father's age now"
		pl5b = "How old was your father when he died"
		pl5c = "Cause of death"
		testerid_parlon = "Tester ID"
	;
	FORMAT
		pl1 pl1_.
		pl2 pl2_.
		pl2c pl2c_.
		pl3 pl3_.
		pl3c pl3c_.
		pl4 pl4_.
		pl4c pl4c_.
		pl5 pl5_.
		pl5c pl5c_.
	;
RUN;


        DATA oc_parentallongevity;
            SET WORK.IMPORT;
        RUN;
        