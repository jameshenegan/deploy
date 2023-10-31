import pandas as pd

# Import the oc_kneestrength Table
path_to_data = "../data-csv/oc_kneestrength.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    