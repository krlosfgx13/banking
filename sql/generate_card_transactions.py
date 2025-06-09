import random
from datetime import datetime, timedelta

# Define the company categories and their companies
categories = {
    "Finance": ["PayPal", "Goldman Sachs", "Visa", "Mastercard"],
    "Restaurant": ["McDonalds", "KFC", "Subway", "Dominos Pizza"],
    "Healthcare": ["Johnson & Johnson", "Pfizer", "Moderna", "UnitedHealth Group"],
    "Education": ["Coursera", "Udemy", "Khan Academy", "Pearson"],
    "Transportation": ["Uber", "Lyft", "FedEx", "DHL"],
    "Retailer": ["Walmart", "Costco", "Target", "Best Buy"]
}

# Date range for transactions
start_date = datetime(2010, 1, 1)
end_date = datetime.now()

def random_date(start, end):
    return (start + timedelta(days=random.randint(0, (end - start).days))).strftime('%Y-%m-%d %H:%M:%S')

# Output file
output_file = "insert_card_transactions_100k.sql"

with open(output_file, "w") as f:
    for _ in range(100000):
        category = random.choice(list(categories.keys()))
        company = random.choice(categories[category])
        amount = round(random.uniform(1.00, 1000.00), 2)
        card_id = random.randint(45, 66)
        date = random_date(start_date, end_date)
        sql = f"INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('{category}', '{company}', {amount}, {card_id}, '{date}');\n"
        f.write(sql)

print(f"✅ SQL file '{output_file}' generated with 100,000 records.")