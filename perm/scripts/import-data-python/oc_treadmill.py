import pandas as pd

# Import the oc_treadmill Table
path_to_data = "../data-csv/oc_treadmill.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    