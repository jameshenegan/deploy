import pandas as pd

# Import the oc_biodexkneestrength Table
path_to_data = "../data-csv/oc_biodexkneestrength.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    