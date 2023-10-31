import pandas as pd

# Import the oc_pwvsphygmocor Table
path_to_data = "../data-csv/oc_pwvsphygmocor.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    