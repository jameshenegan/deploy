import pandas as pd

# Import the oc_samples Table
path_to_data = "../data-csv/oc_samples.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    