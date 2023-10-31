clear
import delimited "../data-csv/labs_blsaocparticipantlabs.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable alanine_aminotransferase "Alanine aminotransferase enzyme sample measurement"

label variable test_lab_alanine_aminotransf "Lab where the alanine_aminotransferase measurement was collected"

label variable albumin "Albumin sample measurement"

label variable test_lab_albumin "Lab where the albumin measurement was collected"

label variable alkaline_phosphotase "Alkaline phosphatase enzyme sample measurement"

label variable test_lab_alkaline_phosphotase "Lab where the alkaline_phosphotase measurement was collected"

label variable amylase "Amylase enzyme sample measurement"

label variable test_lab_amylase "Lab where the amylase measurement was collected"

label variable anion_gap "Anion Gap"

label variable test_lab_anion_gap "Lab where the anion_gap measurement was collected"

label variable aspartate_aminotransferase "AST: Aspartate aminotransferase (also known as SGOT: Serum Glutamic Oxaloacetic Transaminase)"

label variable test_lab_aspart_aminotransf "Lab where the aspartate_aminotransferase measurement was collected"

label variable a_g_ratio "Albumin-to-globulin (A/G) Ratio"

label variable test_lab_a_g_ratio "Lab where the a_g_ratio measurement was collected"

label variable basophil_absolute "Absolute number of basophilis"

label variable test_lab_basophil_absolute "Lab where the basophil_absolute measurement was collected"

label variable basophil_percent "Basophils percentage"

label variable test_lab_basophil_percent "Lab where the basophil_percent measurement was collected"

label variable bilirubin_direct "Direct Bilirubin"

label variable test_lab_bilirubin_direct "Lab where the bilirubin_direct measurement was collected"

label variable bilirubin_total "Total Bilirubin"

label variable test_lab_bilirubin_total "Lab where the bilirubin_total measurement was collected"

label variable blood_urea_nitrogen "Blood Urea Nitrogen (BUN)"

label variable test_lab_blood_urea_nitrogen "Lab where the blood_urea_nitrogen measurement was collected"

label variable bun_creatinine_ratio "BUN/Creatinine Ratio"

label variable test_lab_bun_creatinine_ratio "Lab where the bun_creatinine_ratio measurement was collected"

label variable calcium "Calcium"

label variable test_lab_calcium "Lab where the calcium measurement was collected"

label variable carbon_dioxide "Carbon Dioxide (CO2)"

label variable test_lab_carbon_dioxide "Lab where the carbon_dioxide measurement was collected"

label variable chloride "Chloride"

label variable test_lab_chloride "Lab where the chloride measurement was collected"

label variable cholesterol "Cholesterol"

label variable test_lab_cholesterol "Lab where the cholesterol measurement was collected"

label variable cholesterol_hdl "HDL-Cholesterol"

label variable test_lab_cholesterol_hdl "Lab where the cholesterol_hdl measurement was collected"

label variable cholesterol_ldl "LDL-Cholesterol"

label variable test_lab_cholesterol_ldl "Lab where the cholesterol_ldl measurement was collected"

label variable cholesterol_ldl_calculated "LDL-Cholesterol (Calculated)"

label variable test_lab_chol_ldl_calc ""

label variable cholesterol_non_hdl ""

label variable test_lab_cholesterol_non_hdl ""

label variable cortisol_am "Serum Cortisol"

label variable test_lab_cortisol_am "Lab where the cortisol_am measurement was collected"

label variable creatine_kinase ""

label variable test_lab_creatine_kinase ""

label variable creatine_phosphokinase "Creatine Phosphokinase (CPK)"

label variable test_lab_creatine_phosphokinase "Lab where the creatine_phosphokinase measurement was collected"

label variable creatinine "Creatinine, Serum"

label variable test_lab_creatinine "Lab where the creatinine measurement was collected"

label variable d_dimer ""

label variable test_lab_d_dimer ""

label variable eosinophil_absolute "Absolute number of eosinophilis"

label variable test_lab_eosinophil_absolute "Lab where the eosinophil_absolute measurement was collected"

label variable eosinophil_percent "Percentage of eosinophilis"

label variable test_lab_eosinophil_percent "Lab where the eosinophil_percent measurement was collected"

