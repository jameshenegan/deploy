import pandas as pd

# Import the oc_kneexray Table
path_to_data = "../data-csv/oc_kneexray.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    