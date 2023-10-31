import pandas as pd

# Import the oc_activityrelatedfatiguesc Table
path_to_data = "../data-csv/oc_activityrelatedfatiguesc.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    