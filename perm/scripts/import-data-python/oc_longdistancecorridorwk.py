import pandas as pd

# Import the oc_longdistancecorridorwk Table
path_to_data = "../data-csv/oc_longdistancecorridorwk.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    