label variable erythrocyte_sedimentation_rate "Erythrocyte Sedimentation Rate (ESR)"

label variable test_lab_erythro_sed_rate ""

label variable estradiol "Estradiol"

label variable test_lab_estradiol "Lab where the estradiol measurement was collected"

label variable ferritin "Ferritin"

label variable test_lab_ferritin "Lab where the ferritin measurement was collected"

label variable fibrinogen "Fibrinogen"

label variable test_lab_fibrinogen "Lab where the fibrinogen measurement was collected"

label variable folate "Folate"

label variable test_lab_folate "Lab where the folate measurement was collected"

label variable gamma_glutamyl_transferase "Gamma Glutamly Transferase (GGT)"

label variable test_lab_gamma_glut_transf ""

label variable globulin "Globulin"

label variable test_lab_globulin "Lab where the globulin measurement was collected"

label variable glucose "Glucose"

label variable test_lab_glucose "Lab where the glucose measurement was collected"

label variable glucose_fasting ""

label variable test_lab_glucose_fasting ""

label variable hematocrit "Hematocrit"

label variable test_lab_hematocrit "Lab where the hematocrit measurement was collected"

label variable hemoglobin "Hemoglobin"

label variable test_lab_hemoglobin "Lab where the hemoglobin measurement was collected"

label variable hemoglobin_a1c "Hemoglobin A1c (HBA1C)"

label variable test_lab_hemoglobin_a1c "Lab where the hemoglobin_a1c measurement was collected"

label variable hepatitis_b_surface_antigen "Hepatitis B Surface Antigen (HBSAG)"

label variable test_lab_hep_b_surface_antigen ""

label variable hepatitis_c ""

label variable test_lab_hepatitis_c ""

label variable homocysteine "Homocysteine"

label variable test_lab_homocysteine "Lab where the homocysteine measurement was collected"

label variable hscrp "C-reactive protein"

label variable test_lab_hscrp "Lab where the hscrp measurement was collected"

label variable immature_granulocyte_absolute ""

label variable test_lab_immature_gran_abs ""

label variable immature_granulocyte_percent ""

label variable test_lab_immature_gran_pct ""

label variable immature_platelet_percent ""

label variable test_lab_immature_platelet_pct ""

label variable immature_reticulocyte_percent ""

label variable test_lab_immature_retic_pct ""

label variable inr "International Normalized Ratio (INR)"

label variable test_lab_inr "Lab where the INR measurement was collected"

label variable iron "Iron"

label variable test_lab_iron "Lab where the iron measurement was collected"

label variable ketones ""

label variable test_lab_ketones ""

label variable lactate_dehydrogenase "Lactate Dehydrogenase (LDH)"

label variable test_lab_lactate_dehydrogenase "Lab where the lactate_dehydrogenase measurement was collected"

label variable lymphocyte_absolute "Absolute number of lymphocytes in a blood sample"

label variable test_lab_lymphocyte_absolute "Lab where the lymphocyte_absolute measurement was collected"

label variable lymphocyte_percent "Percentage of lymphocytes in a white blood cell count"

label variable test_lab_lymphocyte_percent "Lab where the lymphocyte_percent measurement was collected"

label variable magnesium "Magnesium"

label variable test_lab_magnesium "Lab where the magnesium measurement was collected"

label variable mean_corpuscular_hemoglobin ""

label variable test_lab_mean_corp_hemoglobin ""

label variable mean_corpuscular_volume "Mean Corpuscular Volume (MCV)"

label variable test_lab_mean_corpuscular_volume "Lab where the mean_corpuscular_volume measurement was collected"

label variable mean_corp_hemo_conc "Mean corpuscular hemoglobin (MCH)"

label variable test_lab_mean_corp_hemo_conc ""

label variable mean_platelet_volume "Mean Platelet Volume (MPV)"

label variable test_lab_mean_platelet_volume "Lab where the mean_platelet_volume measurement was collected"

label variable monocyte_absolute "Absolute number of monocytes in a blood sample"

label variable test_lab_monocyte_absolute "Lab where the monocyte_absolute measurement was collected"

label variable monocyte_percent "Percentage of monocytes in a white blood cell count"

