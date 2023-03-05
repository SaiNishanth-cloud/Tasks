import csv

# Open the CSV file
with open("./Downloads/network-traffic.csv", 'r') as file:

    # Create a CSV reader object
    reader = csv.reader(file)

    # Print specific columns
    for row in reader:
        print(row[2], row[3], row[4], row[6])  # This will print the first and third columns
