%let path_to_file = '../data-csv/labs_blsaocparticipantlabs.csv';
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

	INFORMAT alanine_aminotransferase BEST32.;
	FORMAT alanine_aminotransferase BEST12.;

	INFORMAT test_lab_alanine_aminotransf $8.;
	FORMAT test_lab_alanine_aminotransf $8.;

	INFORMAT albumin BEST32.;
	FORMAT albumin BEST12.;

	INFORMAT test_lab_albumin $8.;
	FORMAT test_lab_albumin $8.;

	INFORMAT alkaline_phosphotase BEST32.;
	FORMAT alkaline_phosphotase BEST12.;

	INFORMAT test_lab_alkaline_phosphotase $8.;
	FORMAT test_lab_alkaline_phosphotase $8.;

	INFORMAT amylase BEST32.;
	FORMAT amylase BEST12.;

	INFORMAT test_lab_amylase $8.;
	FORMAT test_lab_amylase $8.;

	INFORMAT anion_gap BEST32.;
	FORMAT anion_gap BEST12.;

	INFORMAT test_lab_anion_gap $8.;
	FORMAT test_lab_anion_gap $8.;

	INFORMAT aspartate_aminotransferase BEST32.;
	FORMAT aspartate_aminotransferase BEST12.;

	INFORMAT test_lab_aspart_aminotransf $8.;
	FORMAT test_lab_aspart_aminotransf $8.;

	INFORMAT a_g_ratio BEST32.;
	FORMAT a_g_ratio BEST12.;

	INFORMAT test_lab_a_g_ratio $8.;
	FORMAT test_lab_a_g_ratio $8.;

	INFORMAT basophil_absolute BEST32.;
	FORMAT basophil_absolute BEST12.;

	INFORMAT test_lab_basophil_absolute $8.;
	FORMAT test_lab_basophil_absolute $8.;

	INFORMAT basophil_percent BEST32.;
	FORMAT basophil_percent BEST12.;

	INFORMAT test_lab_basophil_percent $8.;
	FORMAT test_lab_basophil_percent $8.;

	INFORMAT bilirubin_direct BEST32.;
	FORMAT bilirubin_direct BEST12.;

	INFORMAT test_lab_bilirubin_direct $8.;
	FORMAT test_lab_bilirubin_direct $8.;

	INFORMAT bilirubin_total BEST32.;
	FORMAT bilirubin_total BEST12.;

	INFORMAT test_lab_bilirubin_total $8.;
	FORMAT test_lab_bilirubin_total $8.;

	INFORMAT blood_urea_nitrogen BEST32.;
	FORMAT blood_urea_nitrogen BEST12.;

	INFORMAT test_lab_blood_urea_nitrogen $8.;
	FORMAT test_lab_blood_urea_nitrogen $8.;

	INFORMAT bun_creatinine_ratio BEST32.;
	FORMAT bun_creatinine_ratio BEST12.;

	INFORMAT test_lab_bun_creatinine_ratio $8.;
	FORMAT test_lab_bun_creatinine_ratio $8.;

	INFORMAT calcium BEST32.;
	FORMAT calcium BEST12.;

	INFORMAT test_lab_calcium $8.;
	FORMAT test_lab_calcium $8.;

	INFORMAT carbon_dioxide BEST32.;
	FORMAT carbon_dioxide BEST12.;

	INFORMAT test_lab_carbon_dioxide $8.;
	FORMAT test_lab_carbon_dioxide $8.;

	INFORMAT chloride BEST32.;
	FORMAT chloride BEST12.;

	INFORMAT test_lab_chloride $8.;
	FORMAT test_lab_chloride $8.;

	INFORMAT cholesterol BEST32.;
	FORMAT cholesterol BEST12.;

	INFORMAT test_lab_cholesterol $8.;
	FORMAT test_lab_cholesterol $8.;

	INFORMAT cholesterol_hdl BEST32.;
	FORMAT cholesterol_hdl BEST12.;

	INFORMAT test_lab_cholesterol_hdl $8.;
	FORMAT test_lab_cholesterol_hdl $8.;

	INFORMAT cholesterol_ldl BEST32.;
	FORMAT cholesterol_ldl BEST12.;

	INFORMAT test_lab_cholesterol_ldl $8.;
	FORMAT test_lab_cholesterol_ldl $8.;

	INFORMAT cholesterol_ldl_calculated BEST32.;
	FORMAT cholesterol_ldl_calculated BEST12.;

	INFORMAT test_lab_chol_ldl_calc $3.;
	FORMAT test_lab_chol_ldl_calc $3.;

	INFORMAT cholesterol_non_hdl BEST32.;
	FORMAT cholesterol_non_hdl BEST12.;

	INFORMAT test_lab_cholesterol_non_hdl $3.;
	FORMAT test_lab_cholesterol_non_hdl $3.;

	INFORMAT cortisol_am BEST32.;
	FORMAT cortisol_am BEST12.;

	INFORMAT test_lab_cortisol_am $3.;
	FORMAT test_lab_cortisol_am $3.;

	INFORMAT creatine_kinase BEST32.;
	FORMAT creatine_kinase BEST12.;

	INFORMAT test_lab_creatine_kinase $8.;
	FORMAT test_lab_creatine_kinase $8.;

	INFORMAT creatine_phosphokinase BEST32.;
	FORMAT creatine_phosphokinase BEST12.;

	INFORMAT test_lab_creatine_phosphokinase $8.;
	FORMAT test_lab_creatine_phosphokinase $8.;

	INFORMAT creatinine BEST32.;
	FORMAT creatinine BEST12.;

	INFORMAT test_lab_creatinine $8.;
	FORMAT test_lab_creatinine $8.;

	INFORMAT d_dimer BEST32.;
	FORMAT d_dimer BEST12.;

	INFORMAT test_lab_d_dimer $3.;
	FORMAT test_lab_d_dimer $3.;

	INFORMAT eosinophil_absolute BEST32.;
	FORMAT eosinophil_absolute BEST12.;

	INFORMAT test_lab_eosinophil_absolute $8.;
	FORMAT test_lab_eosinophil_absolute $8.;

	INFORMAT eosinophil_percent BEST32.;
	FORMAT eosinophil_percent BEST12.;

	INFORMAT test_lab_eosinophil_percent $8.;
	FORMAT test_lab_eosinophil_percent $8.;

	INFORMAT erythrocyte_sedimentation_rate BEST32.;
	FORMAT erythrocyte_sedimentation_rate BEST12.;

	INFORMAT test_lab_erythro_sed_rate $8.;
	FORMAT test_lab_erythro_sed_rate $8.;

	INFORMAT estradiol BEST32.;
	FORMAT estradiol BEST12.;

	INFORMAT test_lab_estradiol $3.;
	FORMAT test_lab_estradiol $3.;

	INFORMAT ferritin BEST32.;
	FORMAT ferritin BEST12.;

	INFORMAT test_lab_ferritin $8.;
	FORMAT test_lab_ferritin $8.;

	INFORMAT fibrinogen BEST32.;
	FORMAT fibrinogen BEST12.;

	INFORMAT test_lab_fibrinogen $3.;
	FORMAT test_lab_fibrinogen $3.;

	INFORMAT folate BEST32.;
	FORMAT folate BEST12.;

	INFORMAT test_lab_folate $8.;
	FORMAT test_lab_folate $8.;

	INFORMAT gamma_glutamyl_transferase BEST32.;
	FORMAT gamma_glutamyl_transferase BEST12.;

	INFORMAT test_lab_gamma_glut_transf $8.;
	FORMAT test_lab_gamma_glut_transf $8.;

	INFORMAT globulin BEST32.;
	FORMAT globulin BEST12.;

	INFORMAT test_lab_globulin $8.;
	FORMAT test_lab_globulin $8.;

	INFORMAT glucose BEST32.;
	FORMAT glucose BEST12.;

	INFORMAT test_lab_glucose $8.;
	FORMAT test_lab_glucose $8.;

	INFORMAT glucose_fasting BEST32.;
	FORMAT glucose_fasting BEST12.;

	INFORMAT test_lab_glucose_fasting $8.;
	FORMAT test_lab_glucose_fasting $8.;

	INFORMAT hematocrit BEST32.;
	FORMAT hematocrit BEST12.;

	INFORMAT test_lab_hematocrit $8.;
	FORMAT test_lab_hematocrit $8.;

	INFORMAT hemoglobin BEST32.;
	FORMAT hemoglobin BEST12.;

	INFORMAT test_lab_hemoglobin $8.;
	FORMAT test_lab_hemoglobin $8.;

	INFORMAT hemoglobin_a1c BEST32.;
	FORMAT hemoglobin_a1c BEST12.;

	INFORMAT test_lab_hemoglobin_a1c $3.;
	FORMAT test_lab_hemoglobin_a1c $3.;

	INFORMAT hepatitis_b_surface_antigen $69.;
	FORMAT hepatitis_b_surface_antigen $69.;

	INFORMAT test_lab_hep_b_surface_antigen $8.;
	FORMAT test_lab_hep_b_surface_antigen $8.;

	INFORMAT hepatitis_c $69.;
	FORMAT hepatitis_c $69.;

	INFORMAT test_lab_hepatitis_c $8.;
	FORMAT test_lab_hepatitis_c $8.;

	INFORMAT homocysteine BEST32.;
	FORMAT homocysteine BEST12.;

	INFORMAT test_lab_homocysteine $8.;
	FORMAT test_lab_homocysteine $8.;

	INFORMAT hscrp BEST32.;
	FORMAT hscrp BEST12.;

	INFORMAT test_lab_hscrp $3.;
	FORMAT test_lab_hscrp $3.;

	INFORMAT immature_granulocyte_absolute BEST32.;
	FORMAT immature_granulocyte_absolute BEST12.;

	INFORMAT test_lab_immature_gran_abs $3.;
	FORMAT test_lab_immature_gran_abs $3.;

	INFORMAT immature_granulocyte_percent BEST32.;
	FORMAT immature_granulocyte_percent BEST12.;

	INFORMAT test_lab_immature_gran_pct $3.;
	FORMAT test_lab_immature_gran_pct $3.;

	INFORMAT immature_platelet_percent BEST32.;
	FORMAT immature_platelet_percent BEST12.;

	INFORMAT test_lab_immature_platelet_pct $3.;
	FORMAT test_lab_immature_platelet_pct $3.;

	INFORMAT immature_reticulocyte_percent BEST32.;
	FORMAT immature_reticulocyte_percent BEST12.;

	INFORMAT test_lab_immature_retic_pct $3.;
	FORMAT test_lab_immature_retic_pct $3.;

	INFORMAT inr BEST32.;
	FORMAT inr BEST12.;

	INFORMAT test_lab_inr $8.;
	FORMAT test_lab_inr $8.;

	INFORMAT iron BEST32.;
	FORMAT iron BEST12.;

	INFORMAT test_lab_iron $8.;
	FORMAT test_lab_iron $8.;

	INFORMAT ketones $52.;
	FORMAT ketones $52.;

	INFORMAT test_lab_ketones $8.;
	FORMAT test_lab_ketones $8.;

	INFORMAT lactate_dehydrogenase BEST32.;
	FORMAT lactate_dehydrogenase BEST12.;

	INFORMAT test_lab_lactate_dehydrogenase $8.;
	FORMAT test_lab_lactate_dehydrogenase $8.;

	INFORMAT lymphocyte_absolute BEST32.;
	FORMAT lymphocyte_absolute BEST12.;

	INFORMAT test_lab_lymphocyte_absolute $8.;
	FORMAT test_lab_lymphocyte_absolute $8.;

	INFORMAT lymphocyte_percent BEST32.;
	FORMAT lymphocyte_percent BEST12.;

	INFORMAT test_lab_lymphocyte_percent $8.;
	FORMAT test_lab_lymphocyte_percent $8.;

	INFORMAT magnesium BEST32.;
	FORMAT magnesium BEST12.;

	INFORMAT test_lab_magnesium $8.;
	FORMAT test_lab_magnesium $8.;

	INFORMAT mean_corpuscular_hemoglobin BEST32.;
	FORMAT mean_corpuscular_hemoglobin BEST12.;

	INFORMAT test_lab_mean_corp_hemoglobin $8.;
	FORMAT test_lab_mean_corp_hemoglobin $8.;

	INFORMAT mean_corpuscular_volume BEST32.;
	FORMAT mean_corpuscular_volume BEST12.;

	INFORMAT test_lab_mean_corpuscular_volume $8.;
	FORMAT test_lab_mean_corpuscular_volume $8.;

	INFORMAT mean_corp_hemo_conc BEST32.;
	FORMAT mean_corp_hemo_conc BEST12.;

	INFORMAT test_lab_mean_corp_hemo_conc $8.;
	FORMAT test_lab_mean_corp_hemo_conc $8.;

	INFORMAT mean_platelet_volume BEST32.;
	FORMAT mean_platelet_volume BEST12.;

	INFORMAT test_lab_mean_platelet_volume $8.;
	FORMAT test_lab_mean_platelet_volume $8.;

	INFORMAT monocyte_absolute BEST32.;
	FORMAT monocyte_absolute BEST12.;

	INFORMAT test_lab_monocyte_absolute $8.;
	FORMAT test_lab_monocyte_absolute $8.;

	INFORMAT monocyte_percent BEST32.;
	FORMAT monocyte_percent BEST12.;

	INFORMAT test_lab_monocyte_percent $8.;
	FORMAT test_lab_monocyte_percent $8.;

	INFORMAT neutrophil_absolute BEST32.;
	FORMAT neutrophil_absolute BEST12.;

	INFORMAT test_lab_neutrophil_absolute $8.;
	FORMAT test_lab_neutrophil_absolute $8.;

	INFORMAT neutrophil_percent BEST32.;
	FORMAT neutrophil_percent BEST12.;

	INFORMAT test_lab_neutrophil_percent $8.;
	FORMAT test_lab_neutrophil_percent $8.;

	INFORMAT nucleated_red_blood_cell BEST32.;
	FORMAT nucleated_red_blood_cell BEST12.;

	INFORMAT test_lab_nucleated_rbc $3.;
	FORMAT test_lab_nucleated_rbc $3.;

	INFORMAT nucleated_red_blood_cell_auto BEST32.;
	FORMAT nucleated_red_blood_cell_auto BEST12.;

	INFORMAT test_lab_nucleated_rbc_auto $3.;
	FORMAT test_lab_nucleated_rbc_auto $3.;

	INFORMAT partial_thromboplastin_time BEST32.;
	FORMAT partial_thromboplastin_time BEST12.;

	INFORMAT test_lab_partial_thrombo_time $8.;
	FORMAT test_lab_partial_thrombo_time $8.;

	INFORMAT ph BEST32.;
	FORMAT ph BEST12.;

	INFORMAT test_lab_ph $8.;
	FORMAT test_lab_ph $8.;

	INFORMAT phosphorus BEST32.;
	FORMAT phosphorus BEST12.;

	INFORMAT test_lab_phosphorus $8.;
	FORMAT test_lab_phosphorus $8.;

	INFORMAT platelets BEST32.;
	FORMAT platelets BEST12.;

	INFORMAT test_lab_platelets $8.;
	FORMAT test_lab_platelets $8.;

	INFORMAT potassium BEST32.;
	FORMAT potassium BEST12.;

	INFORMAT test_lab_potassium $8.;
	FORMAT test_lab_potassium $8.;

	INFORMAT prothrombin_time BEST32.;
	FORMAT prothrombin_time BEST12.;

	INFORMAT test_lab_prothrombin_time $8.;
	FORMAT test_lab_prothrombin_time $8.;

	INFORMAT rapid_plasma_reagin $53.;
	FORMAT rapid_plasma_reagin $53.;

	INFORMAT test_lab_rapid_plasma_reagin $8.;
	FORMAT test_lab_rapid_plasma_reagin $8.;

	INFORMAT red_blood_cell_count BEST32.;
	FORMAT red_blood_cell_count BEST12.;

	INFORMAT test_lab_red_blood_cell_count $8.;
	FORMAT test_lab_red_blood_cell_count $8.;

	INFORMAT red_cell_distribution_width BEST32.;
	FORMAT red_cell_distribution_width BEST12.;

	INFORMAT test_lab_red_cell_dist_width $8.;
	FORMAT test_lab_red_cell_dist_width $8.;

	INFORMAT reticulocyte_absolute BEST32.;
	FORMAT reticulocyte_absolute BEST12.;

	INFORMAT test_lab_reticulocyte_absolute $8.;
	FORMAT test_lab_reticulocyte_absolute $8.;

	INFORMAT reticulocyte_hemoglobin BEST32.;
	FORMAT reticulocyte_hemoglobin BEST12.;

	INFORMAT test_lab_reticulocyte_hemoglobin $3.;
	FORMAT test_lab_reticulocyte_hemoglobin $3.;

	INFORMAT reticulocyte_percent BEST32.;
	FORMAT reticulocyte_percent BEST12.;

	INFORMAT test_lab_reticulocyte_percent $3.;
	FORMAT test_lab_reticulocyte_percent $3.;

	INFORMAT sodium BEST32.;
	FORMAT sodium BEST12.;

	INFORMAT test_lab_sodium $8.;
	FORMAT test_lab_sodium $8.;

	INFORMAT testosterone_bioavailable BEST32.;
	FORMAT testosterone_bioavailable BEST12.;

	INFORMAT test_lab_testosterone_bioavail $3.;
	FORMAT test_lab_testosterone_bioavail $3.;

	INFORMAT testosterone_total BEST32.;
	FORMAT testosterone_total BEST12.;

	INFORMAT test_lab_testosterone_total $3.;
	FORMAT test_lab_testosterone_total $3.;

	INFORMAT thyroid_stimulating_hormone BEST32.;
	FORMAT thyroid_stimulating_hormone BEST12.;

	INFORMAT test_lab_thyroid_stim_hormone $8.;
	FORMAT test_lab_thyroid_stim_hormone $8.;

	INFORMAT thyroxine_free BEST32.;
	FORMAT thyroxine_free BEST12.;

	INFORMAT test_lab_thyroxine_free $8.;
	FORMAT test_lab_thyroxine_free $8.;

	INFORMAT thyroxine_free_index BEST32.;
	FORMAT thyroxine_free_index BEST12.;

	INFORMAT test_lab_thyroxine_free_index $8.;
	FORMAT test_lab_thyroxine_free_index $8.;

	INFORMAT thyroxine_total BEST32.;
	FORMAT thyroxine_total BEST12.;

	INFORMAT test_lab_thyroxine_total $8.;
	FORMAT test_lab_thyroxine_total $8.;

	INFORMAT total_iron_binding_capacity BEST32.;
	FORMAT total_iron_binding_capacity BEST12.;

	INFORMAT test_lab_total_iron_binding_cap $8.;
	FORMAT test_lab_total_iron_binding_cap $8.;

	INFORMAT total_protein BEST32.;
	FORMAT total_protein BEST12.;

	INFORMAT test_lab_total_protein $8.;
	FORMAT test_lab_total_protein $8.;

	INFORMAT total_volume BEST32.;
	FORMAT total_volume BEST12.;

	INFORMAT test_lab_total_volume $8.;
	FORMAT test_lab_total_volume $8.;

	INFORMAT transferrin_saturation BEST32.;
	FORMAT transferrin_saturation BEST12.;

	INFORMAT test_lab_transferrin_saturation $8.;
	FORMAT test_lab_transferrin_saturation $8.;

	INFORMAT triglycerides BEST32.;
	FORMAT triglycerides BEST12.;

	INFORMAT test_lab_triglycerides $8.;
	FORMAT test_lab_triglycerides $8.;

	INFORMAT triiodothyronine_free BEST32.;
	FORMAT triiodothyronine_free BEST12.;

	INFORMAT test_lab_triiodothyronine_free $3.;
	FORMAT test_lab_triiodothyronine_free $3.;

	INFORMAT triiodothyronine_total BEST32.;
	FORMAT triiodothyronine_total BEST12.;

	INFORMAT test_lab_triiodothyronine_total $8.;
	FORMAT test_lab_triiodothyronine_total $8.;

	INFORMAT triiodothyronine_uptake BEST32.;
	FORMAT triiodothyronine_uptake BEST12.;

	INFORMAT test_lab_triiodothyronine_uptake $8.;
	FORMAT test_lab_triiodothyronine_uptake $8.;

	INFORMAT u24_cortisol BEST32.;
	FORMAT u24_cortisol BEST12.;

	INFORMAT test_lab_u24_cortisol $8.;
	FORMAT test_lab_u24_cortisol $8.;

	INFORMAT u24_cortisol_creatinine_ratio BEST32.;
	FORMAT u24_cortisol_creatinine_ratio BEST12.;

	INFORMAT test_lab_u24_ccr $3.;
	FORMAT test_lab_u24_ccr $3.;

	INFORMAT u24_creatinine BEST32.;
	FORMAT u24_creatinine BEST12.;

	INFORMAT test_lab_u24_creatinine $3.;
	FORMAT test_lab_u24_creatinine $3.;

	INFORMAT u24_urea BEST32.;
	FORMAT u24_urea BEST12.;

	INFORMAT test_lab_u24_urea $3.;
	FORMAT test_lab_u24_urea $3.;

	INFORMAT unclassified $29.;
	FORMAT unclassified $29.;

	INFORMAT test_lab_unclassified $8.;
	FORMAT test_lab_unclassified $8.;

	INFORMAT uric_acid BEST32.;
	FORMAT uric_acid BEST12.;

	INFORMAT test_lab_uric_acid $8.;
	FORMAT test_lab_uric_acid $8.;

	INFORMAT u_bacteria $10.;
	FORMAT u_bacteria $10.;

	INFORMAT test_lab_u_bacteria $3.;
	FORMAT test_lab_u_bacteria $3.;

	INFORMAT u_bilirubin $8.;
	FORMAT u_bilirubin $8.;

	INFORMAT test_lab_u_bilirubin $3.;
	FORMAT test_lab_u_bilirubin $3.;

	INFORMAT u_blood $8.;
	FORMAT u_blood $8.;

	INFORMAT test_lab_u_blood $3.;
	FORMAT test_lab_u_blood $3.;

	INFORMAT u_clarity $15.;
	FORMAT u_clarity $15.;

	INFORMAT test_lab_u_clarity $8.;
	FORMAT test_lab_u_clarity $8.;

	INFORMAT u_color $69.;
	FORMAT u_color $69.;

	INFORMAT test_lab_u_color $8.;
	FORMAT test_lab_u_color $8.;

	INFORMAT u_cortisol BEST32.;
	FORMAT u_cortisol BEST12.;

	INFORMAT test_lab_u_cortisol $8.;
	FORMAT test_lab_u_cortisol $8.;

	INFORMAT u_creatinine BEST32.;
	FORMAT u_creatinine BEST12.;

	INFORMAT test_lab_u_creatinine $8.;
	FORMAT test_lab_u_creatinine $8.;

	INFORMAT u_epithelial_cells BEST32.;
	FORMAT u_epithelial_cells BEST12.;

	INFORMAT test_lab_u_epithelial_cells $3.;
	FORMAT test_lab_u_epithelial_cells $3.;

	INFORMAT u_glucose $59.;
	FORMAT u_glucose $59.;

	INFORMAT test_lab_u_glucose $8.;
	FORMAT test_lab_u_glucose $8.;

	INFORMAT u_ketones $8.;
	FORMAT u_ketones $8.;

	INFORMAT test_lab_u_ketones $3.;
	FORMAT test_lab_u_ketones $3.;

	INFORMAT u_leukocyte $8.;
	FORMAT u_leukocyte $8.;

	INFORMAT test_lab_u_leukocyte $3.;
	FORMAT test_lab_u_leukocyte $3.;

	INFORMAT u_microalbumin BEST32.;
	FORMAT u_microalbumin BEST12.;

	INFORMAT test_lab_u_microalbumin $3.;
	FORMAT test_lab_u_microalbumin $3.;

	INFORMAT u_nitrite $26.;
	FORMAT u_nitrite $26.;

	INFORMAT test_lab_u_nitrite $8.;
	FORMAT test_lab_u_nitrite $8.;

	INFORMAT u_ph BEST32.;
	FORMAT u_ph BEST12.;

	INFORMAT test_lab_u_ph $3.;
	FORMAT test_lab_u_ph $3.;

	INFORMAT u_protein BEST32.;
	FORMAT u_protein BEST12.;

	INFORMAT test_lab_u_protein $3.;
	FORMAT test_lab_u_protein $3.;

	INFORMAT u_red_blood_cell BEST32.;
	FORMAT u_red_blood_cell BEST12.;

	INFORMAT test_lab_u_red_blood_cell $3.;
	FORMAT test_lab_u_red_blood_cell $3.;

	INFORMAT u_specific_gravity BEST32.;
	FORMAT u_specific_gravity BEST12.;

	INFORMAT test_lab_u_specific_gravity $8.;
	FORMAT test_lab_u_specific_gravity $8.;

	INFORMAT u_urobilinogen BEST32.;
	FORMAT u_urobilinogen BEST12.;

	INFORMAT test_lab_u_urobilinogen $8.;
	FORMAT test_lab_u_urobilinogen $8.;

	INFORMAT u_volume BEST32.;
	FORMAT u_volume BEST12.;

	INFORMAT test_lab_u_volume $3.;
	FORMAT test_lab_u_volume $3.;

	INFORMAT u_white_blood_cell BEST32.;
	FORMAT u_white_blood_cell BEST12.;

	INFORMAT test_lab_u_white_blood_cell $3.;
	FORMAT test_lab_u_white_blood_cell $3.;

	INFORMAT vitamin_b12 BEST32.;
	FORMAT vitamin_b12 BEST12.;

	INFORMAT test_lab_vitamin_b12 $8.;
	FORMAT test_lab_vitamin_b12 $8.;

	INFORMAT vitamin_d2 BEST32.;
	FORMAT vitamin_d2 BEST12.;

	INFORMAT test_lab_vitamin_d2 $3.;
	FORMAT test_lab_vitamin_d2 $3.;

	INFORMAT vitamin_d3 BEST32.;
	FORMAT vitamin_d3 BEST12.;

	INFORMAT test_lab_vitamin_d3 $3.;
	FORMAT test_lab_vitamin_d3 $3.;

	INFORMAT white_blood_cell_count BEST32.;
	FORMAT white_blood_cell_count BEST12.;

	INFORMAT test_lab_white_blood_cell_count $8.;
	FORMAT test_lab_white_blood_cell_count $8.;

	INPUT
		id_addi
		visit
		alanine_aminotransferase
		test_lab_alanine_aminotransf
		albumin
		test_lab_albumin
		alkaline_phosphotase
		test_lab_alkaline_phosphotase
		amylase
		test_lab_amylase
		anion_gap
		test_lab_anion_gap
		aspartate_aminotransferase
		test_lab_aspart_aminotransf
		a_g_ratio
		test_lab_a_g_ratio
		basophil_absolute
		test_lab_basophil_absolute
		basophil_percent
		test_lab_basophil_percent
		bilirubin_direct
		test_lab_bilirubin_direct
		bilirubin_total
		test_lab_bilirubin_total
		blood_urea_nitrogen
		test_lab_blood_urea_nitrogen
		bun_creatinine_ratio
		test_lab_bun_creatinine_ratio
		calcium
		test_lab_calcium
		carbon_dioxide
		test_lab_carbon_dioxide
		chloride
		test_lab_chloride
		cholesterol
		test_lab_cholesterol
		cholesterol_hdl
		test_lab_cholesterol_hdl
		cholesterol_ldl
		test_lab_cholesterol_ldl
		cholesterol_ldl_calculated
		test_lab_chol_ldl_calc
		cholesterol_non_hdl
		test_lab_cholesterol_non_hdl
		cortisol_am
		test_lab_cortisol_am
		creatine_kinase
		test_lab_creatine_kinase
		creatine_phosphokinase
		test_lab_creatine_phosphokinase
		creatinine
		test_lab_creatinine
		d_dimer
		test_lab_d_dimer
		eosinophil_absolute
		test_lab_eosinophil_absolute
		eosinophil_percent
		test_lab_eosinophil_percent
		erythrocyte_sedimentation_rate
		test_lab_erythro_sed_rate
		estradiol
		test_lab_estradiol
		ferritin
		test_lab_ferritin
		fibrinogen
		test_lab_fibrinogen
		folate
		test_lab_folate
		gamma_glutamyl_transferase
		test_lab_gamma_glut_transf
		globulin
		test_lab_globulin
		glucose
		test_lab_glucose
		glucose_fasting
		test_lab_glucose_fasting
		hematocrit
		test_lab_hematocrit
		hemoglobin
		test_lab_hemoglobin
		hemoglobin_a1c
		test_lab_hemoglobin_a1c
		hepatitis_b_surface_antigen
		test_lab_hep_b_surface_antigen
		hepatitis_c
		test_lab_hepatitis_c
		homocysteine
		test_lab_homocysteine
		hscrp
		test_lab_hscrp
		immature_granulocyte_absolute
		test_lab_immature_gran_abs
		immature_granulocyte_percent
		test_lab_immature_gran_pct
		immature_platelet_percent
		test_lab_immature_platelet_pct
		immature_reticulocyte_percent
		test_lab_immature_retic_pct
		inr
		test_lab_inr
		iron
		test_lab_iron
		ketones
		test_lab_ketones
		lactate_dehydrogenase
		test_lab_lactate_dehydrogenase
		lymphocyte_absolute
		test_lab_lymphocyte_absolute
		lymphocyte_percent
		test_lab_lymphocyte_percent
		magnesium
		test_lab_magnesium
		mean_corpuscular_hemoglobin
		test_lab_mean_corp_hemoglobin
		mean_corpuscular_volume
		test_lab_mean_corpuscular_volume
		mean_corp_hemo_conc
		test_lab_mean_corp_hemo_conc
		mean_platelet_volume
		test_lab_mean_platelet_volume
		monocyte_absolute
		test_lab_monocyte_absolute
		monocyte_percent
		test_lab_monocyte_percent
		neutrophil_absolute
		test_lab_neutrophil_absolute
		neutrophil_percent
		test_lab_neutrophil_percent
		nucleated_red_blood_cell
		test_lab_nucleated_rbc
		nucleated_red_blood_cell_auto
		test_lab_nucleated_rbc_auto
		partial_thromboplastin_time
		test_lab_partial_thrombo_time
		ph
		test_lab_ph
		phosphorus
		test_lab_phosphorus
		platelets
		test_lab_platelets
		potassium
		test_lab_potassium
		prothrombin_time
		test_lab_prothrombin_time
		rapid_plasma_reagin
		test_lab_rapid_plasma_reagin
		red_blood_cell_count
		test_lab_red_blood_cell_count
		red_cell_distribution_width
		test_lab_red_cell_dist_width
		reticulocyte_absolute
		test_lab_reticulocyte_absolute
		reticulocyte_hemoglobin
		test_lab_reticulocyte_hemoglobin
		reticulocyte_percent
		test_lab_reticulocyte_percent
		sodium
		test_lab_sodium
		testosterone_bioavailable
		test_lab_testosterone_bioavail
		testosterone_total
		test_lab_testosterone_total
		thyroid_stimulating_hormone
		test_lab_thyroid_stim_hormone
		thyroxine_free
		test_lab_thyroxine_free
		thyroxine_free_index
		test_lab_thyroxine_free_index
		thyroxine_total
		test_lab_thyroxine_total
		total_iron_binding_capacity
		test_lab_total_iron_binding_cap
		total_protein
		test_lab_total_protein
		total_volume
		test_lab_total_volume
		transferrin_saturation
		test_lab_transferrin_saturation
		triglycerides
		test_lab_triglycerides
		triiodothyronine_free
		test_lab_triiodothyronine_free
		triiodothyronine_total
		test_lab_triiodothyronine_total
		triiodothyronine_uptake
		test_lab_triiodothyronine_uptake
		u24_cortisol
		test_lab_u24_cortisol
		u24_cortisol_creatinine_ratio
		test_lab_u24_ccr
		u24_creatinine
		test_lab_u24_creatinine
		u24_urea
		test_lab_u24_urea
		unclassified
		test_lab_unclassified
		uric_acid
		test_lab_uric_acid
		u_bacteria
		test_lab_u_bacteria
		u_bilirubin
		test_lab_u_bilirubin
		u_blood
		test_lab_u_blood
		u_clarity
		test_lab_u_clarity
		u_color
		test_lab_u_color
		u_cortisol
		test_lab_u_cortisol
		u_creatinine
		test_lab_u_creatinine
		u_epithelial_cells
		test_lab_u_epithelial_cells
		u_glucose
		test_lab_u_glucose
		u_ketones
		test_lab_u_ketones
		u_leukocyte
		test_lab_u_leukocyte
		u_microalbumin
		test_lab_u_microalbumin
		u_nitrite
		test_lab_u_nitrite
		u_ph
		test_lab_u_ph
		u_protein
		test_lab_u_protein
		u_red_blood_cell
		test_lab_u_red_blood_cell
		u_specific_gravity
		test_lab_u_specific_gravity
		u_urobilinogen
		test_lab_u_urobilinogen
		u_volume
		test_lab_u_volume
		u_white_blood_cell
		test_lab_u_white_blood_cell
		vitamin_b12
		test_lab_vitamin_b12
		vitamin_d2
		test_lab_vitamin_d2
		vitamin_d3
		test_lab_vitamin_d3
		white_blood_cell_count
		test_lab_white_blood_cell_count
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		alanine_aminotransferase = "Alanine aminotransferase enzyme sample measurement"
		test_lab_alanine_aminotransf = "Lab where the alanine_aminotransferase measurement was collected"
		albumin = "Albumin sample measurement"
		test_lab_albumin = "Lab where the albumin measurement was collected"
		alkaline_phosphotase = "Alkaline phosphatase enzyme sample measurement"
		test_lab_alkaline_phosphotase = "Lab where the alkaline_phosphotase measurement was collected"
		amylase = "Amylase enzyme sample measurement"
		test_lab_amylase = "Lab where the amylase measurement was collected"
		anion_gap = "Anion Gap"
		test_lab_anion_gap = "Lab where the anion_gap measurement was collected"
		aspartate_aminotransferase = "AST: Aspartate aminotransferase (also known as SGOT: Serum Glutamic Oxaloacetic Transaminase)"
		test_lab_aspart_aminotransf = "Lab where the aspartate_aminotransferase measurement was collected"
		a_g_ratio = "Albumin-to-globulin (A/G) Ratio"
		test_lab_a_g_ratio = "Lab where the a_g_ratio measurement was collected"
		basophil_absolute = "Absolute number of basophilis"
		test_lab_basophil_absolute = "Lab where the basophil_absolute measurement was collected"
		basophil_percent = "Basophils percentage"
		test_lab_basophil_percent = "Lab where the basophil_percent measurement was collected"
		bilirubin_direct = "Direct Bilirubin"
		test_lab_bilirubin_direct = "Lab where the bilirubin_direct measurement was collected"
		bilirubin_total = "Total Bilirubin"
		test_lab_bilirubin_total = "Lab where the bilirubin_total measurement was collected"
		blood_urea_nitrogen = "Blood Urea Nitrogen (BUN)"
		test_lab_blood_urea_nitrogen = "Lab where the blood_urea_nitrogen measurement was collected"
		bun_creatinine_ratio = "BUN/Creatinine Ratio"
		test_lab_bun_creatinine_ratio = "Lab where the bun_creatinine_ratio measurement was collected"
		calcium = "Calcium"
		test_lab_calcium = "Lab where the calcium measurement was collected"
		carbon_dioxide = "Carbon Dioxide (CO2)"
		test_lab_carbon_dioxide = "Lab where the carbon_dioxide measurement was collected"
		chloride = "Chloride"
		test_lab_chloride = "Lab where the chloride measurement was collected"
		cholesterol = "Cholesterol"
		test_lab_cholesterol = "Lab where the cholesterol measurement was collected"
		cholesterol_hdl = "HDL-Cholesterol"
		test_lab_cholesterol_hdl = "Lab where the cholesterol_hdl measurement was collected"
		cholesterol_ldl = "LDL-Cholesterol"
		test_lab_cholesterol_ldl = "Lab where the cholesterol_ldl measurement was collected"
		cholesterol_ldl_calculated = "LDL-Cholesterol (Calculated)"
		test_lab_chol_ldl_calc = ""
		cholesterol_non_hdl = ""
		test_lab_cholesterol_non_hdl = ""
		cortisol_am = "Serum Cortisol"
		test_lab_cortisol_am = "Lab where the cortisol_am measurement was collected"
		creatine_kinase = ""
		test_lab_creatine_kinase = ""
		creatine_phosphokinase = "Creatine Phosphokinase (CPK)"
		test_lab_creatine_phosphokinase = "Lab where the creatine_phosphokinase measurement was collected"
		creatinine = "Creatinine, Serum"
		test_lab_creatinine = "Lab where the creatinine measurement was collected"
		d_dimer = ""
		test_lab_d_dimer = ""
		eosinophil_absolute = "Absolute number of eosinophilis"
		test_lab_eosinophil_absolute = "Lab where the eosinophil_absolute measurement was collected"
		eosinophil_percent = "Percentage of eosinophilis"
		test_lab_eosinophil_percent = "Lab where the eosinophil_percent measurement was collected"
		erythrocyte_sedimentation_rate = "Erythrocyte Sedimentation Rate (ESR)"
		test_lab_erythro_sed_rate = ""
		estradiol = "Estradiol"
		test_lab_estradiol = "Lab where the estradiol measurement was collected"
		ferritin = "Ferritin"
		test_lab_ferritin = "Lab where the ferritin measurement was collected"
		fibrinogen = "Fibrinogen"
		test_lab_fibrinogen = "Lab where the fibrinogen measurement was collected"
		folate = "Folate"
		test_lab_folate = "Lab where the folate measurement was collected"
		gamma_glutamyl_transferase = "Gamma Glutamly Transferase (GGT)"
		test_lab_gamma_glut_transf = ""
		globulin = "Globulin"
		test_lab_globulin = "Lab where the globulin measurement was collected"
		glucose = "Glucose"
		test_lab_glucose = "Lab where the glucose measurement was collected"
		glucose_fasting = ""
		test_lab_glucose_fasting = ""
		hematocrit = "Hematocrit"
		test_lab_hematocrit = "Lab where the hematocrit measurement was collected"
		hemoglobin = "Hemoglobin"
		test_lab_hemoglobin = "Lab where the hemoglobin measurement was collected"
		hemoglobin_a1c = "Hemoglobin A1c (HBA1C)"
		test_lab_hemoglobin_a1c = "Lab where the hemoglobin_a1c measurement was collected"
		hepatitis_b_surface_antigen = "Hepatitis B Surface Antigen (HBSAG)"
		test_lab_hep_b_surface_antigen = ""
		hepatitis_c = ""
		test_lab_hepatitis_c = ""
		homocysteine = "Homocysteine"
		test_lab_homocysteine = "Lab where the homocysteine measurement was collected"
		hscrp = "C-reactive protein"
		test_lab_hscrp = "Lab where the hscrp measurement was collected"
		immature_granulocyte_absolute = ""
		test_lab_immature_gran_abs = ""
		immature_granulocyte_percent = ""
		test_lab_immature_gran_pct = ""
		immature_platelet_percent = ""
		test_lab_immature_platelet_pct = ""
		immature_reticulocyte_percent = ""
		test_lab_immature_retic_pct = ""
		inr = "International Normalized Ratio (INR)"
		test_lab_inr = "Lab where the INR measurement was collected"
		iron = "Iron"
		test_lab_iron = "Lab where the iron measurement was collected"
		ketones = ""
		test_lab_ketones = ""
		lactate_dehydrogenase = "Lactate Dehydrogenase (LDH)"
		test_lab_lactate_dehydrogenase = "Lab where the lactate_dehydrogenase measurement was collected"
		lymphocyte_absolute = "Absolute number of lymphocytes in a blood sample"
		test_lab_lymphocyte_absolute = "Lab where the lymphocyte_absolute measurement was collected"
		lymphocyte_percent = "Percentage of lymphocytes in a white blood cell count"
		test_lab_lymphocyte_percent = "Lab where the lymphocyte_percent measurement was collected"
		magnesium = "Magnesium"
		test_lab_magnesium = "Lab where the magnesium measurement was collected"
		mean_corpuscular_hemoglobin = ""
		test_lab_mean_corp_hemoglobin = ""
		mean_corpuscular_volume = "Mean Corpuscular Volume (MCV)"
		test_lab_mean_corpuscular_volume = "Lab where the mean_corpuscular_volume measurement was collected"
		mean_corp_hemo_conc = "Mean corpuscular hemoglobin (MCH)"
		test_lab_mean_corp_hemo_conc = ""
		mean_platelet_volume = "Mean Platelet Volume (MPV)"
		test_lab_mean_platelet_volume = "Lab where the mean_platelet_volume measurement was collected"
		monocyte_absolute = "Absolute number of monocytes in a blood sample"
		test_lab_monocyte_absolute = "Lab where the monocyte_absolute measurement was collected"
		monocyte_percent = "Percentage of monocytes in a white blood cell count"
		test_lab_monocyte_percent = "Lab where the monocyte_percent measurement was collected"
		neutrophil_absolute = "Absolute number of neutrophils in a blood sample"
		test_lab_neutrophil_absolute = "Lab where the neutrophil_absolute measurement was collected"
		neutrophil_percent = "Percentage of neutrophils in a white blood cell count"
		test_lab_neutrophil_percent = "Lab where the neutrophil_percent measurement was collected"
		nucleated_red_blood_cell = ""
		test_lab_nucleated_rbc = ""
		nucleated_red_blood_cell_auto = ""
		test_lab_nucleated_rbc_auto = ""
		partial_thromboplastin_time = "Partial Thromboplastin Time (PTT)"
		test_lab_partial_thrombo_time = ""
		ph = ""
		test_lab_ph = ""
		phosphorus = "Phosphorus"
		test_lab_phosphorus = "Lab where the phosphorus measurement was collected"
		platelets = "Platelets"
		test_lab_platelets = "Lab where the platelets measurement was collected"
		potassium = "Potassium"
		test_lab_potassium = "Lab where the potassium measurement was collected"
		prothrombin_time = ""
		test_lab_prothrombin_time = ""
		rapid_plasma_reagin = "Rapid Plasma Reagin (RGR)"
		test_lab_rapid_plasma_reagin = "Lab where the rapid_plasma_reagin measurement was collected"
		red_blood_cell_count = "Red Blood Cell Count (RBC)"
		test_lab_red_blood_cell_count = "Lab where the red_blood_cell_count measurement was collected"
		red_cell_distribution_width = "Red Cell Distribution Width (RDW)"
		test_lab_red_cell_dist_width = ""
		reticulocyte_absolute = "Absolute number of reticulocytes"
		test_lab_reticulocyte_absolute = "Lab where the reticulocyte_absolute measurement was collected"
		reticulocyte_hemoglobin = ""
		test_lab_reticulocyte_hemoglobin = ""
		reticulocyte_percent = ""
		test_lab_reticulocyte_percent = ""
		sodium = "Sodium"
		test_lab_sodium = "Lab where the sodium measurement was collected"
		testosterone_bioavailable = "Bioavailable Testosterone"
		test_lab_testosterone_bioavail = ""
		testosterone_total = "Total Testosterone"
		test_lab_testosterone_total = "Lab where the testosterone_total measurement was collected"
		thyroid_stimulating_hormone = "Thyroid Stimulating Hormone (TSH)"
		test_lab_thyroid_stim_hormone = ""
		thyroxine_free = "Free Thyroxine (T4)"
		test_lab_thyroxine_free = "Lab where the thyroxine_free measurement was collected"
		thyroxine_free_index = "Free Thyroxine (T4) Index"
		test_lab_thyroxine_free_index = "Lab where the thyroxine_free_index measurement was collected"
		thyroxine_total = "Total Thyroxine (T4)"
		test_lab_thyroxine_total = "Lab where the thyroxine_total measurement was collected"
		total_iron_binding_capacity = "TIBC: Total Iron Binding Capacity (Transferrin)"
		test_lab_total_iron_binding_cap = ""
		total_protein = "Total Protein"
		test_lab_total_protein = "Lab where the total_protein measurement was collected"
		total_volume = ""
		test_lab_total_volume = ""
		transferrin_saturation = ""
		test_lab_transferrin_saturation = ""
		triglycerides = "Triglycerides"
		test_lab_triglycerides = "Lab where the triglycerides measurement was collected"
		triiodothyronine_free = "T3: free (unbound) triiodothyronine"
		test_lab_triiodothyronine_free = "Lab where the triiodothyronine_free measurement was collected"
		triiodothyronine_total = "Total amount of T3 (triiodothyronine) in the blood, including both free and bound forms"
		test_lab_triiodothyronine_total = "Lab where the triiodothyronine_total measurement was collected"
		triiodothyronine_uptake = "T3 Uptake (triiodothyronine uptake)"
		test_lab_triiodothyronine_uptake = ""
		u24_cortisol = "URINE24 CORTISOL, FREE (ug/24hrs)"
		test_lab_u24_cortisol = "Lab where the u24_cortisol measurement was collected"
		u24_cortisol_creatinine_ratio = ""
		test_lab_u24_ccr = ""
		u24_creatinine = "Urine 24 Creatinine"
		test_lab_u24_creatinine = "Lab where the u24_creatinine measurement was collected"
		u24_urea = "URINE24 UREA (g/24hr)"
		test_lab_u24_urea = "Lab where the u24_urea measurement was collected"
		unclassified = ""
		test_lab_unclassified = ""
		uric_acid = "URIC ACID (mg/dL)"
		test_lab_uric_acid = "Lab where the uric_acid measurement was collected"
		u_bacteria = "URINE BACTERIA"
		test_lab_u_bacteria = "Lab where the u_bacteria measurement was collected"
		u_bilirubin = "URINE BILIRUBIN"
		test_lab_u_bilirubin = "Lab where the u_bilirubin measurement was collected"
		u_blood = "URINE BLOOD"
		test_lab_u_blood = "Lab where the u_blood measurement was collected"
		u_clarity = "URINE CLARITY"
		test_lab_u_clarity = "Lab where the u_clarity measurement was collected"
		u_color = "URINE COLOR"
		test_lab_u_color = "Lab where the u_color measurement was collected"
		u_cortisol = ""
		test_lab_u_cortisol = ""
		u_creatinine = ""
		test_lab_u_creatinine = ""
		u_epithelial_cells = "URINE SQUAM EPITH CELLS"
		test_lab_u_epithelial_cells = "Lab where the u_epithelial_cells measurement was collected"
		u_glucose = "URINE GLUCOSE"
		test_lab_u_glucose = "Lab where the u_glucose measurement was collected"
		u_ketones = "URINE KETONES"
		test_lab_u_ketones = "Lab where the u_ketones measurement was collected"
		u_leukocyte = "URINE LEUKOCYTES"
		test_lab_u_leukocyte = "Lab where the u_leukocyte measurement was collected"
		u_microalbumin = "URINE MICROALBUMIN (mg/dL)"
		test_lab_u_microalbumin = "Lab where the u_microalbumin measurement was collected"
		u_nitrite = "URINE NITRITES"
		test_lab_u_nitrite = "Lab where the u_nitrite measurement was collected"
		u_ph = "URINE PH"
		test_lab_u_ph = "Lab where the u_ph measurement was collected"
		u_protein = "URINE PROTEIN"
		test_lab_u_protein = "Lab where the u_protein measurement was collected"
		u_red_blood_cell = "URINE RBC"
		test_lab_u_red_blood_cell = "Lab where the u_red_blood_cell measurement was collected"
		u_specific_gravity = "Specific gravity of urine sample"
		test_lab_u_specific_gravity = "Lab where the u_specific_gravity measurement was collected"
		u_urobilinogen = "Concentration of urobilinogen in urine sample"
		test_lab_u_urobilinogen = "Lab where the u_urobilinogen measurement was collected"
		u_volume = ""
		test_lab_u_volume = ""
		u_white_blood_cell = "White Blood Cells in urine (WBC)"
		test_lab_u_white_blood_cell = "Lab where the u_white_blood_cell measurement was collected"
		vitamin_b12 = "Vitamin B12"
		test_lab_vitamin_b12 = "Lab where the vitamin_b12 measurement was collected"
		vitamin_d2 = "Vitamin D-25 H2 levels in the blood serum, measured in ng/mL"
		test_lab_vitamin_d2 = "Lab where the vitamin_d2 measurement was collected"
		vitamin_d3 = "Vitamin D-25 H3 levels in the blood serum, measured in ng/mL"
		test_lab_vitamin_d3 = "Lab where the vitamin_d3 measurement was collected"
		white_blood_cell_count = "White Blood Cell Count (WBC)"
		test_lab_white_blood_cell_count = "Lab where the white_blood_cell_count measurement was collected"
	;
RUN;


        DATA labs_blsaocparticipantlabs;
            SET WORK.IMPORT;
        RUN;
        