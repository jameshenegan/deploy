import pandas as pd

# Import the oc_smelltest Table
path_to_data = "../data-csv/oc_smelltest.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    