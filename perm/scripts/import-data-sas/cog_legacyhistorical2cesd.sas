%let path_to_file = '../data-csv/cog_legacyhistorical2cesd.csv';
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

	INFORMAT xsource $3.;
	FORMAT xsource $3.;

	INFORMAT cestag BEST32.;
	FORMAT cestag BEST12.;

	INFORMAT cesd BEST32.;
	FORMAT cesd BEST12.;

	INFORMAT cescut16 BEST32.;
	FORMAT cescut16 BEST12.;

	INFORMAT cescut20 BEST32.;
	FORMAT cescut20 BEST12.;

	INFORMAT ces01 BEST32.;
	FORMAT ces01 BEST12.;

	INFORMAT ces02 BEST32.;
	FORMAT ces02 BEST12.;

	INFORMAT ces03 BEST32.;
	FORMAT ces03 BEST12.;

	INFORMAT ces04 BEST32.;
	FORMAT ces04 BEST12.;

	INFORMAT ces05 BEST32.;
	FORMAT ces05 BEST12.;

	INFORMAT ces06 BEST32.;
	FORMAT ces06 BEST12.;

	INFORMAT ces07 BEST32.;
	FORMAT ces07 BEST12.;

	INFORMAT ces08 BEST32.;
	FORMAT ces08 BEST12.;

	INFORMAT ces09 BEST32.;
	FORMAT ces09 BEST12.;

	INFORMAT ces10 BEST32.;
	FORMAT ces10 BEST12.;

	INFORMAT ces11 BEST32.;
	FORMAT ces11 BEST12.;

	INFORMAT ces12 BEST32.;
	FORMAT ces12 BEST12.;

	INFORMAT ces13 BEST32.;
	FORMAT ces13 BEST12.;

	INFORMAT ces14 BEST32.;
	FORMAT ces14 BEST12.;

	INFORMAT ces15 BEST32.;
	FORMAT ces15 BEST12.;

	INFORMAT ces16 BEST32.;
	FORMAT ces16 BEST12.;

	INFORMAT ces17 BEST32.;
	FORMAT ces17 BEST12.;

	INFORMAT ces18 BEST32.;
	FORMAT ces18 BEST12.;

	INFORMAT ces19 BEST32.;
	FORMAT ces19 BEST12.;

	INFORMAT ces20 BEST32.;
	FORMAT ces20 BEST12.;

	INFORMAT dot BEST32.;
	FORMAT dot BEST12.;

	INFORMAT age BEST32.;
	FORMAT age BEST12.;

	INFORMAT ageyrs BEST32.;
	FORMAT ageyrs BEST12.;

	INFORMAT cessource BEST32.;
	FORMAT cessource BEST12.;

	INFORMAT sex BEST32.;
	FORMAT sex BEST12.;

	INPUT
		id_addi
		visit
		xsource
		cestag
		cesd
		cescut16
		cescut20
		ces01
		ces02
		ces03
		ces04
		ces05
		ces06
		ces07
		ces08
		ces09
		ces10
		ces11
		ces12
		ces13
		ces14
		ces15
		ces16
		ces17
		ces18
		ces19
		ces20
		dot
		age
		ageyrs
		cessource
		sex
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit"
		xsource = "XForms source file name"
		cestag = ""
		cesd = "CES Depression score"
		cescut16 = "CES Symptoms of depression"
		cescut20 = "CES Significant symptoms of depression"
		ces01 = "I was bothered by things that usually do"
		ces02 = "I did not feel like eating; my appetite"
		ces03 = "I felt that I could not shake off the bl"
		ces04 = "I felt that I was just as good as other"
		ces05 = "I had trouble keeping my mind on what I"
		ces06 = "I felt depressed"
		ces07 = "I felt that everything I did was an effo"
		ces08 = "I felt hopeful about the future"
		ces09 = "I thought my life had been a failure"
		ces10 = "I felt fearful"
		ces11 = "My sleep was restless"
		ces12 = "I was happy"
		ces13 = "I talked less than usual"
		ces14 = "I felt lonely"
		ces15 = "People were unfriendly"
		ces16 = "I enjoyed life"
		ces17 = "I had crying spells"
		ces18 = "I felt sad"
		ces19 = "I felt people disliked me"
		ces20 = "I could not get going"
		dot = "DOT"
		age = "Age"
		ageyrs = "AgeYrs"
		cessource = "CESsource"
		sex = "Sex"
	;
RUN;


        DATA cog_legacyhistorical2cesd;
            SET WORK.IMPORT;
        RUN;
        