import pandas as pd

# Load the dataset
df = pd.read_csv("PJM_Load_hourly.csv")

# Convert Datetime column to datetime format
df['Datetime'] = pd.to_datetime(df['Datetime'])

# Create new time-based features
df['hour'] = df['Datetime'].dt.hour
df['month'] = df['Datetime'].dt.month
df['weekday'] = df['Datetime'].dt.day_name()

# Rename column for simplicity
df.rename(columns={'PJM_Load_MW': 'demand'}, inplace=True)

# Save cleaned dataset
df.to_csv("cleaned_energy.csv", index=False)

print("Done")