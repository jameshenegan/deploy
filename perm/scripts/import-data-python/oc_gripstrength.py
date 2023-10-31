import pandas as pd

# Import the oc_gripstrength Table
path_to_data = "../data-csv/oc_gripstrength.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    