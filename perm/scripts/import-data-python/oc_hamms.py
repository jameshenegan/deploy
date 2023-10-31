import pandas as pd

# Import the oc_hamms Table
path_to_data = "../data-csv/oc_hamms.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    