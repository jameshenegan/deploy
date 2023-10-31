import pandas as pd

# Import the oc_coreneuropsychtestingn Table
path_to_data = "../data-csv/oc_coreneuropsychtestingn.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    