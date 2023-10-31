import pandas as pd

# Import the oc_hvneurologicalassess Table
path_to_data = "../data-csv/oc_hvneurologicalassess.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    