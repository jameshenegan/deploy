%let path_to_file = '../data-csv/oc_hamms.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ham01_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ham02_
		1 = 'Right'
		0 = 'Left'
	;

	VALUE ham03_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE ham03a_
		6 = 'Other - Please specify'
		5 = 'Technical problems (includes no time or no tester)'
		1 = 'Physical/sensory impairment'
		2 = 'Emotional problems stress physical illness medications or lack of sleep'
		3 = 'Cognitive problems'
		4 = 'Refused'
	;

	VALUE ham04a_
		1 = 'Very easy'
		2 = 'Somewhat easy'
		3 = 'Somewhat difficult'
		4 = 'Very difficult'
	;

	VALUE ham04b_
		1 = 'Very clear'
		2 = 'Somewhat clear'
		3 = 'Somewhat confusing'
		4 = 'Very confusing'
	;

	VALUE ham04c_
		2 = 'Agree'
		3 = 'Neutral'
		1 = 'Strongly agree'
		4 = 'Disagree'
		5 = 'Strongly disagree'
	;

	VALUE ham05_
		1 = 'Very easily'
		2 = 'Somewhat easily'
		3 = 'With some difficulty'
		4 = 'With great difficulty'
		5 = 'Other - Please specify'
	;

	VALUE ham06_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE ham06a_
		6 = 'Other - Please specify'
		5 = 'Technical problems (includes no time or no tester)'
		1 = 'Physical/sensory impairment'
		2 = 'Emotional problems stress physical illness medications or lack of sleep'
		3 = 'Cognitive problems'
		4 = 'Refused'
	;

	VALUE ham07a_
		1 = 'Very easy'
		2 = 'Somewhat easy'
		3 = 'Somewhat difficult'
		4 = 'Very difficult'
	;

	VALUE ham07b_
		1 = 'Very clear'
		2 = 'Somewhat clear'
		3 = 'Somewhat confusing'
		4 = 'Very confusing'
	;

	VALUE ham07c_
		2 = 'Agree'
		1 = 'Strongly agree'
		3 = 'Neutral'
		4 = 'Disagree'
		5 = 'Strongly disagree'
	;

	VALUE ham08_
		1 = 'Very easily'
		2 = 'Somewhat easily'
		3 = 'With some difficulty'
		4 = 'With great difficulty'
		5 = 'Other - Please specify'
	;

	VALUE ham08a_
		1 = 'Very easily'
		2 = 'Somewhat easily'
		3 = 'With some difficulty'
		4 = 'With great difficulty'
	;

	VALUE ham08b_
		1 = 'Very easily'
		2 = 'Somewhat easily'
		4 = 'With great difficulty'
		3 = 'With some difficulty'
	;

	VALUE ham08c_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ham08d_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ham08e_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ham08f_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ham09_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ham10_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE ham10a_
		1 = 'Physical/sensory impairment'
		5 = 'Technical problems (includes no time or no tester)'
		2 = 'Emotional problems stress physical illness medications or lack of sleep'
		3 = 'Cognitive problems'
		4 = 'Refused'
		6 = 'Other - Please specify'
	;

	VALUE ham11a_
		1 = 'Very easy'
		2 = 'Somewhat easy'
		3 = 'Somewhat difficult'
		4 = 'Very difficult'
	;

	VALUE ham11b_
		3 = 'About the same'
		2 = 'Somewhat easier'
		1 = 'Much easier'
		4 = 'Somewhat harder'
		5 = ' Much harder'
	;

	VALUE ham12_
		1 = 'Very easily'
		2 = 'Somewhat easily'
		3 = 'With some difficulty'
		4 = 'With great difficulty'
		5 = 'Other - Please specify'
	;

	VALUE ham12a_
		1 = 'Very easily'
		2 = 'Somewhat easily'
		3 = 'With some difficulty'
		4 = 'With great difficulty'
	;

	VALUE ham12b_
		1 = 'Very easily'
		2 = 'Somewhat easily'
		3 = 'With some difficulty'
		4 = 'With great difficulty'
	;

	VALUE ham12c_
		2 = 'With slightly less difficulty'
		1 = 'With much less difficulty'
		3 = 'With slightly more difficulty'
		4 = 'With much more difficulty'
	;

	VALUE ham12d_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ham12e_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ham12f_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ham12g_
		0 = 'No'
		1 = 'Yes'
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

	INFORMAT crf_version_ham $7.;
	FORMAT crf_version_ham $7.;

	INFORMAT ham01 BEST32.;
	FORMAT ham01 BEST12.;

	INFORMAT ham02 BEST32.;
	FORMAT ham02 BEST12.;

	INFORMAT ham03 BEST32.;
	FORMAT ham03 BEST12.;

	INFORMAT ham03a BEST32.;
	FORMAT ham03a BEST12.;

	INFORMAT ham04a BEST32.;
	FORMAT ham04a BEST12.;

	INFORMAT ham04b BEST32.;
	FORMAT ham04b BEST12.;

	INFORMAT ham04c BEST32.;
	FORMAT ham04c BEST12.;

	INFORMAT ham05 BEST32.;
	FORMAT ham05 BEST12.;

	INFORMAT auto_id_ham BEST32.;
	FORMAT auto_id_ham BEST12.;

	INFORMAT ham06 BEST32.;
	FORMAT ham06 BEST12.;

	INFORMAT ham06a BEST32.;
	FORMAT ham06a BEST12.;

	INFORMAT ham07a BEST32.;
	FORMAT ham07a BEST12.;

	INFORMAT ham07b BEST32.;
	FORMAT ham07b BEST12.;

	INFORMAT ham07c BEST32.;
	FORMAT ham07c BEST12.;

	INFORMAT ham08 BEST32.;
	FORMAT ham08 BEST12.;

	INFORMAT ham08com $30.;
	FORMAT ham08com $30.;

	INFORMAT ham08a BEST32.;
	FORMAT ham08a BEST12.;

	INFORMAT ham08b BEST32.;
	FORMAT ham08b BEST12.;

	INFORMAT ham08c BEST32.;
	FORMAT ham08c BEST12.;

	INFORMAT ham08d BEST32.;
	FORMAT ham08d BEST12.;

	INFORMAT ham08dcom $1.;
	FORMAT ham08dcom $1.;

	INFORMAT ham08e BEST32.;
	FORMAT ham08e BEST12.;

	INFORMAT ham08ecom $1.;
	FORMAT ham08ecom $1.;

	INFORMAT ham08f BEST32.;
	FORMAT ham08f BEST12.;

	INFORMAT ham09 BEST32.;
	FORMAT ham09 BEST12.;

	INFORMAT ham10 BEST32.;
	FORMAT ham10 BEST12.;

	INFORMAT ham10a BEST32.;
	FORMAT ham10a BEST12.;

	INFORMAT ham11a BEST32.;
	FORMAT ham11a BEST12.;

	INFORMAT ham11b BEST32.;
	FORMAT ham11b BEST12.;

	INFORMAT ham12 BEST32.;
	FORMAT ham12 BEST12.;

	INFORMAT ham12a BEST32.;
	FORMAT ham12a BEST12.;

	INFORMAT ham12b BEST32.;
	FORMAT ham12b BEST12.;

	INFORMAT ham12c BEST32.;
	FORMAT ham12c BEST12.;

	INFORMAT ham12d BEST32.;
	FORMAT ham12d BEST12.;

	INFORMAT ham12dcom $1.;
	FORMAT ham12dcom $1.;

	INFORMAT ham12e BEST32.;
	FORMAT ham12e BEST12.;

	INFORMAT ham12ecom $1.;
	FORMAT ham12ecom $1.;

	INFORMAT ham12f BEST32.;
	FORMAT ham12f BEST12.;

	INFORMAT ham12fcom $1.;
	FORMAT ham12fcom $1.;

	INFORMAT ham12g BEST32.;
	FORMAT ham12g BEST12.;

	INFORMAT testerid_ham BEST32.;
	FORMAT testerid_ham BEST12.;

	INPUT
		id_addi
		visit
		crf_version_ham
		ham01
		ham02
		ham03
		ham03a
		ham04a
		ham04b
		ham04c
		ham05
		auto_id_ham
		ham06
		ham06a
		ham07a
		ham07b
		ham07c
		ham08
		ham08com
		ham08a
		ham08b
		ham08c
		ham08d
		ham08dcom
		ham08e
		ham08ecom
		ham08f
		ham09
		ham10
		ham10a
		ham11a
		ham11b
		ham12
		ham12a
		ham12b
		ham12c
		ham12d
		ham12dcom
		ham12e
		ham12ecom
		ham12f
		ham12fcom
		ham12g
		testerid_ham
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_ham = "CRF Version"
		ham01 = "Have known injuries or conditions that may affect their arm hand movement"
		ham02 = "What is the participant's dominant hand"
		ham03 = "Trial 1 was HAMMS protocol completed"
		ham03a = "Trial 1 reason not performed"
		ham04a = "Trial 1 feedback test difficulty"
		ham04b = "Trial 1 instructions difficulty"
		ham04c = "Trial 1 enjoyed test"
		ham05 = "Trial 1 tester feedback"
		auto_id_ham = "Unique Teleform Number"
		ham06 = "was HAMMS protocol completed"
		ham06a = "reason not performed"
		ham07a = "feedback test difficulty"
		ham07b = "instructions difficulty"
		ham07c = "enjoyed test"
		ham08 = "tester feedback"
		ham08com = "RND Other"
		ham08a = "able to maintain constant steady speed"
		ham08b = "during hand motion the participant was able to keep their hand within a plane that is greater than 1 inch but no more than 2 inches above the black surface"
		ham08c = "Was it difficult for the participant to move between the squares on screen"
		ham08d = "Was it difficult for the participant to start the test?"
		ham08dcom = "If yes Why"
		ham08e = "Was it difficult for the participant to get on screen to start the test?"
		ham08ecom = "If yes Why"
		ham08f = "Did the participant have trouble understanding the instructions"
		ham09 = "Have any known injuries or conditions that affect the index finger"
		ham10 = "Index Finger was HAMM protocol completed"
		ham10a = "Index Finger reason not performed"
		ham11a = "Index Finger feedback test difficulty"
		ham11b = "Test Comparison"
		ham12 = "Tester feedback Index finger"
		ham12a = "able to maintain constant steady speed"
		ham12b = "during hand motion the participant was able to keep their hand within a plane that is greater than 1 inch but no more than 2 inches above the black surface"
		ham12c = "Compare hand test to finger task"
		ham12d = "Was it difficult for the participant to move between the squares on screen"
		ham12dcom = "If yes Why"
		ham12e = "Was it difficult for the participant to start the test?"
		ham12ecom = "If yes Why"
		ham12f = "Was it difficult for the participant to get on screen to start the test?"
		ham12fcom = "If yes Why"
		ham12g = "Did the participant have trouble understanding the instructions"
		testerid_ham = "Tester ID"
	;
	FORMAT
		ham01 ham01_.
		ham02 ham02_.
		ham03 ham03_.
		ham03a ham03a_.
		ham04a ham04a_.
		ham04b ham04b_.
		ham04c ham04c_.
		ham05 ham05_.
		ham06 ham06_.
		ham06a ham06a_.
		ham07a ham07a_.
		ham07b ham07b_.
		ham07c ham07c_.
		ham08 ham08_.
		ham08a ham08a_.
		ham08b ham08b_.
		ham08c ham08c_.
		ham08d ham08d_.
		ham08e ham08e_.
		ham08f ham08f_.
		ham09 ham09_.
		ham10 ham10_.
		ham10a ham10a_.
		ham11a ham11a_.
		ham11b ham11b_.
		ham12 ham12_.
		ham12a ham12a_.
		ham12b ham12b_.
		ham12c ham12c_.
		ham12d ham12d_.
		ham12e ham12e_.
		ham12f ham12f_.
		ham12g ham12g_.
	;
RUN;


        DATA oc_hamms;
            SET WORK.IMPORT;
        RUN;
        