import pandas as pd

# Import the oc_stripmeniscometry Table
path_to_data = "../data-csv/oc_stripmeniscometry.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    