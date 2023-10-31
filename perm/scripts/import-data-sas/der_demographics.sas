%let path_to_file = '../data-csv/der_demographics.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE $sex_
		M = 'Male'
		F = 'Female'
	;

	VALUE male_
		1 = 'Male'
		0 = 'Female'
	;

	VALUE race_
		6 = 'White'
		8 = 'Unknown or not reported'
		3 = 'Black or African American'
		1 = 'Other Asian or Pacific Islander'
		5 = 'Hispanic'
		2 = 'American Indian or Alaskan Native'
		9 = 'Asian'
		7 = 'More than one race'
	;

	VALUE race3cat_
		1 = 'White'
		2 = 'Black or African American'
		3 = 'Other'
	;

	VALUE black_
		0 = 'NonBlack'
		1 = 'Black'
	;

	VALUE ethnicity_
		0 = 'Not reported / Unknown'
		1 = 'Not Hispanic or Latino'
		2 = 'Hispanic or Latino'
	;

	VALUE borninus_
		1 = 'Born In US'
		0 = 'Born Outside US'
	;

	VALUE englishfirstlang_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE maritalstatus_
		1 = 'Married'
		5 = 'Widowed'
		4 = 'Divorced'
		6 = 'Never married'
		2 = 'Living with a partner'
		3 = 'Separated'
	;

	VALUE householdsize_
		1 = '1 other'
		0 = 'Lives alone'
		2 = '2 others'
		3 = '3 or more others'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE housingtype_
		1 = 'Single family home'
		2 = 'Co-op, condominium, apartment'
		3 = 'Continuing care community'
		4 = 'Assisted living'
		5 = 'Long term care facility'
		8 = "Don't know"
		7 = 'refused'
	;

	VALUE smkstat_
		0 = 'Never smoked'
		1 = 'Former Smoker'
		2 = 'Current Smoker'
	;

	VALUE smokehx_
		0 = 'Never smoked'
		1 = 'Quit 10+ yrs ago'
		3 = 'Current smoker'
		2 = 'Quit <10 yrs ago'
	;

	VALUE smoker_
		0 = 'Non-Smoker'
		1 = 'Smoker'
	;

	VALUE alcoholhx_
		2 = 'Current Drinker'
		0 = 'Non-Drinker'
		1 = 'Former Drinker'
	;

	VALUE drinker_
		1 = 'Drinker'
		0 = 'Non-Drinker'
	;

	VALUE alcohol_
		0 = 'less than one'
		1 = '1-3 drinks'
		2 = '4-7 drinks'
		3 = '8-14 drinks'
		4 = 'more than 14'
	;

	VALUE education_
		18 = "Master's degree"
		16 = 'four year college'
		20 = 'MD or PhD'
		12 = 'high school (or GED equivalent)'
		14 = "two year college / Associate's degree"
		21 = 'multiple graduate degrees'
		19 = 'Law degree'
		0 = 'no formal schooling'
		77 = 'refused'
		88 = 'unknown'
	;

	VALUE educ3cat_
		2 = '>High School'
		1 = 'High School/GED'
		0 = '<High School'
	;

	VALUE educ5cat_
		4 = 'Post college'
		3 = 'College grad'
		1 = 'High school'
		2 = 'Some college'
		0 = 'Less than high school'
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

	INFORMAT brthyr BEST32.;
	FORMAT brthyr BEST12.;

	INFORMAT brthmo BEST32.;
	FORMAT brthmo BEST12.;

	INFORMAT age BEST32.;
	FORMAT age BEST12.;

	INFORMAT baselineage BEST32.;
	FORMAT baselineage BEST12.;

	INFORMAT sex $1.;
	FORMAT sex $1.;

	INFORMAT male BEST32.;
	FORMAT male BEST12.;

	INFORMAT race BEST32.;
	FORMAT race BEST12.;

	INFORMAT race3cat BEST32.;
	FORMAT race3cat BEST12.;

	INFORMAT black BEST32.;
	FORMAT black BEST12.;

	INFORMAT ethnicity BEST32.;
	FORMAT ethnicity BEST12.;

	INFORMAT borninus BEST32.;
	FORMAT borninus BEST12.;

	INFORMAT englishfirstlang BEST32.;
	FORMAT englishfirstlang BEST12.;

	INFORMAT maritalstatus BEST32.;
	FORMAT maritalstatus BEST12.;

	INFORMAT householdsize BEST32.;
	FORMAT householdsize BEST12.;

	INFORMAT housingtype BEST32.;
	FORMAT housingtype BEST12.;

	INFORMAT smkstat BEST32.;
	FORMAT smkstat BEST12.;

	INFORMAT smokehx BEST32.;
	FORMAT smokehx BEST12.;

	INFORMAT smoker BEST32.;
	FORMAT smoker BEST12.;

	INFORMAT alcoholhx BEST32.;
	FORMAT alcoholhx BEST12.;

	INFORMAT drinker BEST32.;
	FORMAT drinker BEST12.;

	INFORMAT alcohol BEST32.;
	FORMAT alcohol BEST12.;

	INFORMAT edyrsdegree BEST32.;
	FORMAT edyrsdegree BEST12.;

	INFORMAT education BEST32.;
	FORMAT education BEST12.;

	INFORMAT educ3cat BEST32.;
	FORMAT educ3cat BEST12.;

	INFORMAT educ5cat BEST32.;
	FORMAT educ5cat BEST12.;

	INPUT
		id_addi
		visit
		brthyr
		brthmo
		age
		baselineage
		sex
		male
		race
		race3cat
		black
		ethnicity
		borninus
		englishfirstlang
		maritalstatus
		householdsize
		housingtype
		smkstat
		smokehx
		smoker
		alcoholhx
		drinker
		alcohol
		edyrsdegree
		education
		educ3cat
		educ5cat
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		brthyr = "Year of Birth"
		brthmo = "Month of Birth"
		age = "Age at time of visit (years)"
		baselineage = "Age at baseline visit (years)"
		sex = "Sex (M, F)"
		male = "Male Indicator (1=M, 0=F)"
		race = "Race Category (White, Black or African American, American Indian or Alaskan Native, Asian or Pacific Islander, Hispanic, More than one race)"
		race3cat = "Race Category (White, Black, Other)"
		black = "Black Race Indicator (1=Black, 0=Non-Black)"
		ethnicity = "Spanish Hispanic or Latino Ethnicity"
		borninus = "Born in the United States"
		englishfirstlang = "English was First Language"
		maritalstatus = "Marital Status"
		householdsize = "Size of Household"
		housingtype = "Type of Housing"
		smkstat = "Current smoking status (3-level)"
		smokehx = "Smoking history (4-level)"
		smoker = "Current smoking status (2-level)"
		alcoholhx = "Drinking history (4-level)"
		drinker = "Current drinking status (2-level)"
		alcohol = "Drinks per week"
		edyrsdegree = "Highest grade in school completed by the participant defined by final degree"
		education = "Years of education as defined by final degree

0: No Formal Schooling 0-11 degree years 
12: High School (or GED equivalent): 12-13 degree years
14: Two Year College/Associate's Degree: 14-15 degree years
16: Four Year College: 16-17 degree years
18: Master's Degree: 18 degree years 
19: Law Degree: 19 degree years
20: MD or PhD: 20 degree years
21: Multiple Graduate Degrees: 21+ degree years"
		educ3cat = "Education Category (<HS, HS, HS+)"
		educ5cat = "Education Category (5-Level)"
	;
	FORMAT
		male male_.
		race race_.
		race3cat race3cat_.
		black black_.
		ethnicity ethnicity_.
		borninus borninus_.
		englishfirstlang englishfirstlang_.
		maritalstatus maritalstatus_.
		householdsize householdsize_.
		housingtype housingtype_.
		smkstat smkstat_.
		smokehx smokehx_.
		smoker smoker_.
		alcoholhx alcoholhx_.
		drinker drinker_.
		alcohol alcohol_.
		education education_.
		educ3cat educ3cat_.
		educ5cat educ5cat_.
		sex $sex_.
	;
RUN;


        DATA der_demographics;
            SET WORK.IMPORT;
        RUN;
        