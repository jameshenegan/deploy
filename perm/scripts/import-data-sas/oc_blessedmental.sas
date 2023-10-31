%let path_to_file = '../data-csv/oc_blessedmental.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ble01_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble02_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble03_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble04_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble05_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble06_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble07_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble08_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble09_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble10_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble11_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble12_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble13_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble14_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble15_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble16a_
		0 = 'First time'
		1 = 'When given in 3 phrases'
		2 = 'When given in single words'
		3 = 'Could not repeat'
	;

	VALUE ble16_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble17_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble18_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble19_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble20_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble21_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble22_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble23_
		0 = 'Correct'
		1 = 'Incorrect'
	;

	VALUE ble24_
		0 = 'Correct'
		2 = 'Incorrect'
		1 = 'Self-corrected error'
	;

	VALUE ble25_
		0 = 'Correct'
		2 = 'Incorrect'
		1 = 'Self-corrected error'
	;

	VALUE ble26_
		0 = 'Correct'
		2 = 'Incorrect'
		1 = 'Self-corrected error'
	;

	VALUE ble27a_
		0 = 'Correct'
		1 = 'Incorrect/Omitted'
	;

	VALUE ble27b_
		0 = 'Correct'
		1 = 'Incorrect/Omitted'
	;

	VALUE ble27c_
		0 = 'Correct'
		1 = 'Incorrect/Omitted'
	;

	VALUE ble27d_
		0 = 'Correct'
		1 = 'Incorrect/Omitted'
	;

	VALUE ble27e_
		0 = 'Correct'
		1 = 'Incorrect/Omitted'
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

	INFORMAT crf_version_blemen $8.;
	FORMAT crf_version_blemen $8.;

	INFORMAT ble01 BEST32.;
	FORMAT ble01 BEST12.;

	INFORMAT ble02 BEST32.;
	FORMAT ble02 BEST12.;

	INFORMAT ble03 BEST32.;
	FORMAT ble03 BEST12.;

	INFORMAT ble04 BEST32.;
	FORMAT ble04 BEST12.;

	INFORMAT ble05 BEST32.;
	FORMAT ble05 BEST12.;

	INFORMAT ble06 BEST32.;
	FORMAT ble06 BEST12.;

	INFORMAT ble07 BEST32.;
	FORMAT ble07 BEST12.;

	INFORMAT ble08 BEST32.;
	FORMAT ble08 BEST12.;

	INFORMAT ble09 BEST32.;
	FORMAT ble09 BEST12.;

	INFORMAT ble10 BEST32.;
	FORMAT ble10 BEST12.;

	INFORMAT ble11 BEST32.;
	FORMAT ble11 BEST12.;

	INFORMAT ble12 BEST32.;
	FORMAT ble12 BEST12.;

	INFORMAT ble13 BEST32.;
	FORMAT ble13 BEST12.;

	INFORMAT ble14 BEST32.;
	FORMAT ble14 BEST12.;

	INFORMAT ble15 BEST32.;
	FORMAT ble15 BEST12.;

	INFORMAT ble16a BEST32.;
	FORMAT ble16a BEST12.;

	INFORMAT ble16 BEST32.;
	FORMAT ble16 BEST12.;

	INFORMAT ble17 BEST32.;
	FORMAT ble17 BEST12.;

	INFORMAT ble18 BEST32.;
	FORMAT ble18 BEST12.;

	INFORMAT ble19 BEST32.;
	FORMAT ble19 BEST12.;

	INFORMAT ble20 BEST32.;
	FORMAT ble20 BEST12.;

	INFORMAT ble21 BEST32.;
	FORMAT ble21 BEST12.;

	INFORMAT ble22 BEST32.;
	FORMAT ble22 BEST12.;

	INFORMAT ble23 BEST32.;
	FORMAT ble23 BEST12.;

	INFORMAT ble24 BEST32.;
	FORMAT ble24 BEST12.;

	INFORMAT ble25 BEST32.;
	FORMAT ble25 BEST12.;

	INFORMAT ble26 BEST32.;
	FORMAT ble26 BEST12.;

	INFORMAT ble27a BEST32.;
	FORMAT ble27a BEST12.;

	INFORMAT ble27b BEST32.;
	FORMAT ble27b BEST12.;

	INFORMAT ble27c BEST32.;
	FORMAT ble27c BEST12.;

	INFORMAT ble27d BEST32.;
	FORMAT ble27d BEST12.;

	INFORMAT ble27e BEST32.;
	FORMAT ble27e BEST12.;

	INFORMAT preliminarytotal BEST32.;
	FORMAT preliminarytotal BEST12.;

	INFORMAT bletotal BEST32.;
	FORMAT bletotal BEST12.;

	INFORMAT auto_id_blemen BEST32.;
	FORMAT auto_id_blemen BEST12.;

	INFORMAT testerid_blemen BEST32.;
	FORMAT testerid_blemen BEST12.;

	INPUT
		id_addi
		visit
		crf_version_blemen
		ble01
		ble02
		ble03
		ble04
		ble05
		ble06
		ble07
		ble08
		ble09
		ble10
		ble11
		ble12
		ble13
		ble14
		ble15
		ble16a
		ble16
		ble17
		ble18
		ble19
		ble20
		ble21
		ble22
		ble23
		ble24
		ble25
		ble26
		ble27a
		ble27b
		ble27c
		ble27d
		ble27e
		preliminarytotal
		bletotal
		auto_id_blemen
		testerid_blemen
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_blemen = "CRF Version"
		ble01 = "What is your name Correct Incorrect"
		ble02 = "Can you tell me your age correct incorrect"
		ble03 = "When were you born correct incorrect"
		ble04 = "Where were you born correct incorrect"
		ble05 = "Where are you right now correct incorrect"
		ble06 = "What street is it on correct incorrect"
		ble07 = "How many hours has it been since you arrived on the unit"
		ble08 = "What city is it in correct incorrect"
		ble09 = "What is todays date correct incorrect"
		ble10 = "What is the current month correct incorrect"
		ble11 = "What is the current year correct incorrect"
		ble12 = "What day of the week is today correct incorrect"
		ble13 = "What part of the day is it correct incorrect"
		ble14 = "About what time is it correct incorrect"
		ble15 = "What season is this correct incorrect"
		ble16a = "When did the participant correctly repeat John Brown 42 Market Street Chicago"
		ble16 = "What is your mothers first name correct incorrect"
		ble17 = "How much schooling did you have correct incorrect"
		ble18 = "Name of one specific school you attended correct incorrect"
		ble19 = "Kind of work you have done correct incorrect"
		ble20 = "Current President of the United states correct incorrect"
		ble21 = "President before current president correct incorrect"
		ble22 = "One of the years of World War I correct incorrect"
		ble23 = "One of the years of World War II correct incorrect"
		ble24 = "Recite months of the year backwards"
		ble25 = "Count from 1 to 20"
		ble26 = "Count backwards from 20 to 1"
		ble27a = "Recall John"
		ble27b = "Recall Brown"
		ble27c = "Recall 42"
		ble27d = "Recall Market Street"
		ble27e = "Recall Chicago"
		preliminarytotal = "PreliminaryTotal"
		bletotal = "ValidatedTotal"
		auto_id_blemen = "Unique Teleform Number"
		testerid_blemen = "Tester ID"
	;
	FORMAT
		ble01 ble01_.
		ble02 ble02_.
		ble03 ble03_.
		ble04 ble04_.
		ble05 ble05_.
		ble06 ble06_.
		ble07 ble07_.
		ble08 ble08_.
		ble09 ble09_.
		ble10 ble10_.
		ble11 ble11_.
		ble12 ble12_.
		ble13 ble13_.
		ble14 ble14_.
		ble15 ble15_.
		ble16a ble16a_.
		ble16 ble16_.
		ble17 ble17_.
		ble18 ble18_.
		ble19 ble19_.
		ble20 ble20_.
		ble21 ble21_.
		ble22 ble22_.
		ble23 ble23_.
		ble24 ble24_.
		ble25 ble25_.
		ble26 ble26_.
		ble27a ble27a_.
		ble27b ble27b_.
		ble27c ble27c_.
		ble27d ble27d_.
		ble27e ble27e_.
	;
RUN;


        DATA oc_blessedmental;
            SET WORK.IMPORT;
        RUN;
        