--BANKINGDB: INSERT DATA
--person
INSERT INTO person (DPI, NIT, first_name, second_name, last_name, second_last_name, address, phone_number, email_address) VALUES
('3234567890123', '98765432', 'Juan', 'Carlos', 'Gomez', 'Fernandez', '123 Main St, City A', '55123456', 'juan.gomez@example.com'),
('3345678901234', '87654321', 'Maria', 'Elena', 'Lopez', 'Martinez', '456 Elm St, City B', '55234567', 'maria.lopez@example.com'),
('3456789012345', '76543210', 'Pedro', 'Luis', 'Hernandez', 'Santos', '789 Oak St, City C', '55345678', 'pedro.hernandez@example.com'),
('3567890123456', '65432109', 'Ana', 'Isabel', 'Rodriguez', 'Ramirez', '101 Pine St, City D', '55456789', 'ana.rodriguez@example.com'),
('3678901234567', '54321098', 'Carlos', 'Alberto', 'Perez', 'Gonzalez', '202 Cedar St, City E', '55567890', 'carlos.perez@example.com'),
('3789012345678', '43210987', 'Sofia', 'Beatriz', 'Morales', 'Diaz', '303 Birch St, City F', '55678901', 'sofia.morales@example.com'),
('3890123456789', '32109876', 'Luis', 'Eduardo', 'Fernandez', 'Castillo', '404 Maple St, City G', '55789012', 'luis.fernandez@example.com'),
('3901234567890', '21098765', 'Gabriela', 'Teresa', 'Gutierrez', 'Herrera', '505 Spruce St, City H', '55890123', 'gabriela.gutierrez@example.com'),
('3012345678901', '10987654', 'Ricardo', 'Jose', 'Castro', 'Rojas', '606 Walnut St, City I', '55901234', 'ricardo.castro@example.com'),
('3123456789012', '09876543', 'Patricia', 'Monica', 'Ortega', 'Vega', '707 Cherry St, City J', '55012345', 'patricia.ortega@example.com'),
('3122334455667', '88776655', 'Hector', 'Felipe', 'Santos', 'Mendez', '808 Poplar St, City K', '55112233', 'hector.santos@example.com'),
('3233445566778', '77665544', 'Veronica', 'Liliana', 'Reyes', 'Jimenez', '909 Dogwood St, City L', '55223344', 'veronica.reyes@example.com'),
('3344556677889', '66554433', 'Oscar', 'Raul', 'Vasquez', 'Cabrera', '111 Magnolia St, City M', '55334455', 'oscar.vasquez@example.com'),
('3455667788990', '55443322', 'Camila', 'Renata', 'Mejia', 'Espinoza', '222 Linden St, City N', '55445566', 'camila.mejia@example.com'),
('3566778899001', '44332211', 'Andres', 'Javier', 'Chavez', 'Paz', '333 Willow St, City O', '55556677', 'andres.chavez@example.com'),
('3677889900112', '33221100', 'Natalia', 'Rosario', 'Munoz', 'Aguilar', '444 Aspen St, City P', '55667788', 'natalia.munoz@example.com'),
('3788990011223', '22110099', 'Emilio', 'Martin', 'Ramos', 'Torres', '555 Hickory St, City Q', '55778899', 'emilio.ramos@example.com'),
('3899001122334', '11009988', 'Paola', 'Estefania', 'Salazar', 'Mora', '666 Chestnut St, City R', '55889900', 'paola.salazar@example.com'),
('3900112233445', '00998877', 'Julian', 'Miguel', 'Pineda', 'Flores', '777 Sycamore St, City S', '55990011', 'julian.pineda@example.com'),
('3011223344556', '99887766', 'Fernanda', 'Lucia', 'Cordero', 'Navarro', '888 Beech St, City T', '55001122', 'fernanda.cordero@example.com'),
('3122334455667', '88776655', 'Rodrigo', 'Esteban', 'Guerra', 'Cortes', '999 Fir St, City U', '55112233', 'rodrigo.guerra@example.com'),
('3233445566778', '77665544', 'Vanessa', 'Marcela', 'Leal', 'Sosa', '111 Cedar St, City V', '55223344', 'vanessa.leal@example.com'),
('3344556677889', '66554433', 'Matias', 'Ivan', 'Barrios', 'Cuevas', '222 Redwood St, City W', '55334455', 'matias.barrios@example.com'),
('3455667788990', '55443322', 'Lorena', 'Andrea', 'Calderon', 'Peña', '333 Olive St, City X', '55445566', 'lorena.calderon@example.com'),
('3566778899001', '44332211', 'Victor', 'Gustavo', 'Carrillo', 'Escobar', '444 Maple St, City Y', '55556677', 'victor.carrillo@example.com'),
('3677889900112', '33221100', 'Diana', 'Alejandra', 'Rios', 'Maldonado', '555 Pine St, City Z', '55667788', 'diana.rios@example.com'),
('3788990011223', '22110099', 'Fabian', 'Orlando', 'Suarez', 'Guzman', '666 Birch St, City AA', '55778899', 'fabian.suarez@example.com'),
('3899001122334', '11009988', 'Mariana', 'Isidora', 'Silva', 'Valencia', '777 Oak St, City BB', '55889900', 'mariana.silva@example.com'),
('3900112233445', '00998877', 'Alberto', 'Eduardo', 'Mendez', 'Hidalgo', '888 Spruce St, City CC', '55990011', 'alberto.mendez@example.com'),
('3011223344556', '99887766', 'Rosa', 'Cecilia', 'Herrera', 'Acosta', '999 Dogwood St, City DD', '55001122', 'rosa.herrera@example.com'),
('3122334455667', '88776655', 'Francisco', 'David', 'Navarro', 'Meza', '111 Elm St, City EE', '55112233', 'francisco.navarro@example.com');

