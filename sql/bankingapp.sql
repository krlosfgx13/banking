create table card_type(
card_type_id serial primary key not null,
card_type_name varchar(32) not null
);

create table card_network(
card_network_id serial primary key not null,
card_network_name varchar(32) not null
);

create table reward_program(
reward_program_id serial primary key not null,
reward_program_name varchar(32) not null
);

create table card_category(
card_category_id serial primary key not null,
card_category_name varchar(32) not null
);

create table bank_account_type(
bank_account_type_id serial primary key not null,
bank_account_type_name varchar(32) not null
);

create table bank_account_category(
bank_account_category_id serial primary key not null,
bank_account_category_name varchar(32) not null,
interest_rate numeric(6,2) null,
bank_account_type_id int not null,

constraint fk_bank_account_category_bank_account_type
foreign key(bank_account_type_id) references bank_account_type(bank_account_type_id)
);

create table person(
person_id serial primary key not null,
DPI varchar(32) not null, 
NIT varchar(32) not null, 
first_name varchar(32) not null,
second_name varchar(32) not null,
last_name varchar(32) not null,
second_last_name varchar(32) not null,
address varchar(256) not null,
phone_number varchar(32) not null,
email_address varchar(128) not null,
created_date timestamp not null default current_timestamp,
gender varchar(2) null check (gender in ('M', 'F'))
);

create table card(
card_id serial primary key not null,
card_number varchar(20) not null,
card_name varchar(32) not null,
person_id int not null,
expiration_date DATE NOT NULL,
CVV smallint NOT NULL,
card_network_id int not null,
card_type_id int not null,
card_category_id int not null,
pin smallint not null,
cutoff_date date null,
payment_date date null,
credit_limit numeric(8,2) null,
credit_used numeric(8,2) null,
reward_program_id int null,
reward_amount int null,
is_active boolean not null default true,

constraint fk_card_person foreign key(person_id) references person(person_id),
constraint fk_card_card_network foreign key(card_network_id) references card_network(card_network_id),
constraint fk_card_card_type foreign key(card_type_id) references card_type(card_type_id),
constraint fk_card_card_category foreign key(card_category_id) references card_category(card_category_id),
constraint fk_card_reward_program foreign key(reward_program_id) references reward_program(reward_program_id)
);


create table card_transaction(
card_transaction_id serial primary key not null,
company_name varchar(256) not null,
company_category varchar(256) not null,
transaction_amount numeric(8,2) not null,
card_id int not null,
transaction_date timestamp not null default current_timestamp,

constraint fk_card_transaction_card foreign key (card_id) references card(card_id)
);

create table user_account(
user_account_id serial primary key not null,
user_name varchar(32) not null,
password varchar(256) not null,
person_id int not null,
created_date timestamp not null default current_timestamp,
is_active boolean not null default false,

constraint fk_user_account_person foreign key(person_id) references person(person_id),
constraint uq_user_account_user_id unique(user_account_id),
constraint uq_user_account_person_id unique(person_id)
);

create table bank_account(
bank_account_id serial primary key not null,
bank_account_number varchar(16) not null,
balance numeric(10,2) not null,
card_id int null,
bank_account_type_id int not null,
bank_account_category_id int not null,
person_id int not null,
created_date timestamp not null default current_timestamp,
is_active boolean not null default true,

constraint fk_bank_account_card foreign key(card_id) references card(card_id),
constraint fk_bank_account_bank_account_type foreign key(bank_account_type_id) 
references bank_account_type(bank_account_type_id),
constraint fk_bank_acount_bank_account_category foreign key(bank_account_category_id) 
references bank_account_category(bank_account_category_id),
constraint fk_bank_account_person foreign key(person_id) references person(person_id)
);


--check database names
--select datname from pg_database; 

--check roles
--SELECT * FROM pg_roles WHERE rolname = 'dbuser';










