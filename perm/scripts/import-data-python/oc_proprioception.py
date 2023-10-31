import pandas as pd

# Import the oc_proprioception Table
path_to_data = "../data-csv/oc_proprioception.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    