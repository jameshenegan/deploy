import pandas as pd

# Import the oc_hearingandnoiseexposure Table
path_to_data = "../data-csv/oc_hearingandnoiseexposure.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    