label variable test_lab_monocyte_percent "Lab where the monocyte_percent measurement was collected"

label variable neutrophil_absolute "Absolute number of neutrophils in a blood sample"

label variable test_lab_neutrophil_absolute "Lab where the neutrophil_absolute measurement was collected"

label variable neutrophil_percent "Percentage of neutrophils in a white blood cell count"

label variable test_lab_neutrophil_percent "Lab where the neutrophil_percent measurement was collected"

label variable nucleated_red_blood_cell ""

label variable test_lab_nucleated_rbc ""

label variable nucleated_red_blood_cell_auto ""

label variable test_lab_nucleated_rbc_auto ""

label variable partial_thromboplastin_time "Partial Thromboplastin Time (PTT)"

label variable test_lab_partial_thrombo_time ""

label variable ph ""

label variable test_lab_ph ""

label variable phosphorus "Phosphorus"

label variable test_lab_phosphorus "Lab where the phosphorus measurement was collected"

label variable platelets "Platelets"

label variable test_lab_platelets "Lab where the platelets measurement was collected"

label variable potassium "Potassium"

label variable test_lab_potassium "Lab where the potassium measurement was collected"

label variable prothrombin_time ""

label variable test_lab_prothrombin_time ""

label variable rapid_plasma_reagin "Rapid Plasma Reagin (RGR)"

label variable test_lab_rapid_plasma_reagin "Lab where the rapid_plasma_reagin measurement was collected"

label variable red_blood_cell_count "Red Blood Cell Count (RBC)"

label variable test_lab_red_blood_cell_count "Lab where the red_blood_cell_count measurement was collected"

label variable red_cell_distribution_width "Red Cell Distribution Width (RDW)"

label variable test_lab_red_cell_dist_width ""

label variable reticulocyte_absolute "Absolute number of reticulocytes"

label variable test_lab_reticulocyte_absolute "Lab where the reticulocyte_absolute measurement was collected"

label variable reticulocyte_hemoglobin ""

label variable test_lab_reticulocyte_hemoglobin ""

label variable reticulocyte_percent ""

label variable test_lab_reticulocyte_percent ""

label variable sodium "Sodium"

label variable test_lab_sodium "Lab where the sodium measurement was collected"

label variable testosterone_bioavailable "Bioavailable Testosterone"

label variable test_lab_testosterone_bioavail ""

label variable testosterone_total "Total Testosterone"

label variable test_lab_testosterone_total "Lab where the testosterone_total measurement was collected"

label variable thyroid_stimulating_hormone "Thyroid Stimulating Hormone (TSH)"

label variable test_lab_thyroid_stim_hormone ""

label variable thyroxine_free "Free Thyroxine (T4)"

label variable test_lab_thyroxine_free "Lab where the thyroxine_free measurement was collected"

label variable thyroxine_free_index "Free Thyroxine (T4) Index"

label variable test_lab_thyroxine_free_index "Lab where the thyroxine_free_index measurement was collected"

label variable thyroxine_total "Total Thyroxine (T4)"

label variable test_lab_thyroxine_total "Lab where the thyroxine_total measurement was collected"

label variable total_iron_binding_capacity "TIBC: Total Iron Binding Capacity (Transferrin)"

label variable test_lab_total_iron_binding_cap ""

label variable total_protein "Total Protein"

label variable test_lab_total_protein "Lab where the total_protein measurement was collected"

label variable total_volume ""

label variable test_lab_total_volume ""

label variable transferrin_saturation ""

label variable test_lab_transferrin_saturation ""

label variable triglycerides "Triglycerides"

label variable test_lab_triglycerides "Lab where the triglycerides measurement was collected"

label variable triiodothyronine_free "T3: free (unbound) triiodothyronine"

label variable test_lab_triiodothyronine_free "Lab where the triiodothyronine_free measurement was collected"

label variable triiodothyronine_total "Total amount of T3 (triiodothyronine) in the blood, including both free and bound forms"

label variable test_lab_triiodothyronine_total "Lab where the triiodothyronine_total measurement was collected"

label variable triiodothyronine_uptake "T3 Uptake (triiodothyronine uptake)"

label variable test_lab_triiodothyronine_uptake ""

