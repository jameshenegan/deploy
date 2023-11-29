%let path_to_root_folder = ../data;
%let name_of_subfolder = @MIND_ARIC_NP;
%let dataset_name = apoe_new_p;
%let working_dataset_name = apoe_new_p;

LIBNAME mylib "&path_to_root_folder.\&name_of_subfolder";

DATA &working_dataset_name;
    SET mylib.&dataset_name;
RUN;
