import random
import string
import datetime

# Prepare realistic names and addresses
first_names_male = [
    "James", "John", "Robert", "Michael", "William", "David", "Richard", "Joseph",
    "Thomas", "Charles", "Christopher", "Daniel", "Matthew", "Anthony", "Donald",
    "Mark", "Paul", "Steven", "Andrew", "Kenneth", "Joshua", "Kevin", "Brian",
    "George", "Edward", "Ronald", "Timothy", "Jason", "Jeffrey", "Ryan", "Jacob",
    "Gary", "Nicholas", "Eric", "Jonathan", "Stephen", "Larry", "Justin", "Scott",
    "Brandon", "Benjamin", "Samuel", "Gregory", "Alexander", "Frank", "Patrick",
    "Raymond", "Jack", "Dennis", "Jerry", "Tyler", "Aaron", "Jose", "Adam", "Nathan",
    "Henry", "Zachary", "Douglas", "Peter", "Kyle", "Ethan", "Walter", "Noah",
    "Jeremy", "Christian", "Keith", "Roger", "Terry", "Austin", "Sean", "Gerald",
    "Carl", "Harold", "Dylan", "Arthur", "Lawrence", "Jordan", "Jesse", "Bryan",
    "Billy", "Joe", "Bruce", "Gabriel", "Logan", "Alan", "Juan", "Albert", "Willie",
    "Elijah", "Wayne", "Randy", "Vincent", "Mason", "Roy", "Ralph", "Bobby", "Russell"
]

first_names_female = [
    "Mary", "Patricia", "Jennifer", "Linda", "Elizabeth", "Barbara", "Susan", "Jessica",
    "Sarah", "Karen", "Nancy", "Lisa", "Margaret", "Betty", "Sandra", "Ashley",
    "Dorothy", "Kimberly", "Emily", "Donna", "Michelle", "Carol", "Amanda", "Melissa",
    "Deborah", "Stephanie", "Rebecca", "Laura", "Sharon", "Cynthia", "Kathleen",
    "Amy", "Shirley", "Angela", "Helen", "Anna", "Brenda", "Pamela", "Nicole",
    "Emma", "Samantha", "Katherine", "Christine", "Debra", "Rachel", "Catherine",
    "Carolyn", "Janet", "Ruth", "Maria", "Heather", "Diane", "Virginia", "Julie",
    "Joyce", "Victoria", "Olivia", "Kelly", "Christina", "Lauren", "Joan", "Evelyn",
    "Judith", "Megan", "Cheryl", "Andrea", "Hannah", "Martha", "Jacqueline", "Frances",
    "Gloria", "Ann", "Teresa", "Kathryn", "Sara", "Janice", "Jean", "Alice", "Madison",
    "Doris", "Abigail", "Julia", "Judy", "Grace", "Denise", "Amber", "Marilyn",
    "Beverly", "Danielle", "Theresa", "Sophia", "Marie", "Diana", "Brittany", "Natalie",
    "Isabella", "Charlotte", "Rose", "Alexis", "Kayla"
]

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

streets = [
    "Main St", "High St", "Maple Ave", "Oak St", "Pine St", "Cedar Ave", "Elm St", "Washington St",
    "Lake St", "Hill St", "Walnut St", "Sunset Blvd", "Broadway", "Center St", "Park Ave", "2nd St",
    "3rd St", "4th St", "1st St", "Market St", "Chestnut St", "Jefferson St", "Jackson St", "Lincoln St",
    "Church St", "Willow St", "River Rd", "Spruce St", "Franklin St", "Madison Ave"
]

password_hash = "$2a$10$zxOCTeyGsL3EiQIPmzHsTulf/sMgs.RlDNnr1/Vf/QHa2moNbwqS2"

def random_date(start_year=2010):
    start = datetime.datetime(start_year, 1, 1)
    end = datetime.datetime.now()
    delta = end - start
    random_days = random.randint(0, delta.days)
    return (start + datetime.timedelta(days=random_days)).strftime('%Y-%m-%d %H:%M:%S')

def random_dpi():
    return str(random.choice([1, 2, 3])) + ''.join(random.choices(string.digits, k=12))

def random_phone():
    return str(random.choice([3, 4, 5])) + ''.join(random.choices(string.digits, k=7))

def random_address():
    return f"{random.randint(100, 9999)} {random.choice(streets)}, {random.choice(['New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix', 'Dallas', 'Miami', 'San Francisco', 'Seattle', 'Boston'])}, USA"

output_file = "person_user_account_inserts.sql"

with open(output_file, "w", encoding="utf-8") as f:
    person_id = 1
    for _ in range(50000):
        if random.random() < 0.5:
            first_name = random.choice(first_names_male)
            gender = 'M'
        else:
            first_name = random.choice(first_names_female)
            gender = 'F'

        second_name = random.choice(first_names_male + first_names_female) if random.random() < 0.5 else ''
        last_name = random.choice(last_names)
        second_last_name = random.choice(last_names) if random.random() < 0.5 else ''
        dpi = random_dpi()
        nit = ''.join(random.choices(string.digits, k=10))
        address = random_address()
        phone = random_phone()
        email = f"{first_name.lower()}.{last_name.lower()}{random.randint(1,999)}@example.com"
        created_date = random_date()

        # Insert for person
        f.write(f"INSERT INTO person (person_id, DPI, NIT, first_name, second_name, last_name, second_last_name, address, phone_number, email_address, created_date, gender) VALUES "
                f"({person_id}, '{dpi}', '{nit}', '{first_name}', '{second_name}', '{last_name}', '{second_last_name}', '{address}', '{phone}', '{email}', '{created_date}', '{gender}');\n")

        # Insert for user_account
        username = f"{first_name}{last_name}{random.randint(1, 100)}"
        f.write(f"INSERT INTO user_account (user_account_id, user_name, password, person_id, created_date, is_active) VALUES "
                f"({person_id}, '{username}', '{password_hash}', {person_id}, '{created_date}', true);\n")

        person_id += 1

print(f"SQL file '{output_file}' with 50,000 person and 50,000 user_account records generated successfully.")
