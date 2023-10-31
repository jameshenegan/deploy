import pandas as pd

# Import the oc_tonguephoto Table
path_to_data = "../data-csv/oc_tonguephoto.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    