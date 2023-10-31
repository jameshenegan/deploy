%let path_to_file = '../data-csv/der_cesd.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE cesd01_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd02_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd03_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd04_
		0 = 'Most or Almost All the Time'
		3 = 'Rarely or None of the Time'
		1 = 'Moderately or Much of the time'
		2 = 'Some or Little of the Time'
	;

	VALUE cesd05_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd06_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd07_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd08_
		0 = 'Most or Almost All the Time'
		1 = 'Moderately or Much of the time'
		3 = 'Rarely or None of the Time'
		2 = 'Some or Little of the Time'
	;

	VALUE cesd09_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd10_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd11_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd12_
		0 = 'Most or Almost All the Time'
		1 = 'Moderately or Much of the time'
		2 = 'Some or Little of the Time'
		3 = 'Rarely or None of the Time'
	;

	VALUE cesd13_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd14_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd15_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd16_
		0 = 'Most or Almost All the Time'
		1 = 'Moderately or Much of the time'
		3 = 'Rarely or None of the Time'
		2 = 'Some or Little of the Time'
	;

	VALUE cesd17_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd18_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd19_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd20_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
	;

	VALUE cesd_der16_
		0 = 'Symptoms Absent'
		1 = 'Symptoms Present'
	;

	VALUE cesd_der20_
		0 = 'Significant Symptoms Absent'
		1 = 'Significant Symptoms Present'
	;

	VALUE depression_
		0 = 'Depression Absent'
		1 = 'Depression Present'
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

	INFORMAT cesd01 BEST32.;
	FORMAT cesd01 BEST12.;

	INFORMAT cesd02 BEST32.;
	FORMAT cesd02 BEST12.;

	INFORMAT cesd03 BEST32.;
	FORMAT cesd03 BEST12.;

	INFORMAT cesd04 BEST32.;
	FORMAT cesd04 BEST12.;

	INFORMAT cesd05 BEST32.;
	FORMAT cesd05 BEST12.;

	INFORMAT cesd06 BEST32.;
	FORMAT cesd06 BEST12.;

	INFORMAT cesd07 BEST32.;
	FORMAT cesd07 BEST12.;

	INFORMAT cesd08 BEST32.;
	FORMAT cesd08 BEST12.;

	INFORMAT cesd09 BEST32.;
	FORMAT cesd09 BEST12.;

	INFORMAT cesd10 BEST32.;
	FORMAT cesd10 BEST12.;

	INFORMAT cesd11 BEST32.;
	FORMAT cesd11 BEST12.;

	INFORMAT cesd12 BEST32.;
	FORMAT cesd12 BEST12.;

	INFORMAT cesd13 BEST32.;
	FORMAT cesd13 BEST12.;

	INFORMAT cesd14 BEST32.;
	FORMAT cesd14 BEST12.;

	INFORMAT cesd15 BEST32.;
	FORMAT cesd15 BEST12.;

	INFORMAT cesd16 BEST32.;
	FORMAT cesd16 BEST12.;

	INFORMAT cesd17 BEST32.;
	FORMAT cesd17 BEST12.;

	INFORMAT cesd18 BEST32.;
	FORMAT cesd18 BEST12.;

	INFORMAT cesd19 BEST32.;
	FORMAT cesd19 BEST12.;

	INFORMAT cesd20 BEST32.;
	FORMAT cesd20 BEST12.;

	INFORMAT cesd_der BEST32.;
	FORMAT cesd_der BEST12.;

	INFORMAT cesd_der16 BEST32.;
	FORMAT cesd_der16 BEST12.;

	INFORMAT cesd_der20 BEST32.;
	FORMAT cesd_der20 BEST12.;

	INFORMAT depression BEST32.;
	FORMAT depression BEST12.;

	INPUT
		id_addi
		visit
		cesd01
		cesd02
		cesd03
		cesd04
		cesd05
		cesd06
		cesd07
		cesd08
		cesd09
		cesd10
		cesd11
		cesd12
		cesd13
		cesd14
		cesd15
		cesd16
		cesd17
		cesd18
		cesd19
		cesd20
		cesd_der
		cesd_der16
		cesd_der20
		depression
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		cesd01 = "I was bothered by things that usually do not bother me"
		cesd02 = "I did not feel like eating; my appetite was poor"
		cesd03 = "I felt that I could not shake off the blues even with the help from my family and friends"
		cesd04 = "I felt that I was just as good as other people"
		cesd05 = "I had trouble keeping my mind on what I was doing"
		cesd06 = "I felt depressed"
		cesd07 = "I felt that everything I did was an effort"
		cesd08 = "I felt hopeful about the future"
		cesd09 = "I thought my life had been a failure"
		cesd10 = "I felt fearful"
		cesd11 = "My sleep was restless"
		cesd12 = "I was happy"
		cesd13 = "I talked less than usual"
		cesd14 = "I felt lonely"
		cesd15 = "People were unfriendly"
		cesd16 = "I enjoyed life"
		cesd17 = "I had crying spells"
		cesd18 = "I felt sad"
		cesd19 = "I felt people disliked me"
		cesd20 = "I could not get going"
		cesd_der = "CESD Depressive Symptoms (CESD) Score"
		cesd_der16 = "CESD Symptoms of Depression (CESD 16+)"
		cesd_der20 = "CESD Significant Symptoms of Depression (CESD 20+)"
		depression = "Depression (Depressive Symptoms or Treatment/Counseling)"
	;
	FORMAT
		cesd01 cesd01_.
		cesd02 cesd02_.
		cesd03 cesd03_.
		cesd04 cesd04_.
		cesd05 cesd05_.
		cesd06 cesd06_.
		cesd07 cesd07_.
		cesd08 cesd08_.
		cesd09 cesd09_.
		cesd10 cesd10_.
		cesd11 cesd11_.
		cesd12 cesd12_.
		cesd13 cesd13_.
		cesd14 cesd14_.
		cesd15 cesd15_.
		cesd16 cesd16_.
		cesd17 cesd17_.
		cesd18 cesd18_.
		cesd19 cesd19_.
		cesd20 cesd20_.
		cesd_der16 cesd_der16_.
		cesd_der20 cesd_der20_.
		depression depression_.
	;
RUN;


        DATA der_cesd;
            SET WORK.IMPORT;
        RUN;
        