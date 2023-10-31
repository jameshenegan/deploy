import pandas as pd

# Import the oc_parentallongevity Table
path_to_data = "../data-csv/oc_parentallongevity.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    