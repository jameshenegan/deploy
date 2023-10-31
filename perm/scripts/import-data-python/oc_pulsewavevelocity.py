import pandas as pd

# Import the oc_pulsewavevelocity Table
path_to_data = "../data-csv/oc_pulsewavevelocity.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    