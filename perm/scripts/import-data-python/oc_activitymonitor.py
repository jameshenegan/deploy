import pandas as pd

# Import the oc_activitymonitor Table
path_to_data = "../data-csv/oc_activitymonitor.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    