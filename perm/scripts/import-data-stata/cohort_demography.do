clear
import delimited "../data-csv/cohort_demography.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable age_at_screening_visit "Age at Screening Visit"

label variable age_units "Age Units at Screening Visit"
label define _TIDBcWzlYX 1 "Years"
label values age_units _TIDBcWzlYX

label variable sex "Sex given at Screening Visit"

label variable race "Race given at Screening Visit"
label define _CCFBb0WjDy 8 "Race: Unknown or not reported" 6 "Race: White" 3 "Race: Black or African American" 1 "Race: Hawaiian or Pacific Islander" 5 "Race: Hispanic" 2 "Race: American Indian or Alaskan Native" 9 "Race: Asian" 7 "Race: More than one race"
label values race _CCFBb0WjDy

label variable ethnicity "Ethnicity given at Screening Visit"
label define _eifimElo7z 0 "Not reported / Unknown" 1 "Not Hispanic or Latino" 2 "Hispanic or Latino"
label values ethnicity _eifimElo7z

