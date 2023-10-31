%let path_to_file = '../data-csv/bodyi_abdomenmetrics.csv';
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

	INFORMAT spleen_area BEST32.;
	FORMAT spleen_area BEST12.;

	INFORMAT spleen_mean_intensity BEST32.;
	FORMAT spleen_mean_intensity BEST12.;

	INFORMAT spleen_std_intensity BEST32.;
	FORMAT spleen_std_intensity BEST12.;

	INFORMAT right_kidney_area BEST32.;
	FORMAT right_kidney_area BEST12.;

	INFORMAT right_kidney_mean_intensity BEST32.;
	FORMAT right_kidney_mean_intensity BEST12.;

	INFORMAT right_kidney_std_intensity BEST32.;
	FORMAT right_kidney_std_intensity BEST12.;

	INFORMAT left_kidney_area BEST32.;
	FORMAT left_kidney_area BEST12.;

	INFORMAT left_kidney_mean_intensity BEST32.;
	FORMAT left_kidney_mean_intensity BEST12.;

	INFORMAT left_kidney_std_intensity BEST32.;
	FORMAT left_kidney_std_intensity BEST12.;

	INFORMAT gallbladder_area BEST32.;
	FORMAT gallbladder_area BEST12.;

	INFORMAT gallbladder_mean_intensity BEST32.;
	FORMAT gallbladder_mean_intensity BEST12.;

	INFORMAT gallbladder_std_intensity BEST32.;
	FORMAT gallbladder_std_intensity BEST12.;

	INFORMAT liver_area BEST32.;
	FORMAT liver_area BEST12.;

	INFORMAT liver_mean_intensity BEST32.;
	FORMAT liver_mean_intensity BEST12.;

	INFORMAT liver_std_intensity BEST32.;
	FORMAT liver_std_intensity BEST12.;

	INFORMAT stomache_area BEST32.;
	FORMAT stomache_area BEST12.;

	INFORMAT stomache_mean_intensity BEST32.;
	FORMAT stomache_mean_intensity BEST12.;

	INFORMAT stomache_std_intensity BEST32.;
	FORMAT stomache_std_intensity BEST12.;

	INFORMAT aorta_area BEST32.;
	FORMAT aorta_area BEST12.;

	INFORMAT aorta_mean_intensity BEST32.;
	FORMAT aorta_mean_intensity BEST12.;

	INFORMAT aorta_std_intensity BEST32.;
	FORMAT aorta_std_intensity BEST12.;

	INFORMAT pancrease_area BEST32.;
	FORMAT pancrease_area BEST12.;

	INFORMAT pancrease_mean_intensity BEST32.;
	FORMAT pancrease_mean_intensity BEST12.;

	INFORMAT pancrease_std_intensity BEST32.;
	FORMAT pancrease_std_intensity BEST12.;

	INFORMAT muscle_area BEST32.;
	FORMAT muscle_area BEST12.;

	INFORMAT muscle_mean_intensity BEST32.;
	FORMAT muscle_mean_intensity BEST12.;

	INFORMAT muscle_std_intensity BEST32.;
	FORMAT muscle_std_intensity BEST12.;

	INFORMAT inner_abdominal_wall_area BEST32.;
	FORMAT inner_abdominal_wall_area BEST12.;

	INFORMAT inner_abd_wall_mean_intensity BEST32.;
	FORMAT inner_abd_wall_mean_intensity BEST12.;

	INFORMAT inner_abd_wall_std_intensity BEST32.;
	FORMAT inner_abd_wall_std_intensity BEST12.;

	INFORMAT outer_abdominal_wall_area BEST32.;
	FORMAT outer_abdominal_wall_area BEST12.;

	INFORMAT outer_abd_wall_mean_intensity BEST32.;
	FORMAT outer_abd_wall_mean_intensity BEST12.;

	INFORMAT outer_abd_wall_std_intensity BEST32.;
	FORMAT outer_abd_wall_std_intensity BEST12.;

	INFORMAT subcutaneous_fat_area BEST32.;
	FORMAT subcutaneous_fat_area BEST12.;

	INFORMAT subcutaneous_fat_mean_intensity BEST32.;
	FORMAT subcutaneous_fat_mean_intensity BEST12.;

	INFORMAT subcutaneous_fat_std_intensity BEST32.;
	FORMAT subcutaneous_fat_std_intensity BEST12.;

	INFORMAT visceral_fat_area BEST32.;
	FORMAT visceral_fat_area BEST12.;

	INFORMAT visceral_fat_mean_intensity BEST32.;
	FORMAT visceral_fat_mean_intensity BEST12.;

	INFORMAT visceral_fat_std_intensity BEST32.;
	FORMAT visceral_fat_std_intensity BEST12.;

	INFORMAT retroperitoneum_fat_area BEST32.;
	FORMAT retroperitoneum_fat_area BEST12.;

	INFORMAT retroperit_fat_mean_intensity BEST32.;
	FORMAT retroperit_fat_mean_intensity BEST12.;

	INFORMAT retroperit_fat_std_intensity BEST32.;
	FORMAT retroperit_fat_std_intensity BEST12.;

	INFORMAT body_mask_area BEST32.;
	FORMAT body_mask_area BEST12.;

	INFORMAT body_mask_mean_intensity BEST32.;
	FORMAT body_mask_mean_intensity BEST12.;

	INFORMAT body_mask_std_intensity BEST32.;
	FORMAT body_mask_std_intensity BEST12.;

	INPUT
		id_addi
		visit
		spleen_area
		spleen_mean_intensity
		spleen_std_intensity
		right_kidney_area
		right_kidney_mean_intensity
		right_kidney_std_intensity
		left_kidney_area
		left_kidney_mean_intensity
		left_kidney_std_intensity
		gallbladder_area
		gallbladder_mean_intensity
		gallbladder_std_intensity
		liver_area
		liver_mean_intensity
		liver_std_intensity
		stomache_area
		stomache_mean_intensity
		stomache_std_intensity
		aorta_area
		aorta_mean_intensity
		aorta_std_intensity
		pancrease_area
		pancrease_mean_intensity
		pancrease_std_intensity
		muscle_area
		muscle_mean_intensity
		muscle_std_intensity
		inner_abdominal_wall_area
		inner_abd_wall_mean_intensity
		inner_abd_wall_std_intensity
		outer_abdominal_wall_area
		outer_abd_wall_mean_intensity
		outer_abd_wall_std_intensity
		subcutaneous_fat_area
		subcutaneous_fat_mean_intensity
		subcutaneous_fat_std_intensity
		visceral_fat_area
		visceral_fat_mean_intensity
		visceral_fat_std_intensity
		retroperitoneum_fat_area
		retroperit_fat_mean_intensity
		retroperit_fat_std_intensity
		body_mask_area
		body_mask_mean_intensity
		body_mask_std_intensity
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		spleen_area = "Spleen Area"
		spleen_mean_intensity = "Spleen Mean Intensity"
		spleen_std_intensity = "Spleen Standard Deviation Intensity"
		right_kidney_area = "Right Kidney Area"
		right_kidney_mean_intensity = "Right Kidney Mean Intensity"
		right_kidney_std_intensity = "Right Kidney Standard Deviation Intensity"
		left_kidney_area = "Left Kidney Area"
		left_kidney_mean_intensity = "Left Kidney Mean Intensity"
		left_kidney_std_intensity = "Left Kidney Standard Deviation Intensity"
		gallbladder_area = "Gallbladder Area"
		gallbladder_mean_intensity = "Gallbladder Mean Intensity"
		gallbladder_std_intensity = "Gallbladder Standard Deviation Intensity"
		liver_area = "Liver Area"
		liver_mean_intensity = "Liver Mean Intensity"
		liver_std_intensity = "Liver Standard Deviation Intensity"
		stomache_area = "Stomach Area"
		stomache_mean_intensity = "Stomach Mean Intensity"
		stomache_std_intensity = "Stomach Standard Deviation Intensity"
		aorta_area = "Aorta Area"
		aorta_mean_intensity = "Aorta Mean Intensity"
		aorta_std_intensity = "Aorta Standard Deviation Intensity"
		pancrease_area = "Pancreas Area"
		pancrease_mean_intensity = "Pancreas Mean Intensity"
		pancrease_std_intensity = "Pancreas Standard Deviation Intensity"
		muscle_area = "Muscle Area"
		muscle_mean_intensity = "Muscle Mean Intensity"
		muscle_std_intensity = "Muscle Standard Deviation Intensity"
		inner_abdominal_wall_area = "Inner Abdominal Wall Area"
		inner_abd_wall_mean_intensity = "Inner Abdominal Wall Mean Intensity"
		inner_abd_wall_std_intensity = "Inner Abdominal Wall Standard Deviation Intensity"
		outer_abdominal_wall_area = "Outer Abdominal Wall Area"
		outer_abd_wall_mean_intensity = "Outer Abdominal Wall Mean Intensity"
		outer_abd_wall_std_intensity = "Outer Abdominal Wall Standard Deviation Intensity"
		subcutaneous_fat_area = "Subcutaneous Fat Area"
		subcutaneous_fat_mean_intensity = "Subcutaneous Fat Mean Intensity"
		subcutaneous_fat_std_intensity = "Subcutaneous Fat Standard Deviation Intensity"
		visceral_fat_area = "Visceral Fat Area"
		visceral_fat_mean_intensity = "Visceral Fat Mean Intensity"
		visceral_fat_std_intensity = "Visceral Fat Standard Deviation Intensity"
		retroperitoneum_fat_area = "Retroperitoneum Fat Area"
		retroperit_fat_mean_intensity = "Retroperitoneum Fat Mean Intensity"
		retroperit_fat_std_intensity = "Retroperitoneum Fat Standard Deviation Intensity"
		body_mask_area = "Body Mask Area"
		body_mask_mean_intensity = "Body Mask Mean Intensity"
		body_mask_std_intensity = "Body Mask Standard Deviation Intensity"
	;
RUN;


        DATA bodyi_abdomenmetrics;
            SET WORK.IMPORT;
        RUN;
        