import pandas as pd

# Import the der_cohort_id Table
path_to_data = "../data-csv/der_cohort_id.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    