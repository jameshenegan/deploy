import pandas as pd

# Import the oc_handxray Table
path_to_data = "../data-csv/oc_handxray.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    