label variable u24_cortisol "URINE24 CORTISOL, FREE (ug/24hrs)"

label variable test_lab_u24_cortisol "Lab where the u24_cortisol measurement was collected"

label variable u24_cortisol_creatinine_ratio ""

label variable test_lab_u24_ccr ""

label variable u24_creatinine "Urine 24 Creatinine"

label variable test_lab_u24_creatinine "Lab where the u24_creatinine measurement was collected"

label variable u24_urea "URINE24 UREA (g/24hr)"

label variable test_lab_u24_urea "Lab where the u24_urea measurement was collected"

label variable unclassified ""

label variable test_lab_unclassified ""

label variable uric_acid "URIC ACID (mg/dL)"

label variable test_lab_uric_acid "Lab where the uric_acid measurement was collected"

label variable u_bacteria "URINE BACTERIA"

label variable test_lab_u_bacteria "Lab where the u_bacteria measurement was collected"

label variable u_bilirubin "URINE BILIRUBIN"

label variable test_lab_u_bilirubin "Lab where the u_bilirubin measurement was collected"

label variable u_blood "URINE BLOOD"

label variable test_lab_u_blood "Lab where the u_blood measurement was collected"

label variable u_clarity "URINE CLARITY"

label variable test_lab_u_clarity "Lab where the u_clarity measurement was collected"

label variable u_color "URINE COLOR"

label variable test_lab_u_color "Lab where the u_color measurement was collected"

label variable u_cortisol ""

label variable test_lab_u_cortisol ""

label variable u_creatinine ""

label variable test_lab_u_creatinine ""

label variable u_epithelial_cells "URINE SQUAM EPITH CELLS"

label variable test_lab_u_epithelial_cells "Lab where the u_epithelial_cells measurement was collected"

label variable u_glucose "URINE GLUCOSE"

label variable test_lab_u_glucose "Lab where the u_glucose measurement was collected"

label variable u_ketones "URINE KETONES"

label variable test_lab_u_ketones "Lab where the u_ketones measurement was collected"

label variable u_leukocyte "URINE LEUKOCYTES"

label variable test_lab_u_leukocyte "Lab where the u_leukocyte measurement was collected"

label variable u_microalbumin "URINE MICROALBUMIN (mg/dL)"

label variable test_lab_u_microalbumin "Lab where the u_microalbumin measurement was collected"

label variable u_nitrite "URINE NITRITES"

label variable test_lab_u_nitrite "Lab where the u_nitrite measurement was collected"

label variable u_ph "URINE PH"

label variable test_lab_u_ph "Lab where the u_ph measurement was collected"

label variable u_protein "URINE PROTEIN"

label variable test_lab_u_protein "Lab where the u_protein measurement was collected"

label variable u_red_blood_cell "URINE RBC"

label variable test_lab_u_red_blood_cell "Lab where the u_red_blood_cell measurement was collected"

label variable u_specific_gravity "Specific gravity of urine sample"

label variable test_lab_u_specific_gravity "Lab where the u_specific_gravity measurement was collected"

label variable u_urobilinogen "Concentration of urobilinogen in urine sample"

label variable test_lab_u_urobilinogen "Lab where the u_urobilinogen measurement was collected"

label variable u_volume ""

label variable test_lab_u_volume ""

label variable u_white_blood_cell "White Blood Cells in urine (WBC)"

label variable test_lab_u_white_blood_cell "Lab where the u_white_blood_cell measurement was collected"

label variable vitamin_b12 "Vitamin B12"

label variable test_lab_vitamin_b12 "Lab where the vitamin_b12 measurement was collected"

label variable vitamin_d2 "Vitamin D-25 H2 levels in the blood serum, measured in ng/mL"

label variable test_lab_vitamin_d2 "Lab where the vitamin_d2 measurement was collected"

label variable vitamin_d3 "Vitamin D-25 H3 levels in the blood serum, measured in ng/mL"

label variable test_lab_vitamin_d3 "Lab where the vitamin_d3 measurement was collected"

label variable white_blood_cell_count "White Blood Cell Count (WBC)"

label variable test_lab_white_blood_cell_count "Lab where the white_blood_cell_count measurement was collected"

