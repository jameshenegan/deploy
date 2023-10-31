import pandas as pd

# Import the oc_skinbiopsyeligibility Table
path_to_data = "../data-csv/oc_skinbiopsyeligibility.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    