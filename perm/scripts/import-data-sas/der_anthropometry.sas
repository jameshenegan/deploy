%let path_to_file = '../data-csv/der_anthropometry.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE intweightloss_
		1 = 'Intentional Weight Loss'
		0 = 'Unintentional Weight Loss'
	;

	VALUE obesity4cat_
		3 = 'Overweight: 25 ≤ BMI < 30 kg/m^2'
		2 = 'Normal: 18.5 ≤ BMI < 25 kg/m^2'
		4 = 'Obese: BMI ≥ 30 kg/m^2'
		1 = 'Underweight: BMI < 18.5 kg/m^2'
	;

	VALUE obesity6cat_
		3 = 'Overweight: 25 less than or equal to BMI < 30 kg/m^2'
		2 = 'Normal: 18.5 less than or equal to BMI < 25 kg/m^2'
		4 = 'Class 1 Obesity: 30 less than or equal to BMI < 35 kg/m^2'
		5 = 'Class 2 Obesity: 35 less than or equal to BMI < 40 kg/m^2'
		6 = 'Class 3 Obesity: BMI ≥ 40 kg/m^2'
		1 = 'Underweight: BMI < 18.5 kg/m^2'
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

	INFORMAT weight BEST32.;
	FORMAT weight BEST12.;

	INFORMAT weightloss BEST32.;
	FORMAT weightloss BEST12.;

	INFORMAT intweightloss BEST32.;
	FORMAT intweightloss BEST12.;

	INFORMAT height BEST32.;
	FORMAT height BEST12.;

	INFORMAT bsa BEST32.;
	FORMAT bsa BEST12.;

	INFORMAT bmi BEST32.;
	FORMAT bmi BEST12.;

	INFORMAT obesity4cat BEST32.;
	FORMAT obesity4cat BEST12.;

	INFORMAT obesity6cat BEST32.;
	FORMAT obesity6cat BEST12.;

	INFORMAT waistcirc BEST32.;
	FORMAT waistcirc BEST12.;

	INFORMAT lowerwaistcirc BEST32.;
	FORMAT lowerwaistcirc BEST12.;

	INFORMAT waistdiam BEST32.;
	FORMAT waistdiam BEST12.;

	INFORMAT waistdepth BEST32.;
	FORMAT waistdepth BEST12.;

	INFORMAT bodytemp BEST32.;
	FORMAT bodytemp BEST12.;

	INFORMAT hipcirc BEST32.;
	FORMAT hipcirc BEST12.;

	INFORMAT tibialength BEST32.;
	FORMAT tibialength BEST12.;

	INFORMAT bicepskinfold BEST32.;
	FORMAT bicepskinfold BEST12.;

	INFORMAT respirations BEST32.;
	FORMAT respirations BEST12.;

	INFORMAT pulse BEST32.;
	FORMAT pulse BEST12.;

	INFORMAT waisthip BEST32.;
	FORMAT waisthip BEST12.;

	INFORMAT waistheight BEST32.;
	FORMAT waistheight BEST12.;

	INPUT
		id_addi
		visit
		weight
		weightloss
		intweightloss
		height
		bsa
		bmi
		obesity4cat
		obesity6cat
		waistcirc
		lowerwaistcirc
		waistdiam
		waistdepth
		bodytemp
		hipcirc
		tibialength
		bicepskinfold
		respirations
		pulse
		waisthip
		waistheight
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		weight = "Weight (kg)"
		weightloss = "Weight Loss Since Previous Visit (kg)"
		intweightloss = "Intentional Weight Loss Since Previous Visit (kg)"
		height = "Height (cm)"
		bsa = "Body Surface Area using Du Bois formula (m^2)"
		bmi = "Body Mass Index (kg/m^2)"
		obesity4cat = "CDC Obesity Classification (4-category)"
		obesity6cat = "CDC Obesity Classification (6-category)"
		waistcirc = "Upper Waist Circumference (cm)"
		lowerwaistcirc = "Lower Waist Circumference (cm)"
		waistdiam = "Waist Diameter (cm)"
		waistdepth = "Waist Depth (cm)"
		bodytemp = "Oral Body Temperature (Fahrenheit)"
		hipcirc = "Hip (buttocks) Circumference (cm)"
		tibialength = "Right Tibia Length (cm)"
		bicepskinfold = "Right Bicep Skinfold Thickness (cm)"
		respirations = "Respirations (breaths/min)"
		pulse = "Pulse (beats/min)"
		waisthip = "Waist-to-Hip Ratio"
		waistheight = "Waist-to-Height Ratio"
	;
	FORMAT
		intweightloss intweightloss_.
		obesity4cat obesity4cat_.
		obesity6cat obesity6cat_.
	;
RUN;


        DATA der_anthropometry;
            SET WORK.IMPORT;
        RUN;
        