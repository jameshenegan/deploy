%let path_to_file = '../data-csv/cog_adrcces.csv';
OPTIONS nofmterr;

    
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

	INFORMAT cestot BEST32.;
	FORMAT cestot BEST12.;

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
		cestot
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		cesd01 = "I was bothered by things that usually do"
		cesd02 = "I did not feel like eating; my appetite"
		cesd03 = "I felt that I could not shake off the bl"
		cesd04 = "I felt that I was just as good as other"
		cesd05 = "I had trouble keeping my mind on what I"
		cesd06 = "I felt depressed"
		cesd07 = "I felt that everything I did was an effo"
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
		cestot = "Total Score"
	;
RUN;


        DATA cog_adrcces;
            SET WORK.IMPORT;
        RUN;
        