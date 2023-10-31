import pandas as pd

# Import the oc_kneeextensorpower Table
path_to_data = "../data-csv/oc_kneeextensorpower.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    