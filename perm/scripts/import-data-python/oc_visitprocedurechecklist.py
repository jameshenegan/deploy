import pandas as pd

# Import the oc_visitprocedurechecklist Table
path_to_data = "../data-csv/oc_visitprocedurechecklist.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    