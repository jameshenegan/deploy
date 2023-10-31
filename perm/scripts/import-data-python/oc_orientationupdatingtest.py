import pandas as pd

# Import the oc_orientationupdatingtest Table
path_to_data = "../data-csv/oc_orientationupdatingtest.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    