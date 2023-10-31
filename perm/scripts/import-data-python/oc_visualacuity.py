import pandas as pd

# Import the oc_visualacuity Table
path_to_data = "../data-csv/oc_visualacuity.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    