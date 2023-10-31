import pandas as pd

# Import the oc_weighthistory Table
path_to_data = "../data-csv/oc_weighthistory.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    