import pandas as pd

# Import the oc_generalinterview Table
path_to_data = "../data-csv/oc_generalinterview.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    