import pandas as pd

# Import the cohort_cohort Table
path_to_data = "../data-csv/cohort_cohort.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    