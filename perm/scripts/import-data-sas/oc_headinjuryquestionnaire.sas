%let path_to_file = '../data-csv/oc_headinjuryquestionnaire.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE hadconcussion_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE c1cause_
		1 = 'Fall'
		5 = 'Sports related injury'
		2 = 'Car accident'
		7 = 'Other'
		3 = 'Bicycle accident'
		6 = 'Assault'
		4 = 'Military injury'
	;

	VALUE c1lossconsc_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE c1medical_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE c1mddx_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE c1headloc_
		1 = 'Front of the head'
		4 = 'Back of the head'
		2 = 'Right side of the head'
		5 = 'Top of the head'
		3 = ' Left side of the head'
		6 = 'Blast injury'
	;

	VALUE c1headachedur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c1headachedur2_
		2 = 'More than 6 months'
		3 = 'More than 1 year'
		1 = 'More than 1 month'
	;

	VALUE c1nauseadur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c1vomitingdur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c1balancedur_
		3 = 'More than 3 weeks'
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
	;

	VALUE c1balancedur2_
		3 = 'More than 1 year'
		2 = 'More than 6 months'
		1 = 'More than 1 month'
	;

	VALUE c1dizzinessdur_
		1 = 'Less than 3 days'
		3 = 'More than 3 weeks'
		2 = 'Less than 3 weeks'
	;

	VALUE c1dizzinessdur2_
		3 = 'More than 1 year'
		1 = 'More than 1 month'
		2 = 'More than 6 months'
	;

	VALUE c1visiondur_
		1 = 'Less than 3 days'
		3 = 'More than 3 weeks'
		2 = 'Less than 3 weeks'
	;

	VALUE c1visiondur2_
		3 = 'More than 1 year'
		1 = 'More than 1 month'
		2 = 'More than 6 months'
	;

	VALUE c1trbconcdur_
		3 = 'More than 3 weeks'
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
	;

	VALUE c1trbconsdur2_
		1 = 'More than 1 month'
		3 = 'More than 1 year'
		2 = 'More than 6 months'
	;

	VALUE c1confusiondur_
		1 = 'Less than 3 days'
		3 = 'More than 3 weeks'
		2 = 'Less than 3 weeks'
	;

	VALUE c1confusiondur2_
		1 = 'More than 1 month'
		3 = 'More than 1 year'
		2 = 'More than 6 months'
	;

	VALUE c1amnesiadur_
		3 = 'More than 3 weeks'
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
	;

	VALUE c1amnesiadur2_
		3 = 'More than 1 year'
		2 = 'More than 6 months'
		1 = 'More than 1 month'
	;

	VALUE c1fatiguedur_
		1 = 'Less than 3 days'
		3 = 'More than 3 weeks'
		2 = 'Less than 3 weeks'
	;

	VALUE c1fatiguedur2_
		1 = 'More than 1 month'
		3 = 'More than 1 year'
		2 = 'More than 6 months'
	;

	VALUE c1sensitivitydur_
		1 = 'Less than 3 days'
		3 = 'More than 3 weeks'
		2 = 'Less than 3 weeks'
	;

	VALUE c1sensitivitydur2_
		2 = 'More than 6 months'
		1 = 'More than 1 month'
		3 = 'More than 1 year'
	;

	VALUE c1sleepdur_
		3 = 'More than 3 weeks'
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
	;

	VALUE c1sleepdur2_
		3 = 'More than 1 year'
		1 = 'More than 1 month'
		2 = 'More than 6 months'
	;

	VALUE c1moodchdur_
		3 = 'More than 3 weeks'
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
	;

	VALUE c1moodchdur2_
		3 = 'More than 1 year'
		2 = 'More than 6 months'
		1 = 'More than 1 month'
	;

	VALUE c1depressiondur_
		3 = 'More than 3 weeks'
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
	;

	VALUE c1depressiondur2_
		2 = 'More than 6 months'
		1 = 'More than 1 month'
		3 = 'More than 1 year'
	;

	VALUE c1anxietydur_
		1 = 'Less than 3 days'
		3 = 'More than 3 weeks'
		2 = 'Less than 3 weeks'
	;

	VALUE c1anxietydur2_
		2 = 'More than 6 months'
		1 = 'More than 1 month'
		3 = 'More than 1 year'
	;

	VALUE c1agitationdur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c1angerdur_
		3 = 'More than 3 weeks'
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
	;

	VALUE c1angerdur2_
		3 = 'More than 1 year'
		1 = 'More than 1 month'
		2 = 'More than 6 months'
	;

	VALUE c1aggressiondur_
		3 = 'More than 3 weeks'
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
	;

	VALUE c1aggressiondur2_
		3 = 'More than 1 year'
		1 = 'More than 1 month'
		2 = 'More than 6 months'
	;

	VALUE concussion2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE c2cause_
		5 = 'Sports related injury'
		1 = 'Fall'
		2 = 'Car accident'
		7 = 'Other'
		6 = 'Assault'
		3 = 'Bicycle accident'
		4 = 'Military injury'
	;

	VALUE c2lossconsc_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE c2medical_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE c2mddx_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE c2headloc_
		4 = 'Back of the head'
		1 = 'Front of the head'
		2 = 'Right side of the head'
		3 = ' Left side of the head'
		5 = 'Top of the head'
		6 = 'Blast injury'
	;

	VALUE c2headachedur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2nauseadur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2vomitingdur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2balancedur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2dizzinessdur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2visiondur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2trbconcdur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2confusiondur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2amnesiadur_
		1 = 'Less than 3 days'
		3 = 'More than 3 weeks'
		2 = 'Less than 3 weeks'
	;

	VALUE c2fatiguedur_
		1 = 'Less than 3 days'
		3 = 'More than 3 weeks'
		2 = 'Less than 3 weeks'
	;

	VALUE c2fatiguedur2_
		1 = 'More than 1 month'
		2 = 'More than 6 months'
		3 = 'More than 1 year'
	;

	VALUE c2sensitivitydur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2sleepdur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2moodchdur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2depressiondur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2anxietydur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2agitationdur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2angerdur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c2aggressiondur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE concussion3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE c3cause_
		5 = 'Sports related injury'
		1 = 'Fall'
		2 = 'Car accident'
		3 = 'Bicycle accident'
		4 = 'Military injury'
		6 = 'Assault'
		7 = 'Other'
	;

	VALUE c3lossconsc_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE c3medical_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE c3mddx_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE c3headloc_
		4 = 'Back of the head'
		1 = 'Front of the head'
		2 = 'Right side of the head'
		3 = ' Left side of the head'
		5 = 'Top of the head'
		6 = 'Blast injury'
	;

	VALUE c3headachedur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c3nauseadur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c3vomitingdur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
	;

	VALUE c3dizzinessdur_
		1 = 'Less than 3 days'
		3 = 'More than 3 weeks'
		2 = 'Less than 3 weeks'
	;

	VALUE c3dizzinessdur2_
		1 = 'More than 1 month'
		2 = 'More than 6 months'
		3 = 'More than 1 year'
	;

	VALUE c3fatiguedur_
		3 = 'More than 3 weeks'
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
	;

	VALUE c3fatiguedur2_
		1 = 'More than 1 month'
		2 = 'More than 6 months'
		3 = 'More than 1 year'
	;

	VALUE concussion4_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE c4cause_
		5 = 'Sports related injury'
		3 = 'Bicycle accident'
		1 = 'Fall'
		2 = 'Car accident'
		4 = 'Military injury'
		6 = 'Assault'
		7 = 'Other'
	;

	VALUE c4lossconsc_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE c4medical_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE c4mddx_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE c4headloc_
		2 = 'Right side of the head'
		1 = 'Front of the head'
		4 = 'Back of the head'
		3 = ' Left side of the head'
		5 = 'Top of the head'
		6 = 'Blast injury'
	;

	VALUE c4headachedur_
		2 = 'Less than 3 weeks'
		1 = 'Less than 3 days'
		3 = 'More than 3 weeks'
	;

	VALUE c4balancedur_
		3 = 'More than 3 weeks'
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
	;

	VALUE c4balancedur2_
		3 = 'More than 1 year'
		1 = 'More than 1 month'
		2 = 'More than 6 months'
	;

	VALUE c4dizzinessdur_
		3 = 'More than 3 weeks'
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
	;

	VALUE c4dizzinessdur2_
		3 = 'More than 1 year'
		1 = 'More than 1 month'
		2 = 'More than 6 months'
	;

	VALUE concussion5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE c5cause_
		1 = 'Fall'
		2 = 'Car accident'
		3 = 'Bicycle accident'
		4 = 'Military injury'
		5 = 'Sports related injury'
		6 = 'Assault'
		7 = 'Other'
	;

	VALUE c5lossconsc_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE c5medical_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE c5headloc_
		4 = 'Back of the head'
		1 = 'Front of the head'
		2 = 'Right side of the head'
		3 = ' Left side of the head'
		5 = 'Top of the head'
		6 = 'Blast injury'
	;

	VALUE c5vomitingdur_
		1 = 'Less than 3 days'
		2 = 'Less than 3 weeks'
		3 = 'More than 3 weeks'
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

	INFORMAT crf_version_heainjque $7.;
	FORMAT crf_version_heainjque $7.;

	INFORMAT hadconcussion BEST32.;
	FORMAT hadconcussion BEST12.;

	INFORMAT howmany BEST32.;
	FORMAT howmany BEST12.;

	INFORMAT c1when BEST32.;
	FORMAT c1when BEST12.;

	INFORMAT c1cause BEST32.;
	FORMAT c1cause BEST12.;

	INFORMAT c1lossconsc BEST32.;
	FORMAT c1lossconsc BEST12.;

	INFORMAT c1medical BEST32.;
	FORMAT c1medical BEST12.;

	INFORMAT c1mddx BEST32.;
	FORMAT c1mddx BEST12.;

	INFORMAT c1headloc BEST32.;
	FORMAT c1headloc BEST12.;

	INFORMAT c1headache $1.;
	FORMAT c1headache $1.;

	INFORMAT c1headachedur BEST32.;
	FORMAT c1headachedur BEST12.;

	INFORMAT c1headachedur2 BEST32.;
	FORMAT c1headachedur2 BEST12.;

	INFORMAT c1nausea $1.;
	FORMAT c1nausea $1.;

	INFORMAT c1nauseadur BEST32.;
	FORMAT c1nauseadur BEST12.;

	INFORMAT c1nauseadur2 $1.;
	FORMAT c1nauseadur2 $1.;

	INFORMAT c1vomiting $1.;
	FORMAT c1vomiting $1.;

	INFORMAT c1vomitingdur BEST32.;
	FORMAT c1vomitingdur BEST12.;

	INFORMAT c1vomitdur2 $1.;
	FORMAT c1vomitdur2 $1.;

	INFORMAT c1balance $1.;
	FORMAT c1balance $1.;

	INFORMAT c1balancedur BEST32.;
	FORMAT c1balancedur BEST12.;

	INFORMAT c1balancedur2 BEST32.;
	FORMAT c1balancedur2 BEST12.;

	INFORMAT c1dizziness $1.;
	FORMAT c1dizziness $1.;

	INFORMAT c1dizzinessdur BEST32.;
	FORMAT c1dizzinessdur BEST12.;

	INFORMAT c1dizzinessdur2 BEST32.;
	FORMAT c1dizzinessdur2 BEST12.;

	INFORMAT c1vision $1.;
	FORMAT c1vision $1.;

	INFORMAT c1visiondur BEST32.;
	FORMAT c1visiondur BEST12.;

	INFORMAT c1visiondur2 BEST32.;
	FORMAT c1visiondur2 BEST12.;

	INFORMAT c1trbconc $1.;
	FORMAT c1trbconc $1.;

	INFORMAT c1trbconcdur BEST32.;
	FORMAT c1trbconcdur BEST12.;

	INFORMAT c1trbconsdur2 BEST32.;
	FORMAT c1trbconsdur2 BEST12.;

	INFORMAT c1confusion $1.;
	FORMAT c1confusion $1.;

	INFORMAT c1confusiondur BEST32.;
	FORMAT c1confusiondur BEST12.;

	INFORMAT c1confusiondur2 BEST32.;
	FORMAT c1confusiondur2 BEST12.;

	INFORMAT c1amnesia $1.;
	FORMAT c1amnesia $1.;

	INFORMAT c1amnesiadur BEST32.;
	FORMAT c1amnesiadur BEST12.;

	INFORMAT c1amnesiadur2 BEST32.;
	FORMAT c1amnesiadur2 BEST12.;

	INFORMAT c1fatigue $1.;
	FORMAT c1fatigue $1.;

	INFORMAT c1fatiguedur BEST32.;
	FORMAT c1fatiguedur BEST12.;

	INFORMAT c1fatiguedur2 BEST32.;
	FORMAT c1fatiguedur2 BEST12.;

	INFORMAT c1sensitivity $1.;
	FORMAT c1sensitivity $1.;

	INFORMAT c1sensitivitydur BEST32.;
	FORMAT c1sensitivitydur BEST12.;

	INFORMAT c1sensitivitydur2 BEST32.;
	FORMAT c1sensitivitydur2 BEST12.;

	INFORMAT c1sleepdis $1.;
	FORMAT c1sleepdis $1.;

	INFORMAT c1sleepdur BEST32.;
	FORMAT c1sleepdur BEST12.;

	INFORMAT c1sleepdur2 BEST32.;
	FORMAT c1sleepdur2 BEST12.;

	INFORMAT c1moodch $1.;
	FORMAT c1moodch $1.;

	INFORMAT c1moodchdur BEST32.;
	FORMAT c1moodchdur BEST12.;

	INFORMAT c1moodchdur2 BEST32.;
	FORMAT c1moodchdur2 BEST12.;

	INFORMAT c1othersym $1.;
	FORMAT c1othersym $1.;

	INFORMAT c1noneabove $1.;
	FORMAT c1noneabove $1.;

	INFORMAT c1depression $1.;
	FORMAT c1depression $1.;

	INFORMAT c1depressiondur BEST32.;
	FORMAT c1depressiondur BEST12.;

	INFORMAT c1depressiondur2 BEST32.;
	FORMAT c1depressiondur2 BEST12.;

	INFORMAT c1anxiety $1.;
	FORMAT c1anxiety $1.;

	INFORMAT c1anxietydur BEST32.;
	FORMAT c1anxietydur BEST12.;

	INFORMAT c1anxietydur2 BEST32.;
	FORMAT c1anxietydur2 BEST12.;

	INFORMAT c1agitation $1.;
	FORMAT c1agitation $1.;

	INFORMAT c1agitationdur BEST32.;
	FORMAT c1agitationdur BEST12.;

	INFORMAT c1agitationydur2 $1.;
	FORMAT c1agitationydur2 $1.;

	INFORMAT c1anger $1.;
	FORMAT c1anger $1.;

	INFORMAT c1angerdur BEST32.;
	FORMAT c1angerdur BEST12.;

	INFORMAT c1angerdur2 BEST32.;
	FORMAT c1angerdur2 BEST12.;

	INFORMAT c1aggression $1.;
	FORMAT c1aggression $1.;

	INFORMAT c1aggressiondur BEST32.;
	FORMAT c1aggressiondur BEST12.;

	INFORMAT c1aggressiondur2 BEST32.;
	FORMAT c1aggressiondur2 BEST12.;

	INFORMAT c1moodothersy $1.;
	FORMAT c1moodothersy $1.;

	INFORMAT c1moodnoneabove $1.;
	FORMAT c1moodnoneabove $1.;

	INFORMAT concussion2 BEST32.;
	FORMAT concussion2 BEST12.;

	INFORMAT c2when BEST32.;
	FORMAT c2when BEST12.;

	INFORMAT c2cause BEST32.;
	FORMAT c2cause BEST12.;

	INFORMAT c2lossconsc BEST32.;
	FORMAT c2lossconsc BEST12.;

	INFORMAT c2medical BEST32.;
	FORMAT c2medical BEST12.;

	INFORMAT c2mddx BEST32.;
	FORMAT c2mddx BEST12.;

	INFORMAT c2headloc BEST32.;
	FORMAT c2headloc BEST12.;

	INFORMAT c2headache $1.;
	FORMAT c2headache $1.;

	INFORMAT c2headachedur BEST32.;
	FORMAT c2headachedur BEST12.;

	INFORMAT c2headachedur2 $1.;
	FORMAT c2headachedur2 $1.;

	INFORMAT c2nausea $1.;
	FORMAT c2nausea $1.;

	INFORMAT c2nauseadur BEST32.;
	FORMAT c2nauseadur BEST12.;

	INFORMAT c2nauseadur2 $1.;
	FORMAT c2nauseadur2 $1.;

	INFORMAT c2vomiting $1.;
	FORMAT c2vomiting $1.;

	INFORMAT c2vomitingdur BEST32.;
	FORMAT c2vomitingdur BEST12.;

	INFORMAT c2vomitdur2 $1.;
	FORMAT c2vomitdur2 $1.;

	INFORMAT c2balance $1.;
	FORMAT c2balance $1.;

	INFORMAT c2balancedur BEST32.;
	FORMAT c2balancedur BEST12.;

	INFORMAT c2balancedur2 $1.;
	FORMAT c2balancedur2 $1.;

	INFORMAT c2dizziness $1.;
	FORMAT c2dizziness $1.;

	INFORMAT c2dizzinessdur BEST32.;
	FORMAT c2dizzinessdur BEST12.;

	INFORMAT c2dizzinessdur2 $1.;
	FORMAT c2dizzinessdur2 $1.;

	INFORMAT c2vision $1.;
	FORMAT c2vision $1.;

	INFORMAT c2visiondur BEST32.;
	FORMAT c2visiondur BEST12.;

	INFORMAT c2visiondur2 $1.;
	FORMAT c2visiondur2 $1.;

	INFORMAT c2trbconc $1.;
	FORMAT c2trbconc $1.;

	INFORMAT c2trbconcdur BEST32.;
	FORMAT c2trbconcdur BEST12.;

	INFORMAT c2trbconsdur2 $1.;
	FORMAT c2trbconsdur2 $1.;

	INFORMAT c2confusion $1.;
	FORMAT c2confusion $1.;

	INFORMAT c2confusiondur BEST32.;
	FORMAT c2confusiondur BEST12.;

	INFORMAT c2confusiondur2 $1.;
	FORMAT c2confusiondur2 $1.;

	INFORMAT c2amnesia $1.;
	FORMAT c2amnesia $1.;

	INFORMAT c2amnesiadur BEST32.;
	FORMAT c2amnesiadur BEST12.;

	INFORMAT c2amnesiadur2 $1.;
	FORMAT c2amnesiadur2 $1.;

	INFORMAT c2fatigue $1.;
	FORMAT c2fatigue $1.;

	INFORMAT c2fatiguedur BEST32.;
	FORMAT c2fatiguedur BEST12.;

	INFORMAT c2fatiguedur2 BEST32.;
	FORMAT c2fatiguedur2 BEST12.;

	INFORMAT c2sensitivity $1.;
	FORMAT c2sensitivity $1.;

	INFORMAT c2sensitivitydur BEST32.;
	FORMAT c2sensitivitydur BEST12.;

	INFORMAT c2sensitivitydur2 $1.;
	FORMAT c2sensitivitydur2 $1.;

	INFORMAT c2sleepdis $1.;
	FORMAT c2sleepdis $1.;

	INFORMAT c2sleepdur BEST32.;
	FORMAT c2sleepdur BEST12.;

	INFORMAT c2sleepdur2 $1.;
	FORMAT c2sleepdur2 $1.;

	INFORMAT c2moodch $1.;
	FORMAT c2moodch $1.;

	INFORMAT c2moodchdur BEST32.;
	FORMAT c2moodchdur BEST12.;

	INFORMAT c2moodchdur2 $1.;
	FORMAT c2moodchdur2 $1.;

	INFORMAT c2othersym $1.;
	FORMAT c2othersym $1.;

	INFORMAT c2noneabove $1.;
	FORMAT c2noneabove $1.;

	INFORMAT c2depression $1.;
	FORMAT c2depression $1.;

	INFORMAT c2depressiondur BEST32.;
	FORMAT c2depressiondur BEST12.;

	INFORMAT c2depressiondur2 $1.;
	FORMAT c2depressiondur2 $1.;

	INFORMAT c2anxiety $1.;
	FORMAT c2anxiety $1.;

	INFORMAT c2anxietydur BEST32.;
	FORMAT c2anxietydur BEST12.;

	INFORMAT c2anxietydur2 $1.;
	FORMAT c2anxietydur2 $1.;

	INFORMAT c2agitation $1.;
	FORMAT c2agitation $1.;

	INFORMAT c2agitationdur BEST32.;
	FORMAT c2agitationdur BEST12.;

	INFORMAT c2agitationydur2 $1.;
	FORMAT c2agitationydur2 $1.;

	INFORMAT c2anger $1.;
	FORMAT c2anger $1.;

	INFORMAT c2angerdur BEST32.;
	FORMAT c2angerdur BEST12.;

	INFORMAT c2angerdur2 $1.;
	FORMAT c2angerdur2 $1.;

	INFORMAT c2aggression $1.;
	FORMAT c2aggression $1.;

	INFORMAT c2aggressiondur BEST32.;
	FORMAT c2aggressiondur BEST12.;

	INFORMAT c2aggressiondur2 $1.;
	FORMAT c2aggressiondur2 $1.;

	INFORMAT c2moodothersy $1.;
	FORMAT c2moodothersy $1.;

	INFORMAT c2moodnoneabove $1.;
	FORMAT c2moodnoneabove $1.;

	INFORMAT concussion3 BEST32.;
	FORMAT concussion3 BEST12.;

	INFORMAT c3when BEST32.;
	FORMAT c3when BEST12.;

	INFORMAT c3cause BEST32.;
	FORMAT c3cause BEST12.;

	INFORMAT c3lossconsc BEST32.;
	FORMAT c3lossconsc BEST12.;

	INFORMAT c3medical BEST32.;
	FORMAT c3medical BEST12.;

	INFORMAT c3mddx BEST32.;
	FORMAT c3mddx BEST12.;

	INFORMAT c3headloc BEST32.;
	FORMAT c3headloc BEST12.;

	INFORMAT c3headache $1.;
	FORMAT c3headache $1.;

	INFORMAT c3headachedur BEST32.;
	FORMAT c3headachedur BEST12.;

	INFORMAT c3headachedur2 $1.;
	FORMAT c3headachedur2 $1.;

	INFORMAT c3nausea $1.;
	FORMAT c3nausea $1.;

	INFORMAT c3nauseadur BEST32.;
	FORMAT c3nauseadur BEST12.;

	INFORMAT c3nauseadur2 $1.;
	FORMAT c3nauseadur2 $1.;

	INFORMAT c3vomiting $1.;
	FORMAT c3vomiting $1.;

	INFORMAT c3vomitingdur BEST32.;
	FORMAT c3vomitingdur BEST12.;

	INFORMAT c3vomitdur2 $1.;
	FORMAT c3vomitdur2 $1.;

	INFORMAT c3balance $1.;
	FORMAT c3balance $1.;

	INFORMAT c3balancedur $1.;
	FORMAT c3balancedur $1.;

	INFORMAT c3balancedur2 $1.;
	FORMAT c3balancedur2 $1.;

	INFORMAT c3dizziness $1.;
	FORMAT c3dizziness $1.;

	INFORMAT c3dizzinessdur BEST32.;
	FORMAT c3dizzinessdur BEST12.;

	INFORMAT c3dizzinessdur2 BEST32.;
	FORMAT c3dizzinessdur2 BEST12.;

	INFORMAT c3vision $1.;
	FORMAT c3vision $1.;

	INFORMAT c3visiondur $1.;
	FORMAT c3visiondur $1.;

	INFORMAT c3visiondur2 $1.;
	FORMAT c3visiondur2 $1.;

	INFORMAT c3trbconc $1.;
	FORMAT c3trbconc $1.;

	INFORMAT c3trbconcdur $1.;
	FORMAT c3trbconcdur $1.;

	INFORMAT c3trbconsdur2 $1.;
	FORMAT c3trbconsdur2 $1.;

	INFORMAT c3confusion $1.;
	FORMAT c3confusion $1.;

	INFORMAT c3confusiondur $1.;
	FORMAT c3confusiondur $1.;

	INFORMAT c3confusiondur2 $1.;
	FORMAT c3confusiondur2 $1.;

	INFORMAT c3amnesia $1.;
	FORMAT c3amnesia $1.;

	INFORMAT c3amnesiadur $1.;
	FORMAT c3amnesiadur $1.;

	INFORMAT c3amnesiadur2 $1.;
	FORMAT c3amnesiadur2 $1.;

	INFORMAT c3fatigue $1.;
	FORMAT c3fatigue $1.;

	INFORMAT c3fatiguedur BEST32.;
	FORMAT c3fatiguedur BEST12.;

	INFORMAT c3fatiguedur2 BEST32.;
	FORMAT c3fatiguedur2 BEST12.;

	INFORMAT c3sensitivity $1.;
	FORMAT c3sensitivity $1.;

	INFORMAT c3sensitivitydur $1.;
	FORMAT c3sensitivitydur $1.;

	INFORMAT c3sensitivitydur2 $1.;
	FORMAT c3sensitivitydur2 $1.;

	INFORMAT c3sleepdis $1.;
	FORMAT c3sleepdis $1.;

	INFORMAT c3sleepdur $1.;
	FORMAT c3sleepdur $1.;

	INFORMAT c3sleepdur2 $1.;
	FORMAT c3sleepdur2 $1.;

	INFORMAT c3moodch $1.;
	FORMAT c3moodch $1.;

	INFORMAT c3moodchdur $1.;
	FORMAT c3moodchdur $1.;

	INFORMAT c3moodchdur2 $1.;
	FORMAT c3moodchdur2 $1.;

	INFORMAT c3othersym $1.;
	FORMAT c3othersym $1.;

	INFORMAT c3noneabove $1.;
	FORMAT c3noneabove $1.;

	INFORMAT c3depression $1.;
	FORMAT c3depression $1.;

	INFORMAT c3depressiondur $1.;
	FORMAT c3depressiondur $1.;

	INFORMAT c3depressiondur2 $1.;
	FORMAT c3depressiondur2 $1.;

	INFORMAT c3anxiety $1.;
	FORMAT c3anxiety $1.;

	INFORMAT c3anxietydur $1.;
	FORMAT c3anxietydur $1.;

	INFORMAT c3anxietydur2 $1.;
	FORMAT c3anxietydur2 $1.;

	INFORMAT c3agitation $1.;
	FORMAT c3agitation $1.;

	INFORMAT c3agitationdur $1.;
	FORMAT c3agitationdur $1.;

	INFORMAT c3agitationydur2 $1.;
	FORMAT c3agitationydur2 $1.;

	INFORMAT c3anger $1.;
	FORMAT c3anger $1.;

	INFORMAT c3angerdur $1.;
	FORMAT c3angerdur $1.;

	INFORMAT c3angerdur2 $1.;
	FORMAT c3angerdur2 $1.;

	INFORMAT c3aggression $1.;
	FORMAT c3aggression $1.;

	INFORMAT c3aggressiondur $1.;
	FORMAT c3aggressiondur $1.;

	INFORMAT c3aggressiondur2 $1.;
	FORMAT c3aggressiondur2 $1.;

	INFORMAT c3moodothersy $1.;
	FORMAT c3moodothersy $1.;

	INFORMAT c3moodnoneabove $1.;
	FORMAT c3moodnoneabove $1.;

	INFORMAT concussion4 BEST32.;
	FORMAT concussion4 BEST12.;

	INFORMAT c4when BEST32.;
	FORMAT c4when BEST12.;

	INFORMAT c4cause BEST32.;
	FORMAT c4cause BEST12.;

	INFORMAT c4lossconsc BEST32.;
	FORMAT c4lossconsc BEST12.;

	INFORMAT c4medical BEST32.;
	FORMAT c4medical BEST12.;

	INFORMAT c4mddx BEST32.;
	FORMAT c4mddx BEST12.;

	INFORMAT c4headloc BEST32.;
	FORMAT c4headloc BEST12.;

	INFORMAT c4headache $1.;
	FORMAT c4headache $1.;

	INFORMAT c4headachedur BEST32.;
	FORMAT c4headachedur BEST12.;

	INFORMAT c4headachedur2 $1.;
	FORMAT c4headachedur2 $1.;

	INFORMAT c4nausea $1.;
	FORMAT c4nausea $1.;

	INFORMAT c4nauseadur $1.;
	FORMAT c4nauseadur $1.;

	INFORMAT c4nauseadur2 $1.;
	FORMAT c4nauseadur2 $1.;

	INFORMAT c4vomiting $1.;
	FORMAT c4vomiting $1.;

	INFORMAT c4vomitingdur $1.;
	FORMAT c4vomitingdur $1.;

	INFORMAT c4vomitdur2 $1.;
	FORMAT c4vomitdur2 $1.;

	INFORMAT c4balance $1.;
	FORMAT c4balance $1.;

	INFORMAT c4balancedur BEST32.;
	FORMAT c4balancedur BEST12.;

	INFORMAT c4balancedur2 BEST32.;
	FORMAT c4balancedur2 BEST12.;

	INFORMAT c4dizziness $1.;
	FORMAT c4dizziness $1.;

	INFORMAT c4dizzinessdur BEST32.;
	FORMAT c4dizzinessdur BEST12.;

	INFORMAT c4dizzinessdur2 BEST32.;
	FORMAT c4dizzinessdur2 BEST12.;

	INFORMAT c4vision $1.;
	FORMAT c4vision $1.;

	INFORMAT c4visiondur $1.;
	FORMAT c4visiondur $1.;

	INFORMAT c4visiondur2 $1.;
	FORMAT c4visiondur2 $1.;

	INFORMAT c4trbconc $1.;
	FORMAT c4trbconc $1.;

	INFORMAT c4trbconcdur $1.;
	FORMAT c4trbconcdur $1.;

	INFORMAT c4trbconsdur2 $1.;
	FORMAT c4trbconsdur2 $1.;

	INFORMAT c4confusion $1.;
	FORMAT c4confusion $1.;

	INFORMAT c4confusiondur $1.;
	FORMAT c4confusiondur $1.;

	INFORMAT c4confusiondur2 $1.;
	FORMAT c4confusiondur2 $1.;

	INFORMAT c4amnesia $1.;
	FORMAT c4amnesia $1.;

	INFORMAT c4amnesiadur $1.;
	FORMAT c4amnesiadur $1.;

	INFORMAT c4amnesiadur2 $1.;
	FORMAT c4amnesiadur2 $1.;

	INFORMAT c4fatigue $1.;
	FORMAT c4fatigue $1.;

	INFORMAT c4fatiguedur $1.;
	FORMAT c4fatiguedur $1.;

	INFORMAT c4fatiguedur2 $1.;
	FORMAT c4fatiguedur2 $1.;

	INFORMAT c4sensitivity $1.;
	FORMAT c4sensitivity $1.;

	INFORMAT c4sensitivitydur $1.;
	FORMAT c4sensitivitydur $1.;

	INFORMAT c4sensitivitydur2 $1.;
	FORMAT c4sensitivitydur2 $1.;

	INFORMAT c4sleepdis $1.;
	FORMAT c4sleepdis $1.;

	INFORMAT c4sleepdur $1.;
	FORMAT c4sleepdur $1.;

	INFORMAT c4sleepdur2 $1.;
	FORMAT c4sleepdur2 $1.;

	INFORMAT c4moodch $1.;
	FORMAT c4moodch $1.;

	INFORMAT c4moodchdur $1.;
	FORMAT c4moodchdur $1.;

	INFORMAT c4moodchdur2 $1.;
	FORMAT c4moodchdur2 $1.;

	INFORMAT c4othersym $1.;
	FORMAT c4othersym $1.;

	INFORMAT c4noneabove $1.;
	FORMAT c4noneabove $1.;

	INFORMAT c4depression $1.;
	FORMAT c4depression $1.;

	INFORMAT c4depressiondur $1.;
	FORMAT c4depressiondur $1.;

	INFORMAT c4depressiondur2 $1.;
	FORMAT c4depressiondur2 $1.;

	INFORMAT c4anxiety $1.;
	FORMAT c4anxiety $1.;

	INFORMAT c4anxietydur $1.;
	FORMAT c4anxietydur $1.;

	INFORMAT c4anxietydur2 $1.;
	FORMAT c4anxietydur2 $1.;

	INFORMAT c4agitation $1.;
	FORMAT c4agitation $1.;

	INFORMAT c4agitationdur $1.;
	FORMAT c4agitationdur $1.;

	INFORMAT c4agitationydur2 $1.;
	FORMAT c4agitationydur2 $1.;

	INFORMAT c4anger $1.;
	FORMAT c4anger $1.;

	INFORMAT c4angerdur $1.;
	FORMAT c4angerdur $1.;

	INFORMAT c4angerdur2 $1.;
	FORMAT c4angerdur2 $1.;

	INFORMAT c4aggression $1.;
	FORMAT c4aggression $1.;

	INFORMAT c4aggressiondur $1.;
	FORMAT c4aggressiondur $1.;

	INFORMAT c4aggressiondur2 $1.;
	FORMAT c4aggressiondur2 $1.;

	INFORMAT c4moodothersy $1.;
	FORMAT c4moodothersy $1.;

	INFORMAT c4moodnoneabove $1.;
	FORMAT c4moodnoneabove $1.;

	INFORMAT concussion5 BEST32.;
	FORMAT concussion5 BEST12.;

	INFORMAT c5when BEST32.;
	FORMAT c5when BEST12.;

	INFORMAT c5cause BEST32.;
	FORMAT c5cause BEST12.;

	INFORMAT c5lossconsc BEST32.;
	FORMAT c5lossconsc BEST12.;

	INFORMAT c5medical BEST32.;
	FORMAT c5medical BEST12.;

	INFORMAT c5mddx $1.;
	FORMAT c5mddx $1.;

	INFORMAT c5headloc BEST32.;
	FORMAT c5headloc BEST12.;

	INFORMAT c5headache $1.;
	FORMAT c5headache $1.;

	INFORMAT c5headachedur $1.;
	FORMAT c5headachedur $1.;

	INFORMAT c5headachedur2 $1.;
	FORMAT c5headachedur2 $1.;

	INFORMAT c5nausea $1.;
	FORMAT c5nausea $1.;

	INFORMAT c5nauseadur $1.;
	FORMAT c5nauseadur $1.;

	INFORMAT c5nauseadur2 $1.;
	FORMAT c5nauseadur2 $1.;

	INFORMAT c5vomiting $1.;
	FORMAT c5vomiting $1.;

	INFORMAT c5vomitingdur BEST32.;
	FORMAT c5vomitingdur BEST12.;

	INFORMAT c5vomitdur2 $1.;
	FORMAT c5vomitdur2 $1.;

	INFORMAT c5balance $1.;
	FORMAT c5balance $1.;

	INFORMAT c5balancedur $1.;
	FORMAT c5balancedur $1.;

	INFORMAT c5balancedur2 $1.;
	FORMAT c5balancedur2 $1.;

	INFORMAT c5dizziness $1.;
	FORMAT c5dizziness $1.;

	INFORMAT c5dizzinessdur $1.;
	FORMAT c5dizzinessdur $1.;

	INFORMAT c5dizzinessdur2 $1.;
	FORMAT c5dizzinessdur2 $1.;

	INFORMAT c5vision $1.;
	FORMAT c5vision $1.;

	INFORMAT c5visiondur $1.;
	FORMAT c5visiondur $1.;

	INFORMAT c5visiondur2 $1.;
	FORMAT c5visiondur2 $1.;

	INFORMAT c5trbconc $1.;
	FORMAT c5trbconc $1.;

	INFORMAT c5trbconcdur $1.;
	FORMAT c5trbconcdur $1.;

	INFORMAT c5trbconsdur2 $1.;
	FORMAT c5trbconsdur2 $1.;

	INFORMAT c5confusion $1.;
	FORMAT c5confusion $1.;

	INFORMAT c5confusiondur $1.;
	FORMAT c5confusiondur $1.;

	INFORMAT c5confusiondur2 $1.;
	FORMAT c5confusiondur2 $1.;

	INFORMAT c5amnesia $1.;
	FORMAT c5amnesia $1.;

	INFORMAT c5amnesiadur $1.;
	FORMAT c5amnesiadur $1.;

	INFORMAT c5amnesiadur2 $1.;
	FORMAT c5amnesiadur2 $1.;

	INFORMAT c5fatigue $1.;
	FORMAT c5fatigue $1.;

	INFORMAT c5fatiguedur $1.;
	FORMAT c5fatiguedur $1.;

	INFORMAT c5fatiguedur2 $1.;
	FORMAT c5fatiguedur2 $1.;

	INFORMAT c5sensitivity $1.;
	FORMAT c5sensitivity $1.;

	INFORMAT c5sensitivitydur $1.;
	FORMAT c5sensitivitydur $1.;

	INFORMAT c5sensitivitydur2 $1.;
	FORMAT c5sensitivitydur2 $1.;

	INFORMAT c5sleepdis $1.;
	FORMAT c5sleepdis $1.;

	INFORMAT c5sleepdur $1.;
	FORMAT c5sleepdur $1.;

	INFORMAT c5sleepdur2 $1.;
	FORMAT c5sleepdur2 $1.;

	INFORMAT c5moodch $1.;
	FORMAT c5moodch $1.;

	INFORMAT c5moodchdur $1.;
	FORMAT c5moodchdur $1.;

	INFORMAT c5moodchdur2 $1.;
	FORMAT c5moodchdur2 $1.;

	INFORMAT c5othersym $1.;
	FORMAT c5othersym $1.;

	INFORMAT c5noneabove $1.;
	FORMAT c5noneabove $1.;

	INFORMAT c5depression $1.;
	FORMAT c5depression $1.;

	INFORMAT c5depressiondur $1.;
	FORMAT c5depressiondur $1.;

	INFORMAT c5depressiondur2 $1.;
	FORMAT c5depressiondur2 $1.;

	INFORMAT c5anxiety $1.;
	FORMAT c5anxiety $1.;

	INFORMAT c5anxietydur $1.;
	FORMAT c5anxietydur $1.;

	INFORMAT c5anxietydur2 $1.;
	FORMAT c5anxietydur2 $1.;

	INFORMAT c5agitation $1.;
	FORMAT c5agitation $1.;

	INFORMAT c5agitationdur $1.;
	FORMAT c5agitationdur $1.;

	INFORMAT c5agitationydur2 $1.;
	FORMAT c5agitationydur2 $1.;

	INFORMAT c5anger $1.;
	FORMAT c5anger $1.;

	INFORMAT c5angerdur $1.;
	FORMAT c5angerdur $1.;

	INFORMAT c5angerdur2 $1.;
	FORMAT c5angerdur2 $1.;

	INFORMAT c5aggression $1.;
	FORMAT c5aggression $1.;

	INFORMAT c5aggressiondur $1.;
	FORMAT c5aggressiondur $1.;

	INFORMAT c5aggressiondur2 $1.;
	FORMAT c5aggressiondur2 $1.;

	INFORMAT c5moodothersy $1.;
	FORMAT c5moodothersy $1.;

	INFORMAT c5moodnoneabove $1.;
	FORMAT c5moodnoneabove $1.;

	INFORMAT c1aggression_1 BEST32.;
	FORMAT c1aggression_1 BEST12.;

	INFORMAT c1agitation_1 BEST32.;
	FORMAT c1agitation_1 BEST12.;

	INFORMAT c1amnesia_1 BEST32.;
	FORMAT c1amnesia_1 BEST12.;

	INFORMAT c1anger_1 BEST32.;
	FORMAT c1anger_1 BEST12.;

	INFORMAT c1anxiety_1 BEST32.;
	FORMAT c1anxiety_1 BEST12.;

	INFORMAT c1balance_1 BEST32.;
	FORMAT c1balance_1 BEST12.;

	INFORMAT c1confusion_1 BEST32.;
	FORMAT c1confusion_1 BEST12.;

	INFORMAT c1depression_1 BEST32.;
	FORMAT c1depression_1 BEST12.;

	INFORMAT c1dizziness_1 BEST32.;
	FORMAT c1dizziness_1 BEST12.;

	INFORMAT c1fatigue_1 BEST32.;
	FORMAT c1fatigue_1 BEST12.;

	INFORMAT c1headache_1 BEST32.;
	FORMAT c1headache_1 BEST12.;

	INFORMAT c1moodch_1 BEST32.;
	FORMAT c1moodch_1 BEST12.;

	INFORMAT c1moodnoneabove_1 BEST32.;
	FORMAT c1moodnoneabove_1 BEST12.;

	INFORMAT c1moodothersy_1 BEST32.;
	FORMAT c1moodothersy_1 BEST12.;

	INFORMAT c1nausea_1 BEST32.;
	FORMAT c1nausea_1 BEST12.;

	INFORMAT c1noneabove_1 BEST32.;
	FORMAT c1noneabove_1 BEST12.;

	INFORMAT c1othersym_1 BEST32.;
	FORMAT c1othersym_1 BEST12.;

	INFORMAT c1sensitivity_1 BEST32.;
	FORMAT c1sensitivity_1 BEST12.;

	INFORMAT c1sleepdis_1 BEST32.;
	FORMAT c1sleepdis_1 BEST12.;

	INFORMAT c1trbconc_1 BEST32.;
	FORMAT c1trbconc_1 BEST12.;

	INFORMAT c1vision_1 BEST32.;
	FORMAT c1vision_1 BEST12.;

	INFORMAT c1vomiting_1 BEST32.;
	FORMAT c1vomiting_1 BEST12.;

	INFORMAT c2aggression_1 BEST32.;
	FORMAT c2aggression_1 BEST12.;

	INFORMAT c2agitation_1 BEST32.;
	FORMAT c2agitation_1 BEST12.;

	INFORMAT c2amnesia_1 BEST32.;
	FORMAT c2amnesia_1 BEST12.;

	INFORMAT c2anger_1 BEST32.;
	FORMAT c2anger_1 BEST12.;

	INFORMAT c2anxiety_1 BEST32.;
	FORMAT c2anxiety_1 BEST12.;

	INFORMAT c2balance_1 BEST32.;
	FORMAT c2balance_1 BEST12.;

	INFORMAT c2confusion_1 BEST32.;
	FORMAT c2confusion_1 BEST12.;

	INFORMAT c2depression_1 BEST32.;
	FORMAT c2depression_1 BEST12.;

	INFORMAT c2dizziness_1 BEST32.;
	FORMAT c2dizziness_1 BEST12.;

	INFORMAT c2fatigue_1 BEST32.;
	FORMAT c2fatigue_1 BEST12.;

	INFORMAT c2headache_1 BEST32.;
	FORMAT c2headache_1 BEST12.;

	INFORMAT c2moodch_1 BEST32.;
	FORMAT c2moodch_1 BEST12.;

	INFORMAT c2moodnoneabove_1 BEST32.;
	FORMAT c2moodnoneabove_1 BEST12.;

	INFORMAT c2moodothersy_1 $1.;
	FORMAT c2moodothersy_1 $1.;

	INFORMAT c2nausea_1 BEST32.;
	FORMAT c2nausea_1 BEST12.;

	INFORMAT c2noneabove_1 BEST32.;
	FORMAT c2noneabove_1 BEST12.;

	INFORMAT c2othersym_1 BEST32.;
	FORMAT c2othersym_1 BEST12.;

	INFORMAT c2sensitivity_1 BEST32.;
	FORMAT c2sensitivity_1 BEST12.;

	INFORMAT c2sleepdis_1 BEST32.;
	FORMAT c2sleepdis_1 BEST12.;

	INFORMAT c2trbconc_1 BEST32.;
	FORMAT c2trbconc_1 BEST12.;

	INFORMAT c2vision_1 BEST32.;
	FORMAT c2vision_1 BEST12.;

	INFORMAT c2vomiting_1 BEST32.;
	FORMAT c2vomiting_1 BEST12.;

	INFORMAT c3aggression_1 $1.;
	FORMAT c3aggression_1 $1.;

	INFORMAT c3agitation_1 $1.;
	FORMAT c3agitation_1 $1.;

	INFORMAT c3amnesia_1 $1.;
	FORMAT c3amnesia_1 $1.;

	INFORMAT c3anger_1 $1.;
	FORMAT c3anger_1 $1.;

	INFORMAT c3anxiety_1 $1.;
	FORMAT c3anxiety_1 $1.;

	INFORMAT c3balance_1 $1.;
	FORMAT c3balance_1 $1.;

	INFORMAT c3confusion_1 $1.;
	FORMAT c3confusion_1 $1.;

	INFORMAT c3depression_1 $1.;
	FORMAT c3depression_1 $1.;

	INFORMAT c3dizziness_1 BEST32.;
	FORMAT c3dizziness_1 BEST12.;

	INFORMAT c3fatigue_1 BEST32.;
	FORMAT c3fatigue_1 BEST12.;

	INFORMAT c3headache_1 BEST32.;
	FORMAT c3headache_1 BEST12.;

	INFORMAT c3moodch_1 $1.;
	FORMAT c3moodch_1 $1.;

	INFORMAT c3moodnoneabove_1 BEST32.;
	FORMAT c3moodnoneabove_1 BEST12.;

	INFORMAT c3moodothersy_1 $1.;
	FORMAT c3moodothersy_1 $1.;

	INFORMAT c3nausea_1 BEST32.;
	FORMAT c3nausea_1 BEST12.;

	INFORMAT c3noneabove_1 BEST32.;
	FORMAT c3noneabove_1 BEST12.;

	INFORMAT c3othersym_1 $1.;
	FORMAT c3othersym_1 $1.;

	INFORMAT c3sensitivity_1 $1.;
	FORMAT c3sensitivity_1 $1.;

	INFORMAT c3sleepdis_1 $1.;
	FORMAT c3sleepdis_1 $1.;

	INFORMAT c3trbconc_1 $1.;
	FORMAT c3trbconc_1 $1.;

	INFORMAT c3vision_1 $1.;
	FORMAT c3vision_1 $1.;

	INFORMAT c3vomiting_1 BEST32.;
	FORMAT c3vomiting_1 BEST12.;

	INFORMAT c4aggression_1 $1.;
	FORMAT c4aggression_1 $1.;

	INFORMAT c4agitation_1 $1.;
	FORMAT c4agitation_1 $1.;

	INFORMAT c4amnesia_1 $1.;
	FORMAT c4amnesia_1 $1.;

	INFORMAT c4anger_1 $1.;
	FORMAT c4anger_1 $1.;

	INFORMAT c4anxiety_1 $1.;
	FORMAT c4anxiety_1 $1.;

	INFORMAT c4balance_1 BEST32.;
	FORMAT c4balance_1 BEST12.;

	INFORMAT c4confusion_1 $1.;
	FORMAT c4confusion_1 $1.;

	INFORMAT c4depression_1 $1.;
	FORMAT c4depression_1 $1.;

	INFORMAT c4dizziness_1 BEST32.;
	FORMAT c4dizziness_1 BEST12.;

	INFORMAT c4fatigue_1 $1.;
	FORMAT c4fatigue_1 $1.;

	INFORMAT c4headache_1 BEST32.;
	FORMAT c4headache_1 BEST12.;

	INFORMAT c4moodch_1 $1.;
	FORMAT c4moodch_1 $1.;

	INFORMAT c4moodnoneabove_1 BEST32.;
	FORMAT c4moodnoneabove_1 BEST12.;

	INFORMAT c4moodothersy_1 $1.;
	FORMAT c4moodothersy_1 $1.;

	INFORMAT c4nausea_1 $1.;
	FORMAT c4nausea_1 $1.;

	INFORMAT c4noneabove_1 BEST32.;
	FORMAT c4noneabove_1 BEST12.;

	INFORMAT c4othersym_1 $1.;
	FORMAT c4othersym_1 $1.;

	INFORMAT c4sensitivity_1 $1.;
	FORMAT c4sensitivity_1 $1.;

	INFORMAT c4sleepdis_1 $1.;
	FORMAT c4sleepdis_1 $1.;

	INFORMAT c4trbconc_1 $1.;
	FORMAT c4trbconc_1 $1.;

	INFORMAT c4vision_1 $1.;
	FORMAT c4vision_1 $1.;

	INFORMAT c4vomiting_1 $1.;
	FORMAT c4vomiting_1 $1.;

	INFORMAT c5aggression_1 $1.;
	FORMAT c5aggression_1 $1.;

	INFORMAT c5agitation_1 $1.;
	FORMAT c5agitation_1 $1.;

	INFORMAT c5amnesia_1 $1.;
	FORMAT c5amnesia_1 $1.;

	INFORMAT c5anger_1 $1.;
	FORMAT c5anger_1 $1.;

	INFORMAT c5anxiety_1 $1.;
	FORMAT c5anxiety_1 $1.;

	INFORMAT c5balance_1 $1.;
	FORMAT c5balance_1 $1.;

	INFORMAT c5confusion_1 $1.;
	FORMAT c5confusion_1 $1.;

	INFORMAT c5depression_1 $1.;
	FORMAT c5depression_1 $1.;

	INFORMAT c5dizziness_1 $1.;
	FORMAT c5dizziness_1 $1.;

	INFORMAT c5fatigue_1 $1.;
	FORMAT c5fatigue_1 $1.;

	INFORMAT c5headache_1 $1.;
	FORMAT c5headache_1 $1.;

	INFORMAT c5moodch_1 $1.;
	FORMAT c5moodch_1 $1.;

	INFORMAT c5moodnoneabove_1 BEST32.;
	FORMAT c5moodnoneabove_1 BEST12.;

	INFORMAT c5moodothersy_1 $1.;
	FORMAT c5moodothersy_1 $1.;

	INFORMAT c5nausea_1 $1.;
	FORMAT c5nausea_1 $1.;

	INFORMAT c5noneabove_1 $1.;
	FORMAT c5noneabove_1 $1.;

	INFORMAT c5othersym_1 $1.;
	FORMAT c5othersym_1 $1.;

	INFORMAT c5sensitivity_1 $1.;
	FORMAT c5sensitivity_1 $1.;

	INFORMAT c5sleepdis_1 $1.;
	FORMAT c5sleepdis_1 $1.;

	INFORMAT c5trbconc_1 $1.;
	FORMAT c5trbconc_1 $1.;

	INFORMAT c5vision_1 $1.;
	FORMAT c5vision_1 $1.;

	INFORMAT c5vomiting_1 BEST32.;
	FORMAT c5vomiting_1 BEST12.;

	INPUT
		id_addi
		visit
		crf_version_heainjque
		hadconcussion
		howmany
		c1when
		c1cause
		c1lossconsc
		c1medical
		c1mddx
		c1headloc
		c1headache
		c1headachedur
		c1headachedur2
		c1nausea
		c1nauseadur
		c1nauseadur2
		c1vomiting
		c1vomitingdur
		c1vomitdur2
		c1balance
		c1balancedur
		c1balancedur2
		c1dizziness
		c1dizzinessdur
		c1dizzinessdur2
		c1vision
		c1visiondur
		c1visiondur2
		c1trbconc
		c1trbconcdur
		c1trbconsdur2
		c1confusion
		c1confusiondur
		c1confusiondur2
		c1amnesia
		c1amnesiadur
		c1amnesiadur2
		c1fatigue
		c1fatiguedur
		c1fatiguedur2
		c1sensitivity
		c1sensitivitydur
		c1sensitivitydur2
		c1sleepdis
		c1sleepdur
		c1sleepdur2
		c1moodch
		c1moodchdur
		c1moodchdur2
		c1othersym
		c1noneabove
		c1depression
		c1depressiondur
		c1depressiondur2
		c1anxiety
		c1anxietydur
		c1anxietydur2
		c1agitation
		c1agitationdur
		c1agitationydur2
		c1anger
		c1angerdur
		c1angerdur2
		c1aggression
		c1aggressiondur
		c1aggressiondur2
		c1moodothersy
		c1moodnoneabove
		concussion2
		c2when
		c2cause
		c2lossconsc
		c2medical
		c2mddx
		c2headloc
		c2headache
		c2headachedur
		c2headachedur2
		c2nausea
		c2nauseadur
		c2nauseadur2
		c2vomiting
		c2vomitingdur
		c2vomitdur2
		c2balance
		c2balancedur
		c2balancedur2
		c2dizziness
		c2dizzinessdur
		c2dizzinessdur2
		c2vision
		c2visiondur
		c2visiondur2
		c2trbconc
		c2trbconcdur
		c2trbconsdur2
		c2confusion
		c2confusiondur
		c2confusiondur2
		c2amnesia
		c2amnesiadur
		c2amnesiadur2
		c2fatigue
		c2fatiguedur
		c2fatiguedur2
		c2sensitivity
		c2sensitivitydur
		c2sensitivitydur2
		c2sleepdis
		c2sleepdur
		c2sleepdur2
		c2moodch
		c2moodchdur
		c2moodchdur2
		c2othersym
		c2noneabove
		c2depression
		c2depressiondur
		c2depressiondur2
		c2anxiety
		c2anxietydur
		c2anxietydur2
		c2agitation
		c2agitationdur
		c2agitationydur2
		c2anger
		c2angerdur
		c2angerdur2
		c2aggression
		c2aggressiondur
		c2aggressiondur2
		c2moodothersy
		c2moodnoneabove
		concussion3
		c3when
		c3cause
		c3lossconsc
		c3medical
		c3mddx
		c3headloc
		c3headache
		c3headachedur
		c3headachedur2
		c3nausea
		c3nauseadur
		c3nauseadur2
		c3vomiting
		c3vomitingdur
		c3vomitdur2
		c3balance
		c3balancedur
		c3balancedur2
		c3dizziness
		c3dizzinessdur
		c3dizzinessdur2
		c3vision
		c3visiondur
		c3visiondur2
		c3trbconc
		c3trbconcdur
		c3trbconsdur2
		c3confusion
		c3confusiondur
		c3confusiondur2
		c3amnesia
		c3amnesiadur
		c3amnesiadur2
		c3fatigue
		c3fatiguedur
		c3fatiguedur2
		c3sensitivity
		c3sensitivitydur
		c3sensitivitydur2
		c3sleepdis
		c3sleepdur
		c3sleepdur2
		c3moodch
		c3moodchdur
		c3moodchdur2
		c3othersym
		c3noneabove
		c3depression
		c3depressiondur
		c3depressiondur2
		c3anxiety
		c3anxietydur
		c3anxietydur2
		c3agitation
		c3agitationdur
		c3agitationydur2
		c3anger
		c3angerdur
		c3angerdur2
		c3aggression
		c3aggressiondur
		c3aggressiondur2
		c3moodothersy
		c3moodnoneabove
		concussion4
		c4when
		c4cause
		c4lossconsc
		c4medical
		c4mddx
		c4headloc
		c4headache
		c4headachedur
		c4headachedur2
		c4nausea
		c4nauseadur
		c4nauseadur2
		c4vomiting
		c4vomitingdur
		c4vomitdur2
		c4balance
		c4balancedur
		c4balancedur2
		c4dizziness
		c4dizzinessdur
		c4dizzinessdur2
		c4vision
		c4visiondur
		c4visiondur2
		c4trbconc
		c4trbconcdur
		c4trbconsdur2
		c4confusion
		c4confusiondur
		c4confusiondur2
		c4amnesia
		c4amnesiadur
		c4amnesiadur2
		c4fatigue
		c4fatiguedur
		c4fatiguedur2
		c4sensitivity
		c4sensitivitydur
		c4sensitivitydur2
		c4sleepdis
		c4sleepdur
		c4sleepdur2
		c4moodch
		c4moodchdur
		c4moodchdur2
		c4othersym
		c4noneabove
		c4depression
		c4depressiondur
		c4depressiondur2
		c4anxiety
		c4anxietydur
		c4anxietydur2
		c4agitation
		c4agitationdur
		c4agitationydur2
		c4anger
		c4angerdur
		c4angerdur2
		c4aggression
		c4aggressiondur
		c4aggressiondur2
		c4moodothersy
		c4moodnoneabove
		concussion5
		c5when
		c5cause
		c5lossconsc
		c5medical
		c5mddx
		c5headloc
		c5headache
		c5headachedur
		c5headachedur2
		c5nausea
		c5nauseadur
		c5nauseadur2
		c5vomiting
		c5vomitingdur
		c5vomitdur2
		c5balance
		c5balancedur
		c5balancedur2
		c5dizziness
		c5dizzinessdur
		c5dizzinessdur2
		c5vision
		c5visiondur
		c5visiondur2
		c5trbconc
		c5trbconcdur
		c5trbconsdur2
		c5confusion
		c5confusiondur
		c5confusiondur2
		c5amnesia
		c5amnesiadur
		c5amnesiadur2
		c5fatigue
		c5fatiguedur
		c5fatiguedur2
		c5sensitivity
		c5sensitivitydur
		c5sensitivitydur2
		c5sleepdis
		c5sleepdur
		c5sleepdur2
		c5moodch
		c5moodchdur
		c5moodchdur2
		c5othersym
		c5noneabove
		c5depression
		c5depressiondur
		c5depressiondur2
		c5anxiety
		c5anxietydur
		c5anxietydur2
		c5agitation
		c5agitationdur
		c5agitationydur2
		c5anger
		c5angerdur
		c5angerdur2
		c5aggression
		c5aggressiondur
		c5aggressiondur2
		c5moodothersy
		c5moodnoneabove
		c1aggression_1
		c1agitation_1
		c1amnesia_1
		c1anger_1
		c1anxiety_1
		c1balance_1
		c1confusion_1
		c1depression_1
		c1dizziness_1
		c1fatigue_1
		c1headache_1
		c1moodch_1
		c1moodnoneabove_1
		c1moodothersy_1
		c1nausea_1
		c1noneabove_1
		c1othersym_1
		c1sensitivity_1
		c1sleepdis_1
		c1trbconc_1
		c1vision_1
		c1vomiting_1
		c2aggression_1
		c2agitation_1
		c2amnesia_1
		c2anger_1
		c2anxiety_1
		c2balance_1
		c2confusion_1
		c2depression_1
		c2dizziness_1
		c2fatigue_1
		c2headache_1
		c2moodch_1
		c2moodnoneabove_1
		c2moodothersy_1
		c2nausea_1
		c2noneabove_1
		c2othersym_1
		c2sensitivity_1
		c2sleepdis_1
		c2trbconc_1
		c2vision_1
		c2vomiting_1
		c3aggression_1
		c3agitation_1
		c3amnesia_1
		c3anger_1
		c3anxiety_1
		c3balance_1
		c3confusion_1
		c3depression_1
		c3dizziness_1
		c3fatigue_1
		c3headache_1
		c3moodch_1
		c3moodnoneabove_1
		c3moodothersy_1
		c3nausea_1
		c3noneabove_1
		c3othersym_1
		c3sensitivity_1
		c3sleepdis_1
		c3trbconc_1
		c3vision_1
		c3vomiting_1
		c4aggression_1
		c4agitation_1
		c4amnesia_1
		c4anger_1
		c4anxiety_1
		c4balance_1
		c4confusion_1
		c4depression_1
		c4dizziness_1
		c4fatigue_1
		c4headache_1
		c4moodch_1
		c4moodnoneabove_1
		c4moodothersy_1
		c4nausea_1
		c4noneabove_1
		c4othersym_1
		c4sensitivity_1
		c4sleepdis_1
		c4trbconc_1
		c4vision_1
		c4vomiting_1
		c5aggression_1
		c5agitation_1
		c5amnesia_1
		c5anger_1
		c5anxiety_1
		c5balance_1
		c5confusion_1
		c5depression_1
		c5dizziness_1
		c5fatigue_1
		c5headache_1
		c5moodch_1
		c5moodnoneabove_1
		c5moodothersy_1
		c5nausea_1
		c5noneabove_1
		c5othersym_1
		c5sensitivity_1
		c5sleepdis_1
		c5trbconc_1
		c5vision_1
		c5vomiting_1
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_heainjque = "CRF Version"
		hadconcussion = "Have you ever had a head injury or concussion"
		howmany = "How many head injuries concussions have you had"
		c1when = "What year did the first head injury or concussion 1 occur"
		c1cause = "What caused head injury or concussion 1"
		c1lossconsc = "Concussion 1 loss of consciousness"
		c1medical = "Concussion 1 did you seek medical attention"
		c1mddx = "Concussion 1 If yes did a doctor tell you that you had a concussion"
		c1headloc = "Concussion 1 where on head did blow or hit occur"
		c1headache = "Concussion 1 headache"
		c1headachedur = "Concussion 1 headache duration"
		c1headachedur2 = "Concussion 1 duration more than 3 weeks"
		c1nausea = "Concussion 1 nausea"
		c1nauseadur = "Concussion 1 nausea duration"
		c1nauseadur2 = "Concussion 1 nausea duration more than 3 weeks"
		c1vomiting = "Concussion 1 vomiting"
		c1vomitingdur = "Concussion 1 vomiting duration"
		c1vomitdur2 = "Concussion 1 vomiting duration more than 3 weeks"
		c1balance = "Concussion 1 balance"
		c1balancedur = "Concussion 1 balance duration"
		c1balancedur2 = "Concussion 1 balance duration more than 3 weeks"
		c1dizziness = "Concussion 1 Dizziness"
		c1dizzinessdur = "Concussion 1 dizziness duration"
		c1dizzinessdur2 = "Concussion 1 Dizziness duration more than 3 weeks"
		c1vision = "Concussion 1 vision problems"
		c1visiondur = "Concussion 1 vision duration"
		c1visiondur2 = "Concussion 1 vision duration more than 3 weeks"
		c1trbconc = "Concussion 1 trouble concentration"
		c1trbconcdur = "Concussion 1 trouble concentrating duration"
		c1trbconsdur2 = "Concussion 1 trouble concentrating duration more than 3 weeks"
		c1confusion = "Concussion 1 confusion"
		c1confusiondur = "Concussion 1 confusion duration"
		c1confusiondur2 = "Concussion 1 confusion duration more than 3 weeks"
		c1amnesia = "Concussion 1 amnesia"
		c1amnesiadur = "Concussion 1 amnesia duration"
		c1amnesiadur2 = "Concussion 1 amnesia duration more than 3 weeks"
		c1fatigue = "Concussion 1 fatigue"
		c1fatiguedur = "Concussion 1 fatigue duration"
		c1fatiguedur2 = "Concussion 1 fatigue duration more than 3 weeks"
		c1sensitivity = "Concussion 1 sensitivity to light or noise"
		c1sensitivitydur = "Concussion 1 light or noise sensitivity duration"
		c1sensitivitydur2 = "Concussion 1 sensitivity to light or noise duration more than 3 weeks"
		c1sleepdis = "Concussion 1 sleep disturbances"
		c1sleepdur = "Concussion 1 sleep disturbances duration"
		c1sleepdur2 = "Concussion 1 sleep disturbances duration more than 3 weeks"
		c1moodch = "Concussion 1 mood changes"
		c1moodchdur = "Concussion 1 mood changes duration"
		c1moodchdur2 = "Concussion 1 mood changes duration more than 3 weeks"
		c1othersym = "Concussion 1 other"
		c1noneabove = "Concussion 1 none of the above"
		c1depression = "Concussion 1 depression"
		c1depressiondur = "Concussion 1 depression duration"
		c1depressiondur2 = "Concussion 1 depression duration more than 3 weeks"
		c1anxiety = "Concussion 1 Anxiety"
		c1anxietydur = "Concussion 1 anxiety duration"
		c1anxietydur2 = "Concussion 1 anxiety duration more than 3 weeks"
		c1agitation = "Concussion 1 Agitation"
		c1agitationdur = "Concussion 1 agitation duration"
		c1agitationydur2 = "Concussion 1 agitation duration more than 3 weeks"
		c1anger = "Concussion 1 Anger"
		c1angerdur = "Concussion 1 anger duration"
		c1angerdur2 = "Concussion 1 anger duration more than 3 weeks"
		c1aggression = "Concussion 1 Aggression"
		c1aggressiondur = "Concussion 1 aggression duration"
		c1aggressiondur2 = "Concussion 1 aggression duration more than 3 weeks"
		c1moodothersy = "Concussion 1 mood other symptoms"
		c1moodnoneabove = "Concussion 1 mood none of the above"
		concussion2 = "Was there a 2nd concussion"
		c2when = "What year did the 2nd head injury or concussion 2 occur"
		c2cause = "What caused head injury or concussion 2"
		c2lossconsc = "Concussion 2 loss of consciousness"
		c2medical = "Concussion 2 did you seek medical attention"
		c2mddx = "Concussion 2 If yes did a doctor tell you that you had a concussion"
		c2headloc = "Concussion 2 where on head did blow or hit occur"
		c2headache = "Concussion 2 headache"
		c2headachedur = "Concussion 2 headache duration"
		c2headachedur2 = "Concussion 2 duration more than 3 weeks"
		c2nausea = "Concussion 2 nausea"
		c2nauseadur = "Concussion 2 nausea duration"
		c2nauseadur2 = "Concussion 2 nausea duration more than 3 weeks"
		c2vomiting = "Concussion 2 vomiting"
		c2vomitingdur = "Concussion 2 vomiting duration"
		c2vomitdur2 = "Concussion 2 vomiting duration more than 3 weeks"
		c2balance = "Concussion 2 balance"
		c2balancedur = "Concussion 2 balance duration"
		c2balancedur2 = "Concussion 2 balance duration more than 3 weeks"
		c2dizziness = "Concussion 2 Dizziness"
		c2dizzinessdur = "Concussion 2 dizziness duration"
		c2dizzinessdur2 = "Concussion 2 Dizziness duration more than 3 weeks"
		c2vision = "Concussion 2 vision problems"
		c2visiondur = "Concussion 2 vision duration"
		c2visiondur2 = "Concussion 2 vision duration more than 3 weeks"
		c2trbconc = "Concussion 2 trouble concentration"
		c2trbconcdur = "Concussion 2 trouble concentrating duration"
		c2trbconsdur2 = "Concussion 2 trouble concentrating duration more than 3 weeks"
		c2confusion = "Concussion 2 confusion"
		c2confusiondur = "Concussion 2 confusion duration"
		c2confusiondur2 = "Concussion 2 confusion duration more than 3 weeks"
		c2amnesia = "Concussion 2 amnesia"
		c2amnesiadur = "Concussion 2 amnesia duration"
		c2amnesiadur2 = "Concussion 2 amnesia duration more than 3 weeks"
		c2fatigue = "Concussion 2 fatigue"
		c2fatiguedur = "Concussion 2 fatigue duration"
		c2fatiguedur2 = "Concussion 2 fatigue duration more than 3 weeks"
		c2sensitivity = "Concussion 2 sensitivity to light or noise"
		c2sensitivitydur = "Concussion 2 light or noise sensitivity duration"
		c2sensitivitydur2 = "Concussion 2 sensitivity to light or noise duration more than 3 weeks"
		c2sleepdis = "Concussion 2 sleep disturbances"
		c2sleepdur = "Concussion 2 sleep disturbances duration"
		c2sleepdur2 = "Concussion 2 sleep disturbances duration more than 3 weeks"
		c2moodch = "Concussion 2 mood changes"
		c2moodchdur = "Concussion 2 mood changes duration"
		c2moodchdur2 = "Concussion 2 mood changes duration more than 3 weeks"
		c2othersym = "Concussion 2 other"
		c2noneabove = "Concussion 2 none of the above"
		c2depression = "Concussion 2 depression"
		c2depressiondur = "Concussion 2 depression duration"
		c2depressiondur2 = "Concussion 2 depression duration more than 3 weeks"
		c2anxiety = "Concussion 2 Anxiety"
		c2anxietydur = "Concussion 2 anxiety duration"
		c2anxietydur2 = "Concussion 2 anxiety duration more than 3 weeks"
		c2agitation = "Concussion 2 Agitation"
		c2agitationdur = "Concussion 2 agitation duration"
		c2agitationydur2 = "Concussion 2 agitation duration more than 3 weeks"
		c2anger = "Concussion 2 Anger"
		c2angerdur = "Concussion 2 anger duration"
		c2angerdur2 = "Concussion 2 anger duration more than 3 weeks"
		c2aggression = "Concussion 2 Aggression"
		c2aggressiondur = "Concussion 2 aggression duration"
		c2aggressiondur2 = "Concussion 2 aggression duration more than 3 weeks"
		c2moodothersy = "Concussion 2 mood other symptoms"
		c2moodnoneabove = "Concussion 2 mood none of the above"
		concussion3 = "Was there a 3rd concussion"
		c3when = "What year did the 3rd head injury or concussion 1 occur"
		c3cause = "What caused head injury or concussion 3"
		c3lossconsc = "Concussion 3 loss of consciousness"
		c3medical = "Concussion 3 did you seek medical attention"
		c3mddx = "Concussion 3 If yes did a doctor tell you that you had a concussion"
		c3headloc = "Concussion 3 where on head did blow or hit occur"
		c3headache = "Concussion 3 headache"
		c3headachedur = "Concussion 3 headache duration"
		c3headachedur2 = "Concussion 3 duration more than 3 weeks"
		c3nausea = "Concussion 3 nausea"
		c3nauseadur = "Concussion 3 nausea duration"
		c3nauseadur2 = "Concussion 3 nausea duration more than 3 weeks"
		c3vomiting = "Concussion 3 vomiting"
		c3vomitingdur = "Concussion 3 vomiting duration"
		c3vomitdur2 = "Concussion 3 vomiting duration more than 3 weeks"
		c3balance = "Concussion 3 balance"
		c3balancedur = "Concussion 3 balance duration"
		c3balancedur2 = "Concussion 3 balance duration more than 3 weeks"
		c3dizziness = "Concussion 3 Dizziness"
		c3dizzinessdur = "Concussion 3 dizziness duration"
		c3dizzinessdur2 = "Concussion 3 Dizziness duration more than 3 weeks"
		c3vision = "Concussion 3 vision problems"
		c3visiondur = "Concussion 3 vision duration"
		c3visiondur2 = "Concussion 3 vision duration more than 3 weeks"
		c3trbconc = "Concussion 3 trouble concentration"
		c3trbconcdur = "Concussion 3 trouble concentrating duration"
		c3trbconsdur2 = "Concussion 3 trouble concentrating duration more than 3 weeks"
		c3confusion = "Concussion 3 confusion"
		c3confusiondur = "Concussion 3 confusion duration"
		c3confusiondur2 = "Concussion 3 confusion duration more than 3 weeks"
		c3amnesia = "Concussion 3 amnesia"
		c3amnesiadur = "Concussion 3 amnesia duration"
		c3amnesiadur2 = "Concussion 3 amnesia duration more than 3 weeks"
		c3fatigue = "Concussion 3 fatigue"
		c3fatiguedur = "Concussion 3 fatigue duration"
		c3fatiguedur2 = "Concussion 3 fatigue duration more than 3 weeks"
		c3sensitivity = "Concussion 3 sensitivity to light or noise"
		c3sensitivitydur = "Concussion 3 light or noise sensitivity duration"
		c3sensitivitydur2 = "Concussion 3 sensitivity to light or noise duration more than 3 weeks"
		c3sleepdis = "Concussion 3 sleep disturbances"
		c3sleepdur = "Concussion 3 sleep disturbances duration"
		c3sleepdur2 = "Concussion 3 sleep disturbances duration more than 3 weeks"
		c3moodch = "Concussion 3 mood changes"
		c3moodchdur = "Concussion 3 mood changes duration"
		c3moodchdur2 = "Concussion 3 mood changes duration more than 3 weeks"
		c3othersym = "Concussion 3 other"
		c3noneabove = "Concussion 3 none of the above"
		c3depression = "Concussion 3 depression"
		c3depressiondur = "Concussion 3 depression duration"
		c3depressiondur2 = "Concussion 3 depression duration more than 3 weeks"
		c3anxiety = "Concussion 3 Anxiety"
		c3anxietydur = "Concussion 3 anxiety duration"
		c3anxietydur2 = "Concussion 3 anxiety duration more than 3 weeks"
		c3agitation = "Concussion 3 Agitation"
		c3agitationdur = "Concussion 3 agitation duration"
		c3agitationydur2 = "Concussion 3 agitation duration more than 3 weeks"
		c3anger = "Concussion 3 Anger"
		c3angerdur = "Concussion 3 anger duration"
		c3angerdur2 = "Concussion 3 anger duration more than 3 weeks"
		c3aggression = "Concussion 3 Aggression"
		c3aggressiondur = "Concussion 3 aggression duration"
		c3aggressiondur2 = "Concussion 3 aggression duration more than 3 weeks"
		c3moodothersy = "Concussion 3 mood other symptoms"
		c3moodnoneabove = "Concussion 3 mood none of the above"
		concussion4 = "Was there a 4th concussion"
		c4when = "What year did the 4th head injury or concussion 1 occur"
		c4cause = "What caused head injury or concussion 4"
		c4lossconsc = "Concussion 4 loss of consciousness"
		c4medical = "Concussion 4 did you seek medical attention"
		c4mddx = "Concussion 4 If yes did a doctor tell you that you had a concussion"
		c4headloc = "Concussion 4 where on head did blow or hit occur"
		c4headache = "Concussion 4 headache"
		c4headachedur = "Concussion 4 headache duration"
		c4headachedur2 = "Concussion 4 duration more than 3 weeks"
		c4nausea = "Concussion 4 nausea"
		c4nauseadur = "Concussion 4 nausea duration"
		c4nauseadur2 = "Concussion 4 nausea duration more than 3 weeks"
		c4vomiting = "Concussion 4 vomiting"
		c4vomitingdur = "Concussion 4 vomiting duration"
		c4vomitdur2 = "Concussion 4 vomiting duration more than 3 weeks"
		c4balance = "Concussion 4 balance"
		c4balancedur = "Concussion 4 balance duration"
		c4balancedur2 = "Concussion 4 balance duration more than 3 weeks"
		c4dizziness = "Concussion 4 Dizziness"
		c4dizzinessdur = "Concussion 4 dizziness duration"
		c4dizzinessdur2 = "Concussion 4 Dizziness duration more than 3 weeks"
		c4vision = "Concussion 4 vision problems"
		c4visiondur = "Concussion 4 vision duration"
		c4visiondur2 = "Concussion 4 vision duration more than 3 weeks"
		c4trbconc = "Concussion 4 trouble concentration"
		c4trbconcdur = "Concussion 4 trouble concentrating duration"
		c4trbconsdur2 = "Concussion 4 trouble concentrating duration more than 3 weeks"
		c4confusion = "Concussion 4 confusion"
		c4confusiondur = "Concussion 4 confusion duration"
		c4confusiondur2 = "Concussion 4 confusion duration more than 3 weeks"
		c4amnesia = "Concussion 4 amnesia"
		c4amnesiadur = "Concussion 4 amnesia duration"
		c4amnesiadur2 = "Concussion 4 amnesia duration more than 3 weeks"
		c4fatigue = "Concussion 4 fatigue"
		c4fatiguedur = "Concussion 4 fatigue duration"
		c4fatiguedur2 = "Concussion 4 fatigue duration more than 3 weeks"
		c4sensitivity = "Concussion 4 sensitivity to light or noise"
		c4sensitivitydur = "Concussion 4 light or noise sensitivity duration"
		c4sensitivitydur2 = "Concussion 4 sensitivity to light or noise duration more than 3 weeks"
		c4sleepdis = "Concussion 4 sleep disturbances"
		c4sleepdur = "Concussion 4 sleep disturbances duration"
		c4sleepdur2 = "Concussion 4 sleep disturbances duration more than 3 weeks"
		c4moodch = "Concussion 4 mood changes"
		c4moodchdur = "Concussion 4 mood changes duration"
		c4moodchdur2 = "Concussion 4 mood changes duration more than 3 weeks"
		c4othersym = "Concussion 4 other"
		c4noneabove = "Concussion 4 none of the above"
		c4depression = "Concussion 4 depression"
		c4depressiondur = "Concussion 4 depression duration"
		c4depressiondur2 = "Concussion 4 depression duration more than 3 weeks"
		c4anxiety = "Concussion 4 Anxiety"
		c4anxietydur = "Concussion 4 anxiety duration"
		c4anxietydur2 = "Concussion 4 anxiety duration more than 3 weeks"
		c4agitation = "Concussion 4 Agitation"
		c4agitationdur = "Concussion 4 agitation duration"
		c4agitationydur2 = "Concussion 4 agitation duration more than 3 weeks"
		c4anger = "Concussion 4 Anger"
		c4angerdur = "Concussion 4 anger duration"
		c4angerdur2 = "Concussion 4 anger duration more than 3 weeks"
		c4aggression = "Concussion 4 Aggression"
		c4aggressiondur = "Concussion 4 aggression duration"
		c4aggressiondur2 = "Concussion 4 aggression duration more than 3 weeks"
		c4moodothersy = "Concussion 4 mood other symptoms"
		c4moodnoneabove = "Concussion 4 mood none of the above"
		concussion5 = "Was there a 5th concussion"
		c5when = "What year did the 5th head injury or concussion 1 occur"
		c5cause = "What caused head injury or concussion 5"
		c5lossconsc = "Concussion 5 loss of consciousness"
		c5medical = "Concussion 5 did you seek medical attention"
		c5mddx = "Concussion 5 If yes did a doctor tell you that you had a concussion"
		c5headloc = "Concussion 5 where on head did blow or hit occur"
		c5headache = "Concussion 5 headache"
		c5headachedur = "Concussion 5 headache duration"
		c5headachedur2 = "Concussion 5 duration more than 3 weeks"
		c5nausea = "Concussion 5 nausea"
		c5nauseadur = "Concussion 5 nausea duration"
		c5nauseadur2 = "Concussion 5 nausea duration more than 3 weeks"
		c5vomiting = "Concussion 5 vomiting"
		c5vomitingdur = "Concussion 5 vomiting duration"
		c5vomitdur2 = "Concussion 5 vomiting duration more than 3 weeks"
		c5balance = "Concussion 5 balance"
		c5balancedur = "Concussion 5 balance duration"
		c5balancedur2 = "Concussion 5 balance duration more than 3 weeks"
		c5dizziness = "Concussion 5 Dizziness"
		c5dizzinessdur = "Concussion 5 dizziness duration"
		c5dizzinessdur2 = "Concussion 5 Dizziness duration more than 3 weeks"
		c5vision = "Concussion 5 vision problems"
		c5visiondur = "Concussion 5 vision duration"
		c5visiondur2 = "Concussion 5 vision duration more than 3 weeks"
		c5trbconc = "Concussion 5 trouble concentration"
		c5trbconcdur = "Concussion 5 trouble concentrating duration"
		c5trbconsdur2 = "Concussion 5 trouble concentrating duration more than 3 weeks"
		c5confusion = "Concussion 5 confusion"
		c5confusiondur = "Concussion 5 confusion duration"
		c5confusiondur2 = "Concussion 5 confusion duration more than 3 weeks"
		c5amnesia = "Concussion 5 amnesia"
		c5amnesiadur = "Concussion 5 amnesia duration"
		c5amnesiadur2 = "Concussion 5 amnesia duration more than 3 weeks"
		c5fatigue = "Concussion 5 fatigue"
		c5fatiguedur = "Concussion 5 fatigue duration"
		c5fatiguedur2 = "Concussion 5 fatigue duration more than 3 weeks"
		c5sensitivity = "Concussion 5 sensitivity to light or noise"
		c5sensitivitydur = "Concussion 5 light or noise sensitivity duration"
		c5sensitivitydur2 = "Concussion 5 sensitivity to light or noise duration more than 3 weeks"
		c5sleepdis = "Concussion 5 sleep disturbances"
		c5sleepdur = "Concussion 5 sleep disturbances duration"
		c5sleepdur2 = "Concussion 5 sleep disturbances duration more than 3 weeks"
		c5moodch = "Concussion 5 mood changes"
		c5moodchdur = "Concussion 5 mood changes duration"
		c5moodchdur2 = "Concussion 5 mood changes duration more than 3 weeks"
		c5othersym = "Concussion 5 other"
		c5noneabove = "Concussion 5 none of the above"
		c5depression = "Concussion 5 depression"
		c5depressiondur = "Concussion 5 depression duration"
		c5depressiondur2 = "Concussion 5 depression duration more than 3 weeks"
		c5anxiety = "Concussion 5 Anxiety"
		c5anxietydur = "Concussion 5 anxiety duration"
		c5anxietydur2 = "Concussion 5 anxiety duration more than 3 weeks"
		c5agitation = "Concussion 5 Agitation"
		c5agitationdur = "Concussion 5 agitation duration"
		c5agitationydur2 = "Concussion 5 agitation duration more than 3 weeks"
		c5anger = "Concussion 5 Anger"
		c5angerdur = "Concussion 5 anger duration"
		c5angerdur2 = "Concussion 5 anger duration more than 3 weeks"
		c5aggression = "Concussion 5 Aggression"
		c5aggressiondur = "Concussion 5 aggression duration"
		c5aggressiondur2 = "Concussion 5 aggression duration more than 3 weeks"
		c5moodothersy = "Concussion 5 mood other symptoms"
		c5moodnoneabove = "Concussion 5 mood none of the above"
		c1aggression_1 = "Concussion 1 Aggression : Yes (Checkbox Indicator)"
		c1agitation_1 = "Concussion 1 Agitation : Yes (Checkbox Indicator)"
		c1amnesia_1 = "Concussion 1 amnesia : Yes (Checkbox Indicator)"
		c1anger_1 = "Concussion 1 Anger : Yes (Checkbox Indicator)"
		c1anxiety_1 = "Concussion 1 Anxiety : Yes (Checkbox Indicator)"
		c1balance_1 = "Concussion 1 balance : Yes (Checkbox Indicator)"
		c1confusion_1 = "Concussion 1 confusion : Yes (Checkbox Indicator)"
		c1depression_1 = "Concussion 1 depression : Yes (Checkbox Indicator)"
		c1dizziness_1 = "Concussion 1 Dizziness : Yes (Checkbox Indicator)"
		c1fatigue_1 = "Concussion 1 fatigue : Yes (Checkbox Indicator)"
		c1headache_1 = "Concussion 1 headache : Yes (Checkbox Indicator)"
		c1moodch_1 = "Concussion 1 mood changes : Yes (Checkbox Indicator)"
		c1moodnoneabove_1 = "Concussion 1 mood none of the above : Yes (Checkbox Indicator)"
		c1moodothersy_1 = "Concussion 1 mood other symptoms : Yes (Checkbox Indicator)"
		c1nausea_1 = "Concussion 1 nausea : Yes (Checkbox Indicator)"
		c1noneabove_1 = "Concussion 1 none of the above : Yes (Checkbox Indicator)"
		c1othersym_1 = "Concussion 1 other : Yes (Checkbox Indicator)"
		c1sensitivity_1 = "Concussion 1 sensitivity to light or noise : Yes (Checkbox Indicator)"
		c1sleepdis_1 = "Concussion 1 sleep disturbances : Yes (Checkbox Indicator)"
		c1trbconc_1 = "Concussion 1 trouble concentration : Yes (Checkbox Indicator)"
		c1vision_1 = "Concussion 1 vision problems : Yes (Checkbox Indicator)"
		c1vomiting_1 = "Concussion 1 vomiting : Yes (Checkbox Indicator)"
		c2aggression_1 = "Concussion 2 Aggression : Yes (Checkbox Indicator)"
		c2agitation_1 = "Concussion 2 Agitation : Yes (Checkbox Indicator)"
		c2amnesia_1 = "Concussion 2 amnesia : Yes (Checkbox Indicator)"
		c2anger_1 = "Concussion 2 Anger : Yes (Checkbox Indicator)"
		c2anxiety_1 = "Concussion 2 Anxiety : Yes (Checkbox Indicator)"
		c2balance_1 = "Concussion 2 balance : Yes (Checkbox Indicator)"
		c2confusion_1 = "Concussion 2 confusion : Yes (Checkbox Indicator)"
		c2depression_1 = "Concussion 2 depression : Yes (Checkbox Indicator)"
		c2dizziness_1 = "Concussion 2 Dizziness : Yes (Checkbox Indicator)"
		c2fatigue_1 = "Concussion 2 fatigue : Yes (Checkbox Indicator)"
		c2headache_1 = "Concussion 2 headache : Yes (Checkbox Indicator)"
		c2moodch_1 = "Concussion 2 mood changes : Yes (Checkbox Indicator)"
		c2moodnoneabove_1 = "Concussion 2 mood none of the above : Yes (Checkbox Indicator)"
		c2moodothersy_1 = "Concussion 2 mood other symptoms : Yes (Checkbox Indicator)"
		c2nausea_1 = "Concussion 2 nausea : Yes (Checkbox Indicator)"
		c2noneabove_1 = "Concussion 2 none of the above : Yes (Checkbox Indicator)"
		c2othersym_1 = "Concussion 2 other : Yes (Checkbox Indicator)"
		c2sensitivity_1 = "Concussion 2 sensitivity to light or noise : Yes (Checkbox Indicator)"
		c2sleepdis_1 = "Concussion 2 sleep disturbances : Yes (Checkbox Indicator)"
		c2trbconc_1 = "Concussion 2 trouble concentration : Yes (Checkbox Indicator)"
		c2vision_1 = "Concussion 2 vision problems : Yes (Checkbox Indicator)"
		c2vomiting_1 = "Concussion 2 vomiting : Yes (Checkbox Indicator)"
		c3aggression_1 = "Concussion 3 Aggression : Yes (Checkbox Indicator)"
		c3agitation_1 = "Concussion 3 Agitation : Yes (Checkbox Indicator)"
		c3amnesia_1 = "Concussion 3 amnesia : Yes (Checkbox Indicator)"
		c3anger_1 = "Concussion 3 Anger : Yes (Checkbox Indicator)"
		c3anxiety_1 = "Concussion 3 Anxiety : Yes (Checkbox Indicator)"
		c3balance_1 = "Concussion 3 balance : Yes (Checkbox Indicator)"
		c3confusion_1 = "Concussion 3 confusion : Yes (Checkbox Indicator)"
		c3depression_1 = "Concussion 3 depression : Yes (Checkbox Indicator)"
		c3dizziness_1 = "Concussion 3 Dizziness : Yes (Checkbox Indicator)"
		c3fatigue_1 = "Concussion 3 fatigue : Yes (Checkbox Indicator)"
		c3headache_1 = "Concussion 3 headache : Yes (Checkbox Indicator)"
		c3moodch_1 = "Concussion 3 mood changes : Yes (Checkbox Indicator)"
		c3moodnoneabove_1 = "Concussion 3 mood none of the above : Yes (Checkbox Indicator)"
		c3moodothersy_1 = "Concussion 3 mood other symptoms : Yes (Checkbox Indicator)"
		c3nausea_1 = "Concussion 3 nausea : Yes (Checkbox Indicator)"
		c3noneabove_1 = "Concussion 3 none of the above : Yes (Checkbox Indicator)"
		c3othersym_1 = "Concussion 3 other : Yes (Checkbox Indicator)"
		c3sensitivity_1 = "Concussion 3 sensitivity to light or noise : Yes (Checkbox Indicator)"
		c3sleepdis_1 = "Concussion 3 sleep disturbances : Yes (Checkbox Indicator)"
		c3trbconc_1 = "Concussion 3 trouble concentration : Yes (Checkbox Indicator)"
		c3vision_1 = "Concussion 3 vision problems : Yes (Checkbox Indicator)"
		c3vomiting_1 = "Concussion 3 vomiting : Yes (Checkbox Indicator)"
		c4aggression_1 = "Concussion 4 Aggression : Yes (Checkbox Indicator)"
		c4agitation_1 = "Concussion 4 Agitation : Yes (Checkbox Indicator)"
		c4amnesia_1 = "Concussion 4 amnesia : Yes (Checkbox Indicator)"
		c4anger_1 = "Concussion 4 Anger : Yes (Checkbox Indicator)"
		c4anxiety_1 = "Concussion 4 Anxiety : Yes (Checkbox Indicator)"
		c4balance_1 = "Concussion 4 balance : Yes (Checkbox Indicator)"
		c4confusion_1 = "Concussion 4 confusion : Yes (Checkbox Indicator)"
		c4depression_1 = "Concussion 4 depression : Yes (Checkbox Indicator)"
		c4dizziness_1 = "Concussion 4 Dizziness : Yes (Checkbox Indicator)"
		c4fatigue_1 = "Concussion 4 fatigue : Yes (Checkbox Indicator)"
		c4headache_1 = "Concussion 4 headache : Yes (Checkbox Indicator)"
		c4moodch_1 = "Concussion 4 mood changes : Yes (Checkbox Indicator)"
		c4moodnoneabove_1 = "Concussion 4 mood none of the above : Yes (Checkbox Indicator)"
		c4moodothersy_1 = "Concussion 4 mood other symptoms : Yes (Checkbox Indicator)"
		c4nausea_1 = "Concussion 4 nausea : Yes (Checkbox Indicator)"
		c4noneabove_1 = "Concussion 4 none of the above : Yes (Checkbox Indicator)"
		c4othersym_1 = "Concussion 4 other : Yes (Checkbox Indicator)"
		c4sensitivity_1 = "Concussion 4 sensitivity to light or noise : Yes (Checkbox Indicator)"
		c4sleepdis_1 = "Concussion 4 sleep disturbances : Yes (Checkbox Indicator)"
		c4trbconc_1 = "Concussion 4 trouble concentration : Yes (Checkbox Indicator)"
		c4vision_1 = "Concussion 4 vision problems : Yes (Checkbox Indicator)"
		c4vomiting_1 = "Concussion 4 vomiting : Yes (Checkbox Indicator)"
		c5aggression_1 = "Concussion 5 Aggression : Yes (Checkbox Indicator)"
		c5agitation_1 = "Concussion 5 Agitation : Yes (Checkbox Indicator)"
		c5amnesia_1 = "Concussion 5 amnesia : Yes (Checkbox Indicator)"
		c5anger_1 = "Concussion 5 Anger : Yes (Checkbox Indicator)"
		c5anxiety_1 = "Concussion 5 Anxiety : Yes (Checkbox Indicator)"
		c5balance_1 = "Concussion 5 balance : Yes (Checkbox Indicator)"
		c5confusion_1 = "Concussion 5 confusion : Yes (Checkbox Indicator)"
		c5depression_1 = "Concussion 5 depression : Yes (Checkbox Indicator)"
		c5dizziness_1 = "Concussion 5 Dizziness : Yes (Checkbox Indicator)"
		c5fatigue_1 = "Concussion 5 fatigue : Yes (Checkbox Indicator)"
		c5headache_1 = "Concussion 5 headache : Yes (Checkbox Indicator)"
		c5moodch_1 = "Concussion 5 mood changes : Yes (Checkbox Indicator)"
		c5moodnoneabove_1 = "Concussion 5 mood none of the above : Yes (Checkbox Indicator)"
		c5moodothersy_1 = "Concussion 5 mood other symptoms : Yes (Checkbox Indicator)"
		c5nausea_1 = "Concussion 5 nausea : Yes (Checkbox Indicator)"
		c5noneabove_1 = "Concussion 5 none of the above : Yes (Checkbox Indicator)"
		c5othersym_1 = "Concussion 5 other : Yes (Checkbox Indicator)"
		c5sensitivity_1 = "Concussion 5 sensitivity to light or noise : Yes (Checkbox Indicator)"
		c5sleepdis_1 = "Concussion 5 sleep disturbances : Yes (Checkbox Indicator)"
		c5trbconc_1 = "Concussion 5 trouble concentration : Yes (Checkbox Indicator)"
		c5vision_1 = "Concussion 5 vision problems : Yes (Checkbox Indicator)"
		c5vomiting_1 = "Concussion 5 vomiting : Yes (Checkbox Indicator)"
	;
	FORMAT
		hadconcussion hadconcussion_.
		c1cause c1cause_.
		c1lossconsc c1lossconsc_.
		c1medical c1medical_.
		c1mddx c1mddx_.
		c1headloc c1headloc_.
		c1headachedur c1headachedur_.
		c1headachedur2 c1headachedur2_.
		c1nauseadur c1nauseadur_.
		c1vomitingdur c1vomitingdur_.
		c1balancedur c1balancedur_.
		c1balancedur2 c1balancedur2_.
		c1dizzinessdur c1dizzinessdur_.
		c1dizzinessdur2 c1dizzinessdur2_.
		c1visiondur c1visiondur_.
		c1visiondur2 c1visiondur2_.
		c1trbconcdur c1trbconcdur_.
		c1trbconsdur2 c1trbconsdur2_.
		c1confusiondur c1confusiondur_.
		c1confusiondur2 c1confusiondur2_.
		c1amnesiadur c1amnesiadur_.
		c1amnesiadur2 c1amnesiadur2_.
		c1fatiguedur c1fatiguedur_.
		c1fatiguedur2 c1fatiguedur2_.
		c1sensitivitydur c1sensitivitydur_.
		c1sensitivitydur2 c1sensitivitydur2_.
		c1sleepdur c1sleepdur_.
		c1sleepdur2 c1sleepdur2_.
		c1moodchdur c1moodchdur_.
		c1moodchdur2 c1moodchdur2_.
		c1depressiondur c1depressiondur_.
		c1depressiondur2 c1depressiondur2_.
		c1anxietydur c1anxietydur_.
		c1anxietydur2 c1anxietydur2_.
		c1agitationdur c1agitationdur_.
		c1angerdur c1angerdur_.
		c1angerdur2 c1angerdur2_.
		c1aggressiondur c1aggressiondur_.
		c1aggressiondur2 c1aggressiondur2_.
		concussion2 concussion2_.
		c2cause c2cause_.
		c2lossconsc c2lossconsc_.
		c2medical c2medical_.
		c2mddx c2mddx_.
		c2headloc c2headloc_.
		c2headachedur c2headachedur_.
		c2nauseadur c2nauseadur_.
		c2vomitingdur c2vomitingdur_.
		c2balancedur c2balancedur_.
		c2dizzinessdur c2dizzinessdur_.
		c2visiondur c2visiondur_.
		c2trbconcdur c2trbconcdur_.
		c2confusiondur c2confusiondur_.
		c2amnesiadur c2amnesiadur_.
		c2fatiguedur c2fatiguedur_.
		c2fatiguedur2 c2fatiguedur2_.
		c2sensitivitydur c2sensitivitydur_.
		c2sleepdur c2sleepdur_.
		c2moodchdur c2moodchdur_.
		c2depressiondur c2depressiondur_.
		c2anxietydur c2anxietydur_.
		c2agitationdur c2agitationdur_.
		c2angerdur c2angerdur_.
		c2aggressiondur c2aggressiondur_.
		concussion3 concussion3_.
		c3cause c3cause_.
		c3lossconsc c3lossconsc_.
		c3medical c3medical_.
		c3mddx c3mddx_.
		c3headloc c3headloc_.
		c3headachedur c3headachedur_.
		c3nauseadur c3nauseadur_.
		c3vomitingdur c3vomitingdur_.
		c3dizzinessdur c3dizzinessdur_.
		c3dizzinessdur2 c3dizzinessdur2_.
		c3fatiguedur c3fatiguedur_.
		c3fatiguedur2 c3fatiguedur2_.
		concussion4 concussion4_.
		c4cause c4cause_.
		c4lossconsc c4lossconsc_.
		c4medical c4medical_.
		c4mddx c4mddx_.
		c4headloc c4headloc_.
		c4headachedur c4headachedur_.
		c4balancedur c4balancedur_.
		c4balancedur2 c4balancedur2_.
		c4dizzinessdur c4dizzinessdur_.
		c4dizzinessdur2 c4dizzinessdur2_.
		concussion5 concussion5_.
		c5cause c5cause_.
		c5lossconsc c5lossconsc_.
		c5medical c5medical_.
		c5headloc c5headloc_.
		c5vomitingdur c5vomitingdur_.
	;
RUN;


        DATA oc_headinjuryquestionnaire;
            SET WORK.IMPORT;
        RUN;
        