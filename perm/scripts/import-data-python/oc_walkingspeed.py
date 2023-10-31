import pandas as pd

# Import the oc_walkingspeed Table
path_to_data = "../data-csv/oc_walkingspeed.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    