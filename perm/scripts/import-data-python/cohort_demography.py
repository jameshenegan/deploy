import pandas as pd

# Import the cohort_demography Table
path_to_data = "../data-csv/cohort_demography.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    