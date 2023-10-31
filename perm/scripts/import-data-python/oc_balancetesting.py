import pandas as pd

# Import the oc_balancetesting Table
path_to_data = "../data-csv/oc_balancetesting.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    