--card network
INSERT INTO card_network(card_network_name) VALUES ('Visa'), ('Mastercard');

--card type
INSERT INTO card_type(card_type_name) VALUES ('Debit'), ('Credit');

--card category
INSERT INTO card_category(card_category_name) VALUES ('Classic'), ('Gold'), ('Platinum'), ('Black');

--reward program
insert into reward_program(reward_program_name) values('Points'), ('Miles');


--card
INSERT INTO card (card_number, card_name, person_id, expiration_date, CVV, card_network_id, card_type_id, card_category_id, pin, cutoff_date, payment_date, credit_limit, credit_used, reward_program_id, reward_amount, is_active) 
VALUES
('5650981730245348', 'Juan Gomez', 1, '2026-10-01', 234, 2, 2, 3, 2345, 10, 5, 7500.00, 1200.00, 2, 3000, TRUE),
('5123456789012345', 'Maria Lopez', 2, '2026-10-01', 234, 2, 2, 3, 2345, 10, 5, 7500.00, 1200.00, 2, 3000, TRUE),
('4234567890123456', 'Pedro Hernandez', 3, '2025-08-01', 345, 1, 1, 2, 3456, NULL, NULL, NULL, NULL, NULL, NULL, FALSE),
('5234567890123456', 'Ana Rodriguez', 4, '2028-05-01', 456, 2, 2, 4, 4567, 1, 25, 10000.00, 5000.00, 2, 10000, TRUE),
('4345678901234567', 'Carlos Perez', 5, '2029-03-01', 567, 1, 1, 3, 5678, NULL, NULL, NULL, NULL, NULL, NULL, TRUE),
('5345678901234567', 'Sofia Morales', 6, '2027-07-01', 678, 2, 2, 1, 6789, 10, 30, 3000.00, 1500.00, 2, 2500, FALSE),
('4456789012345678', 'Luis Fernandez', 7, '2026-09-01', 789, 1, 2, 4, 7890, 15, 5, 10000.00, 8000.00, 1, 12000, TRUE),
('5456789012345678', 'Gabriela Gutierrez', 8, '2028-11-01', 890, 2, 1, 1, 8901, NULL, NULL, NULL, NULL, NULL, NULL,TRUE),
('4567890123456789', 'Ricardo Castro', 9, '2027-06-01', 901, 1, 2, 3, 9012, 10, 5, 7500.00, 2000.00, 1, 5500, TRUE),
('5567890123456789', 'Patricia Ortega', 10, '2026-08-01', 112, 2, 2, 4, 1123, 1, 25, 10000.00, 7000.00, 2, 8000, FALSE),
('4123456789012346', 'Hector Santos', 11, '2027-05-01', 213, 1, 1, 1, 2134, NULL, NULL, NULL, NULL, NULL, NULL, TRUE),
('5123456789012346', 'Veronica Reyes', 12, '2029-12-01', 324, 2, 2, 2, 3245, 5, 1, 7500.00, 5000.00, 2, 5000, TRUE),
('4234567890123457', 'Oscar Vasquez', 13, '2025-11-01', 435, 1, 1, 1, 4356, NULL, NULL, NULL, NULL, NULL, NULL, TRUE),
('5234567890123457', 'Camila Mejia', 14, '2028-03-01', 546, 2, 2, 4, 5467, 1, 15, 10000.00, 6000.00, 2, 8500, FALSE),
('4345678901234568', 'Andres Chavez', 15, '2027-06-01', 657, 1, 1, 1, 6578, NULL, NULL, NULL, NULL, NULL, NULL, TRUE),
('5345678901234568', 'Natalia Munoz', 16, '2026-04-01', 768, 2, 1, 1, 7689, NULL, NULL, NULL, NULL, NULL, NULL, FALSE),
('4456789012345679', 'Emilio Ramos', 17, '2025-07-01', 879, 1, 1, 4, 8790, 1, 10, 10000.00, 4500.00, 1, 2000, TRUE),
('5456789012345679', 'Paola Salazar', 18, '2029-01-01', 980, 2, 2, 3, 9801, 1, 10, 5000.00, 4000.00, 2, 2500, FALSE),
('4567890123456790', 'Julian Pineda', 19, '2026-05-01', 134, 1, 2, 2, 1345, 1, 1, 7500.00, 3000.00, 1, 4000, TRUE),
('5567890123456790', 'Fernanda Cordero', 20, '2027-02-01', 245, 2, 2, 4, 2456, 1, 1, 10000.00, 7000.00, 2, 9500, FALSE),
('4123456789012347', 'Rodrigo Guerra', 21, '2028-08-01', 356, 1, 2, 1, 3567, 15, 5, 5000.00, 2000.00, 1, 3500, TRUE),
('5123456789012347', 'Vanessa Leal', 22, '2027-11-01', 467, 2, 2, 3, 4678, 1, 25, 7500.00, 5000.00, 2, 6000, FALSE);

