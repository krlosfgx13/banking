import random

# Lists of sample data
last_names = [
    "Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller", "Davis",
    "Rodriguez", "Martinez", "Hernandez", "Lopez", "Gonzalez", "Wilson", "Anderson",
    "Thomas", "Taylor", "Moore", "Jackson", "Martin", "Lee", "Perez", "Thompson",
    "White", "Harris", "Sanchez", "Clark", "Ramirez", "Lewis", "Robinson", "Walker",
    "Young", "Allen", "King", "Wright", "Scott", "Torres", "Nguyen", "Hill", "Flores",
    "Green", "Adams", "Nelson", "Baker", "Hall", "Rivera", "Campbell", "Mitchell",
    "Carter", "Roberts", "Evans", "Turner", "Diaz", "Parker", "Cruz", "Edwards",
    "Collins", "Reyes", "Stewart", "Morris", "Morales", "Murphy", "Cook", "Rogers",
    "Gutierrez", "Ortiz", "Morgan", "Cooper", "Peterson", "Bailey", "Reed", "Kelly",
    "Howard", "Ramos", "Kim", "Cox", "Ward", "Richardson", "Watson", "Brooks", "Chavez",
    "Wood", "James", "Bennett", "Gray", "Mendoza", "Ruiz", "Hughes", "Price", "Alvarez",
    "Castillo", "Sanders", "Patel", "Myers", "Long", "Ross", "Foster", "Jimenez"
]

first_names = [
    "James", "Mary", "John", "Patricia", "Robert", "Jennifer", "Michael", "Linda",
    "William", "Elizabeth", "David", "Barbara", "Richard", "Susan", "Joseph", "Jessica",
    "Thomas", "Sarah", "Charles", "Karen", "Christopher", "Nancy", "Daniel", "Lisa",
    "Matthew", "Betty", "Anthony", "Margaret", "Donald", "Sandra", "Mark", "Ashley",
    "Paul", "Kimberly", "Steven", "Emily", "Andrew", "Donna", "Joshua", "Michelle",
    "Kenneth", "Dorothy", "Kevin", "Carol", "Brian", "Amanda", "George", "Melissa",
    "Timothy", "Deborah", "Ronald", "Stephanie", "Edward", "Rebecca", "Jason", "Sharon",
    "Jeffrey", "Laura", "Ryan", "Cynthia", "Jacob", "Kathleen", "Gary", "Amy", "Nicholas",
    "Angela", "Eric", "Shirley", "Jonathan", "Anna", "Stephen", "Brenda", "Larry",
    "Pamela", "Justin", "Emma", "Scott", "Nicole", "Brandon", "Helen", "Frank", "Samantha",
    "Benjamin", "Katherine", "Gregory", "Christine", "Raymond", "Debra", "Samuel",
    "Rachel", "Patrick", "Catherine", "Alexander", "Carolyn", "Jack", "Janet", "Dennis", "Ruth"
]

positions = [
    "Software Engineer", "Data Analyst", "Project Manager", "Product Owner", "DevOps Engineer",
    "Database Administrator", "Systems Analyst", "Business Analyst", "Frontend Developer",
    "Backend Developer", "Full Stack Developer", "Cloud Architect", "Security Engineer",
    "QA Engineer", "Mobile Developer", "UI/UX Designer", "Network Administrator",
    "Technical Support Specialist", "IT Manager", "Data Scientist", "Scrum Master",
    "Solutions Architect", "Technical Writer", "Research Analyst", "SEO Specialist",
    "Marketing Manager", "Content Strategist", "Sales Executive", "Financial Analyst",
    "HR Manager", "Recruiter", "Training Coordinator", "Legal Advisor", "Compliance Officer",
    "Operations Manager", "Customer Support Lead", "Account Manager", "Event Coordinator",
    "Graphic Designer", "Media Planner", "Advertising Specialist", "Logistics Coordinator",
    "Supply Chain Manager", "Procurement Specialist", "Inventory Manager", "Risk Analyst",
    "Investment Analyst", "Actuary", "Public Relations Manager", "Brand Manager"
]

countries = [
    "United States", "Canada", "Mexico", "Brazil", "Argentina", "United Kingdom", "France",
    "Germany", "Spain", "Italy", "Portugal", "Netherlands", "Belgium", "Switzerland", "Austria",
    "Sweden", "Norway", "Denmark", "Finland", "Poland", "Czech Republic", "Hungary", "Romania",
    "Russia", "China", "Japan", "South Korea", "India", "Pakistan", "Bangladesh", "Australia",
    "New Zealand", "South Africa", "Egypt", "Morocco", "Nigeria", "Kenya", "Chile", "Peru",
    "Colombia", "Venezuela", "Saudi Arabia", "United Arab Emirates", "Israel", "Turkey", 
    "Thailand", "Vietnam", "Philippines", "Indonesia", "Malaysia", "Singapore"
]

# Output file
output_file = "employees_data.sql"

with open(output_file, "w", encoding="utf-8") as f:
    for _ in range(10000):
        ln = random.choice(last_names)
        fn = random.choice(first_names)
        pos = random.choice(positions)
        salary = round(random.uniform(30000, 150000), 2)
        country = random.choice(countries)
        
        f.write(
            f"INSERT INTO employees (last_name, first_name, position, salary, country) "
            f"VALUES ('{ln}', '{fn}', '{pos}', {salary}, '{country}');\n"
        )

print(f"SQL file '{output_file}' with 10,000 records generated successfully.")
