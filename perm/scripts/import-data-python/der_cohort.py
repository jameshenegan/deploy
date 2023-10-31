import pandas as pd

# Import the der_cohort Table
path_to_data = "../data-csv/der_cohort.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    