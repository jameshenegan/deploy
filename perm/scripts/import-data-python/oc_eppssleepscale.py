import pandas as pd

# Import the oc_eppssleepscale Table
path_to_data = "../data-csv/oc_eppssleepscale.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    