--bank account type
INSERT INTO bank_account_type(bank_account_type_name) VALUES ('Checking'), ('Savings');

--bank account category
INSERT INTO bank_account_category(bank_account_category_name, interest_rate, bank_account_type_id) VALUES 
('Checking', 0.00, 1), ('Basic', 1.00, 2), ('Savings +', 3.00, 2),('Savings Premium', 3.00, 2);

select * from bank_account;
select * from card;
select * from person;

select * from bank_account_category;

--bank_account
insert into bank_account(bank_account_number, balance, card_id, bank_account_type_id, 
bank_account_category_id, person_id, is_active)values
-- ('3320141', 18555.00, 45, 1, 1, 1, TRUE),
-- ('3320542', 40000.00, 46, 2, 2, 2, TRUE),
('3320001', 10000.00, NULL, 2, 1, 1, TRUE),
('3320002', 15000.50, NULL, 2, 2, 2, TRUE),
('3320003', 20000.75, NULL, 2, 3, 3, TRUE),
('3320004', 25000.25, NULL, 2, 4, 4, TRUE),
('3320005', 11000.00, NULL, 2, 1, 5, TRUE),
('3320006', 16000.50, NULL, 2, 2, 6, TRUE),
('3320007', 21000.75, NULL, 2, 3, 7, TRUE),
('3320008', 26000.25, NULL, 2, 4, 8, TRUE),
('3320009', 12000.00, NULL, 2, 1, 9, TRUE),
('3320010', 17000.50, NULL, 2, 2, 10, TRUE),
('3320011', 22000.75, NULL, 2, 3, 11, TRUE),
('3320012', 27000.25, NULL, 2, 4, 12, TRUE),
('3320013', 13000.00, NULL, 2, 1, 13, TRUE),
('3320014', 18000.50, NULL, 2, 2, 14, TRUE),
('3320015', 23000.75, NULL, 2, 3, 15, TRUE),
('3320016', 28000.25, NULL, 2, 4, 16, TRUE),
('3320017', 14000.00, NULL, 2, 1, 17, TRUE),
('3320018', 19000.50, NULL, 2, 2, 18, TRUE),
('3320019', 24000.75, NULL, 2, 3, 19, TRUE),
('3320020', 29000.25, NULL, 2, 4, 20, TRUE),
('3320021', 15000.00, NULL, 2, 1, 21, TRUE),
('3320022', 20000.50, NULL, 2, 2, 22, TRUE),
('3320023', 25000.75, NULL, 2, 3, 23, TRUE),
('3320024', 30000.25, NULL, 2, 4, 24, TRUE),
('3320025', 16000.00, NULL, 2, 1, 25, TRUE),
('3320026', 21000.50, NULL, 2, 2, 26, TRUE),
('3320027', 26000.75, NULL, 2, 3, 27, TRUE),
('3320028', 31000.25, NULL, 2, 4, 28, TRUE),
('3320029', 17000.00, NULL, 2, 1, 29, TRUE),
('3320030', 22000.50, NULL, 2, 2, 30, TRUE),
('3320031', 22000.50, 1, 1, 2, 2, TRUE),
('3320032', 38000.50, 2, 1, 2, 4, TRUE),
('3320033', 500.00, 4, 1, 2, 4, TRUE),
('3320034', 8500.00, 6, 1, 2, 5, TRUE);

INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 756.17, 19, '2020-01-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 49.23, 1, '2014-04-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 916.81, 22, '2019-12-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 242.88, 9, '2022-08-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 604.61, 9, '2023-08-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 939.65, 6, '2016-08-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 426.66, 7, '2017-01-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 790.4, 5, '2014-05-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 316.43, 13, '2018-10-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 455.39, 10, '2013-05-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 602.09, 6, '2025-03-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 108.62, 9, '2018-11-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 907.51, 22, '2012-08-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 870.58, 6, '2021-06-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 559.39, 5, '2011-10-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 25.31, 9, '2020-04-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 66.32, 5, '2014-06-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 962.72, 22, '2014-09-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 61.81, 6, '2021-12-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 582.43, 6, '2022-08-05 00:00:00');






