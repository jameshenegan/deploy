import pandas as pd

# Import the oc_senseofdirection Table
path_to_data = "../data-csv/oc_senseofdirection.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    