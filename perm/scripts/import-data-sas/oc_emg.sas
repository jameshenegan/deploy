%let path_to_file = '../data-csv/oc_emg.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE emg02_
		0 = 'Right'
		1 = 'Left'
	;

	VALUE emg02a_
		4 = 'Other - explain'
		3 = 'Trauma or surgery (including knee replacement)'
		1 = 'Amputation'
		2 = 'Ulcer'
	;

	VALUE emg03a_
		1 = 'Yes'
		9 = 'Technical problems (no time)'
		8 = ' Refused'
		0 = 'Other'
		4 = 'No response'
		5 = 'Physical problems'
		7 = 'Physical and mental problems'
		6 = 'Mental problems'
	;

	VALUE emg04a_
		1 = 'Yes'
		9 = 'Technical problems (no time)'
		8 = ' Refused'
		0 = 'Other'
		4 = 'No response'
		5 = 'Physical problems'
		7 = 'Physical and mental problems'
		6 = 'Mental problems'
	;

	VALUE emg05a_
		1 = 'Yes'
		9 = 'Technical problems (no time)'
		8 = ' Refused'
		0 = 'Other'
		4 = 'No response'
		5 = 'Physical problems'
		7 = 'Physical and mental problems'
		6 = 'Mental problems'
	;

	VALUE emg06a_
		1 = 'Yes'
		9 = 'Technical problems (no time)'
		8 = ' Refused'
		0 = 'Other'
		4 = 'No response'
		5 = 'Physical problems'
		7 = 'Physical and mental problems'
		6 = 'Mental problems'
	;

	VALUE emg08_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE emg07_
		1 = 'A1'
		2 = 'A2'
		3 = 'A3'
		4 = 'A4'
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

	INFORMAT crf_version_emg $8.;
	FORMAT crf_version_emg $8.;

	INFORMAT emg01 BEST32.;
	FORMAT emg01 BEST12.;

	INFORMAT emg01a BEST32.;
	FORMAT emg01a BEST12.;

	INFORMAT emg02 BEST32.;
	FORMAT emg02 BEST12.;

	INFORMAT emg02a BEST32.;
	FORMAT emg02a BEST12.;

	INFORMAT emg01a1 BEST32.;
	FORMAT emg01a1 BEST12.;

	INFORMAT emg01a2 BEST32.;
	FORMAT emg01a2 BEST12.;

	INFORMAT emg01b BEST32.;
	FORMAT emg01b BEST12.;

	INFORMAT emg03a BEST32.;
	FORMAT emg03a BEST12.;

	INFORMAT emg04a BEST32.;
	FORMAT emg04a BEST12.;

	INFORMAT emg05a BEST32.;
	FORMAT emg05a BEST12.;

	INFORMAT emg06a BEST32.;
	FORMAT emg06a BEST12.;

	INFORMAT emg08 BEST32.;
	FORMAT emg08 BEST12.;

	INFORMAT emg03b BEST32.;
	FORMAT emg03b BEST12.;

	INFORMAT emg03c BEST32.;
	FORMAT emg03c BEST12.;

	INFORMAT emg04b BEST32.;
	FORMAT emg04b BEST12.;

	INFORMAT emg04c BEST32.;
	FORMAT emg04c BEST12.;

	INFORMAT emg04d BEST32.;
	FORMAT emg04d BEST12.;

	INFORMAT emg05b BEST32.;
	FORMAT emg05b BEST12.;

	INFORMAT emg05c BEST32.;
	FORMAT emg05c BEST12.;

	INFORMAT emg05d BEST32.;
	FORMAT emg05d BEST12.;

	INFORMAT emg06b BEST32.;
	FORMAT emg06b BEST12.;

	INFORMAT emg06c BEST32.;
	FORMAT emg06c BEST12.;

	INFORMAT emg06c1 BEST32.;
	FORMAT emg06c1 BEST12.;

	INFORMAT emg06d BEST32.;
	FORMAT emg06d BEST12.;

	INFORMAT emg07 BEST32.;
	FORMAT emg07 BEST12.;

	INFORMAT auto_id_emg BEST32.;
	FORMAT auto_id_emg BEST12.;

	INFORMAT testerid_emg BEST32.;
	FORMAT testerid_emg BEST12.;

	INPUT
		id_addi
		visit
		crf_version_emg
		emg01
		emg01a
		emg02
		emg02a
		emg01a1
		emg01a2
		emg01b
		emg03a
		emg04a
		emg05a
		emg06a
		emg08
		emg03b
		emg03c
		emg04b
		emg04c
		emg04d
		emg05b
		emg05c
		emg05d
		emg06b
		emg06c
		emg06c1
		emg06d
		emg07
		auto_id_emg
		testerid_emg
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_emg = "CRF Version"
		emg01 = "Foot temperature for peroneal"
		emg01a = "Foot temperature for peroneal following heating"
		emg02 = "Which leg was tested"
		emg02a = "Why wasn't right leg tested"
		emg01a1 = "Foot temperature for sural"
		emg01a2 = "Foot temperature for sural following heating"
		emg01b = "Foot temperature at end of tests"
		emg03a = "Peroneal Test Completed Distal"
		emg04a = "Peroneal Test Completed Fibular Head"
		emg05a = "Peroneal Test Completed Popliteal Fossa"
		emg06a = "Sural TestCompleted LowerLeg"
		emg08 = "Were files exported"
		emg03b = "Distal Amplitude"
		emg03c = "Distal Latency"
		emg04b = "Fibula head Amplitude"
		emg04c = "Fibula head Latency"
		emg04d = "Fibula head Conduction Velocity"
		emg05b = "Popliteal Fossa Amplitude"
		emg05c = "Popliteal Fossa Latency"
		emg05d = "Popliteal Fossa Conduction Velocity"
		emg06b = "Lower Leg Amplitude"
		emg06c = "Lower Leg Latency"
		emg06c1 = "Lower Leg Latency"
		emg06d = "Lower Leg Conduction Velocity"
		emg07 = "Which stimulus site was chosen for lower leg Sural"
		auto_id_emg = "Unique Teleform Number"
		testerid_emg = "Tester ID"
	;
	FORMAT
		emg02 emg02_.
		emg02a emg02a_.
		emg03a emg03a_.
		emg04a emg04a_.
		emg05a emg05a_.
		emg06a emg06a_.
		emg08 emg08_.
		emg07 emg07_.
	;
RUN;


        DATA oc_emg;
            SET WORK.IMPORT;
        RUN;
        