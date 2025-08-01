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



--insert card transaction data.
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
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 877.67, 6, '2025-03-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 919.47, 12, '2020-08-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 669.6, 8, '2017-03-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 742.27, 17, '2015-02-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 81.34, 21, '2016-12-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 285.69, 2, '2017-12-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 967.91, 6, '2023-03-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 826.98, 16, '2018-06-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 214.68, 19, '2012-11-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 197.2, 4, '2016-03-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 435.6, 10, '2019-08-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 761.01, 21, '2012-11-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 487.02, 22, '2016-05-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 721.6, 15, '2020-08-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 536.81, 21, '2011-06-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 397.48, 9, '2021-06-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 270.07, 17, '2014-10-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 78.74, 12, '2012-05-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 620.58, 7, '2010-12-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 636.72, 19, '2014-05-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 345.1, 17, '2011-07-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 29.35, 21, '2021-02-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 204.04, 1, '2021-01-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 672.81, 20, '2023-11-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 322.05, 19, '2011-04-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 784.78, 9, '2015-12-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 934.09, 9, '2020-03-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 194.86, 2, '2019-12-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 846.96, 7, '2014-11-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 662.04, 20, '2011-05-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 972.22, 5, '2024-06-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 714.35, 12, '2013-06-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 225.61, 6, '2011-07-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 949.52, 15, '2011-02-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 384.53, 2, '2010-08-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 20.22, 9, '2020-12-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 193.59, 3, '2024-09-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 594.67, 10, '2013-05-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 110.72, 6, '2020-05-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 206.12, 3, '2023-08-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 906.64, 10, '2013-05-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 869.73, 1, '2013-04-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 855.31, 11, '2010-07-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 870.98, 21, '2018-09-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 25.33, 12, '2013-04-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 819.57, 18, '2018-12-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 721.07, 17, '2016-06-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 391.24, 7, '2024-02-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 963.2, 6, '2015-01-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 979.16, 14, '2018-09-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 685.21, 18, '2025-04-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 155.21, 3, '2023-12-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 45.55, 5, '2020-06-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 134.69, 21, '2016-08-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 923.29, 12, '2024-09-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 858.25, 8, '2011-06-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 309.5, 16, '2020-10-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 566.03, 11, '2022-03-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 375.09, 10, '2011-11-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 638.31, 12, '2010-01-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 727.09, 21, '2011-10-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 495.12, 16, '2021-04-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 452.1, 18, '2018-04-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 336.35, 17, '2018-11-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 536.73, 19, '2022-10-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 84.32, 18, '2022-05-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 160.94, 18, '2011-08-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 47.69, 22, '2010-10-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 574.65, 20, '2024-08-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 800.0, 18, '2014-05-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 478.4, 1, '2015-12-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 610.1, 20, '2019-11-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 851.48, 19, '2023-01-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 117.66, 12, '2020-06-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 228.54, 2, '2018-01-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 286.99, 18, '2012-08-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 660.45, 12, '2024-02-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 10.2, 1, '2023-03-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 18.59, 11, '2014-07-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 259.01, 2, '2016-05-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 893.87, 6, '2011-01-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 36.62, 4, '2018-10-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 822.82, 4, '2019-03-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 80.69, 20, '2017-10-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 866.5, 10, '2012-11-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 37.86, 21, '2010-09-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 568.69, 18, '2024-07-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 756.35, 14, '2018-09-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 137.8, 10, '2022-01-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 553.42, 11, '2021-10-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 836.49, 6, '2018-11-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 581.14, 20, '2016-04-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 872.91, 10, '2022-08-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 239.27, 10, '2010-02-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 362.75, 22, '2023-07-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 815.69, 2, '2024-02-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 451.72, 12, '2019-03-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 953.76, 15, '2023-05-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 685.04, 2, '2018-09-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 378.53, 14, '2019-11-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 725.07, 13, '2014-03-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 84.1, 1, '2015-05-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 996.72, 4, '2011-11-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 468.35, 9, '2019-10-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 380.53, 2, '2016-12-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 962.23, 10, '2011-08-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 634.51, 16, '2023-09-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 789.2, 20, '2021-06-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 501.79, 9, '2022-02-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 424.33, 11, '2022-09-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 688.84, 17, '2017-12-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 885.12, 5, '2024-04-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 687.98, 11, '2014-07-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 757.07, 20, '2013-02-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 611.47, 14, '2018-09-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 755.32, 9, '2023-11-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 794.62, 22, '2011-07-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 41.29, 3, '2021-02-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 444.8, 22, '2017-03-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 441.28, 12, '2016-06-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 605.82, 2, '2010-09-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 564.86, 1, '2016-08-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 753.23, 4, '2024-08-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 777.59, 20, '2017-09-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 733.67, 20, '2020-10-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 818.15, 19, '2016-12-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 72.1, 6, '2022-04-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 341.98, 3, '2010-10-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 38.49, 15, '2022-10-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 852.69, 9, '2012-04-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 481.13, 11, '2022-04-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 181.43, 4, '2022-03-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 530.39, 12, '2019-06-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 998.35, 22, '2019-03-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 639.25, 2, '2019-12-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 687.69, 12, '2019-10-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 640.45, 22, '2012-12-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 199.06, 13, '2017-08-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 207.66, 15, '2023-10-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 330.24, 3, '2021-04-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 161.97, 17, '2012-06-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 23.5, 10, '2024-02-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 887.61, 20, '2013-06-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 502.7, 19, '2011-07-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 211.17, 21, '2018-02-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 596.99, 15, '2018-05-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 68.06, 5, '2012-06-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 642.55, 17, '2012-07-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 200.78, 9, '2011-05-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 119.42, 7, '2019-10-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 127.16, 7, '2024-10-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 300.47, 17, '2014-05-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 498.84, 4, '2011-06-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 187.01, 11, '2011-06-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 193.14, 19, '2016-05-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 507.04, 13, '2016-05-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 375.2, 5, '2024-08-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 853.51, 11, '2013-02-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 738.34, 2, '2014-12-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 269.4, 12, '2013-10-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 862.32, 21, '2014-08-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 320.38, 19, '2015-11-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 278.03, 14, '2025-04-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 605.51, 15, '2024-06-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 245.01, 15, '2025-07-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 255.21, 15, '2024-10-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 171.89, 1, '2019-03-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 905.62, 13, '2024-06-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 733.17, 11, '2023-04-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 707.13, 6, '2013-09-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 668.98, 21, '2018-05-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 558.6, 1, '2025-05-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 795.72, 8, '2016-10-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 574.51, 17, '2016-12-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 59.71, 18, '2018-02-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 921.72, 22, '2017-06-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 659.98, 4, '2012-12-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 52.32, 1, '2010-04-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 554.45, 5, '2011-02-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 507.22, 17, '2022-03-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 527.17, 11, '2023-07-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 146.9, 22, '2023-11-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 676.92, 21, '2019-11-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 736.84, 16, '2020-05-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 545.72, 6, '2012-09-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 325.25, 14, '2022-05-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 332.92, 19, '2022-01-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 630.59, 19, '2015-01-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 408.48, 13, '2014-06-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 953.3, 3, '2013-04-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 721.71, 13, '2023-11-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 550.24, 8, '2016-03-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 797.75, 10, '2025-01-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 770.59, 1, '2022-11-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 916.71, 16, '2011-10-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 747.1, 2, '2017-08-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 380.54, 21, '2019-10-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 890.01, 10, '2020-05-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 37.82, 12, '2022-04-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 749.6, 21, '2024-01-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 82.72, 18, '2010-05-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 221.71, 22, '2011-12-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 769.24, 2, '2015-05-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 22.98, 1, '2025-04-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 810.62, 7, '2011-03-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 822.25, 16, '2021-12-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 612.03, 21, '2019-08-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 227.41, 19, '2023-11-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 492.7, 4, '2015-08-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 901.53, 20, '2017-04-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 475.91, 4, '2023-11-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 240.55, 22, '2017-07-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 117.42, 1, '2013-03-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 532.89, 8, '2011-04-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 438.3, 22, '2020-12-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 172.79, 17, '2010-09-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 807.89, 20, '2013-02-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 641.58, 16, '2019-10-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 326.61, 10, '2024-12-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 905.71, 17, '2011-11-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 437.9, 5, '2017-05-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 15.18, 17, '2018-01-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 899.76, 14, '2018-09-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 826.38, 11, '2013-03-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 755.25, 11, '2012-04-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 610.91, 18, '2022-06-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 790.05, 8, '2019-08-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 319.08, 12, '2013-06-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 950.33, 6, '2011-07-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 366.97, 16, '2016-12-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 566.22, 19, '2019-07-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 736.12, 20, '2020-02-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 876.71, 10, '2023-08-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 971.86, 21, '2011-01-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 810.63, 9, '2019-11-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 749.47, 18, '2014-10-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 538.91, 19, '2021-12-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 505.54, 19, '2011-02-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 39.27, 8, '2018-03-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 512.76, 5, '2011-10-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 772.45, 12, '2015-03-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 538.36, 9, '2013-06-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 403.2, 15, '2019-08-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 698.47, 20, '2019-05-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 350.05, 7, '2020-06-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 201.45, 18, '2016-01-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 333.04, 17, '2022-01-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 427.64, 17, '2011-03-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 280.98, 11, '2022-04-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 731.51, 1, '2023-02-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 988.21, 4, '2014-02-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 632.36, 15, '2024-05-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 377.67, 9, '2023-07-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 785.17, 2, '2010-02-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 217.69, 14, '2012-04-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 310.39, 4, '2024-12-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 115.67, 20, '2018-12-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 714.13, 6, '2010-06-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 546.01, 13, '2019-03-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 792.39, 11, '2016-03-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 699.39, 2, '2023-05-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 658.43, 20, '2010-10-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 799.53, 3, '2018-07-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 706.95, 6, '2024-12-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 510.61, 1, '2015-09-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 695.17, 2, '2021-01-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 656.7, 11, '2024-09-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 542.04, 5, '2014-09-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 479.89, 8, '2017-07-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 268.08, 8, '2014-11-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 334.46, 13, '2018-05-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 948.74, 4, '2020-01-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 454.98, 4, '2025-06-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 72.61, 13, '2013-08-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 606.25, 18, '2025-03-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 337.94, 10, '2018-09-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 159.57, 17, '2016-04-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 326.62, 14, '2014-05-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 21.18, 8, '2024-03-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 436.15, 10, '2019-04-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 719.1, 18, '2016-10-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 924.84, 20, '2017-07-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 325.91, 17, '2015-05-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 958.86, 1, '2012-04-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 817.25, 10, '2022-10-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 84.34, 5, '2023-04-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 822.36, 20, '2012-10-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 640.89, 10, '2020-07-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 290.0, 14, '2013-10-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 587.76, 4, '2018-03-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 876.05, 16, '2020-10-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 963.71, 17, '2022-07-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 314.4, 12, '2020-05-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 677.04, 18, '2023-08-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 255.5, 14, '2019-01-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 153.62, 4, '2017-08-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 155.08, 14, '2010-06-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 97.67, 2, '2011-12-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 295.24, 2, '2015-11-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 480.16, 11, '2016-03-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 7.58, 14, '2024-02-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 783.17, 4, '2022-06-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 397.0, 20, '2018-03-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 526.19, 22, '2019-08-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 307.99, 11, '2013-06-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 348.66, 10, '2023-02-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 218.57, 19, '2010-09-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 727.83, 3, '2016-05-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 994.0, 14, '2020-07-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 494.26, 8, '2014-03-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 519.14, 10, '2017-12-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 998.77, 3, '2015-01-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 813.81, 18, '2021-08-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 311.38, 18, '2012-09-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 706.25, 18, '2023-08-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 108.93, 9, '2021-10-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 309.31, 3, '2021-06-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 897.43, 4, '2019-01-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 288.98, 11, '2021-07-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 347.51, 7, '2013-12-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 464.7, 21, '2024-11-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 836.22, 9, '2024-10-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 210.84, 7, '2024-12-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 305.51, 11, '2022-07-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 753.88, 9, '2011-01-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 50.37, 4, '2022-07-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 771.36, 22, '2011-01-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 344.24, 14, '2011-11-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 293.23, 8, '2010-11-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 92.22, 3, '2018-03-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 586.86, 12, '2015-04-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 425.63, 20, '2010-10-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 118.43, 22, '2015-06-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 552.46, 15, '2010-07-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 253.96, 5, '2019-04-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 267.72, 22, '2016-03-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 976.3, 2, '2017-03-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 276.86, 5, '2022-02-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 436.3, 11, '2014-04-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 119.35, 7, '2019-03-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 720.44, 7, '2012-03-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 987.14, 17, '2014-02-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 142.61, 5, '2025-04-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 417.73, 7, '2018-03-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 392.63, 2, '2022-05-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 989.98, 11, '2018-01-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 258.62, 7, '2018-04-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 438.78, 10, '2021-03-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 831.2, 9, '2016-02-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 471.56, 8, '2016-07-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 891.78, 6, '2011-05-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 248.41, 8, '2021-05-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 762.9, 17, '2013-07-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 528.8, 12, '2016-09-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 693.63, 8, '2017-10-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 112.25, 15, '2019-08-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 652.4, 19, '2014-10-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 451.0, 9, '2014-08-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 430.16, 17, '2016-09-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 357.99, 19, '2025-06-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 939.54, 22, '2018-01-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 544.81, 8, '2016-02-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 297.57, 19, '2023-07-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 586.95, 9, '2017-12-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 673.39, 4, '2022-06-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 303.86, 6, '2020-08-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 824.47, 17, '2019-05-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 337.3, 15, '2020-05-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 938.22, 5, '2024-11-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 870.98, 19, '2016-09-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 321.28, 17, '2022-07-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 76.47, 7, '2021-09-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 616.97, 5, '2016-10-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 560.72, 17, '2012-03-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 393.24, 13, '2025-06-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 335.69, 12, '2012-03-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 305.39, 22, '2013-11-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 225.37, 14, '2020-12-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 401.92, 22, '2018-06-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 46.36, 8, '2021-12-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 985.47, 16, '2024-08-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 943.68, 9, '2023-12-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 359.27, 17, '2022-11-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 369.98, 8, '2010-07-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 80.55, 19, '2022-05-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 264.94, 11, '2023-10-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 737.58, 1, '2019-01-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 876.28, 7, '2017-09-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 655.33, 9, '2010-03-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 565.28, 3, '2019-12-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 503.44, 19, '2015-01-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 685.88, 8, '2011-11-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 914.49, 21, '2012-04-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 74.12, 19, '2016-10-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 308.38, 12, '2017-12-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 359.7, 15, '2010-11-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 282.17, 1, '2015-09-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 345.28, 7, '2013-07-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 597.43, 20, '2020-10-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 649.99, 11, '2015-04-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 259.3, 15, '2020-10-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 551.26, 13, '2016-10-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 49.3, 11, '2014-05-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 512.75, 22, '2023-03-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 962.49, 12, '2016-08-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 749.71, 21, '2022-02-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 301.16, 18, '2022-11-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 924.78, 14, '2017-07-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 618.21, 1, '2013-05-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 704.24, 18, '2020-07-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 728.27, 17, '2012-05-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 336.84, 2, '2017-09-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 615.93, 8, '2010-01-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 90.48, 9, '2012-03-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 976.3, 3, '2018-05-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 694.28, 7, '2023-04-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 197.15, 11, '2014-02-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 289.52, 18, '2018-06-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 596.11, 11, '2018-06-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 409.59, 11, '2024-03-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 291.02, 10, '2012-05-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 558.1, 19, '2011-07-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 477.57, 20, '2022-12-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 311.1, 15, '2017-11-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 956.86, 18, '2019-07-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 693.15, 12, '2019-09-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 159.86, 20, '2013-11-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 703.06, 4, '2022-04-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 661.43, 21, '2019-12-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 452.42, 18, '2019-06-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 743.86, 15, '2024-12-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 922.26, 20, '2023-10-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 395.85, 6, '2011-05-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 744.5, 21, '2017-02-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 457.37, 16, '2012-10-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 613.25, 16, '2019-01-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 917.0, 11, '2013-08-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 862.02, 7, '2024-08-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 24.76, 13, '2016-05-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 755.89, 5, '2023-10-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 584.42, 19, '2011-02-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 971.26, 7, '2014-09-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 904.98, 3, '2014-08-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 187.83, 20, '2024-10-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 945.33, 9, '2020-12-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 944.3, 20, '2012-10-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 286.55, 8, '2013-11-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 630.82, 22, '2020-02-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 418.96, 13, '2013-07-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 540.63, 21, '2017-12-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 566.48, 20, '2022-02-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 915.76, 7, '2024-05-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 875.59, 21, '2012-10-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 619.79, 5, '2019-03-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 21.97, 20, '2015-08-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 940.8, 7, '2021-09-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 619.27, 1, '2016-04-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 256.97, 21, '2022-05-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 624.48, 5, '2021-06-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 213.63, 18, '2013-01-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 100.19, 9, '2024-04-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 99.91, 16, '2011-08-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 992.36, 22, '2020-04-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 424.28, 4, '2018-05-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 574.18, 5, '2018-07-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 414.53, 9, '2022-02-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 141.28, 14, '2015-06-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 54.43, 11, '2011-08-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 810.51, 6, '2023-07-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 449.94, 9, '2023-04-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 964.86, 17, '2019-04-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 540.26, 11, '2022-06-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 97.89, 17, '2023-12-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 693.38, 21, '2010-06-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 714.16, 19, '2020-07-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 471.74, 9, '2022-03-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 5.85, 9, '2020-06-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 338.56, 10, '2013-02-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 3.86, 3, '2013-03-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 711.06, 19, '2025-03-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 503.17, 7, '2011-03-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 60.56, 21, '2023-10-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 984.2, 15, '2019-03-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 112.38, 8, '2016-02-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 82.1, 15, '2014-11-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 883.44, 20, '2016-10-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 769.39, 19, '2017-12-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 277.04, 21, '2019-09-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 598.91, 18, '2019-11-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 491.05, 6, '2016-10-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 62.3, 21, '2021-08-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 336.23, 1, '2017-02-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 737.38, 4, '2019-10-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 505.71, 13, '2023-09-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 525.06, 16, '2019-05-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 175.6, 18, '2012-11-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 689.04, 14, '2022-01-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 282.21, 1, '2018-11-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 899.97, 20, '2017-03-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 198.65, 10, '2010-06-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 766.4, 20, '2022-12-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 419.39, 9, '2015-06-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 962.52, 3, '2021-03-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 928.41, 9, '2012-09-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 853.89, 22, '2025-02-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 952.0, 14, '2021-09-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 489.79, 5, '2022-04-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 962.54, 4, '2015-12-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 448.18, 18, '2020-12-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 675.89, 9, '2019-06-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 331.72, 10, '2018-01-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 416.43, 15, '2023-05-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 906.28, 21, '2014-09-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 331.18, 18, '2012-10-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 303.2, 2, '2021-08-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 353.68, 14, '2022-05-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 203.16, 15, '2012-01-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 148.37, 2, '2013-03-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 972.16, 5, '2015-02-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 279.65, 7, '2012-11-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 752.03, 1, '2018-12-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 357.34, 13, '2012-01-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 214.66, 2, '2023-12-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 253.61, 3, '2015-05-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 5.43, 22, '2023-10-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 454.77, 19, '2015-01-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 898.7, 11, '2023-03-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 834.14, 15, '2023-12-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 942.12, 17, '2018-04-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 243.33, 9, '2023-12-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 185.47, 12, '2024-03-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 768.39, 10, '2013-09-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 275.54, 12, '2021-01-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 147.79, 2, '2012-10-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 375.96, 13, '2013-03-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 556.85, 22, '2017-10-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 344.24, 21, '2019-11-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 797.4, 2, '2022-04-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 552.68, 13, '2021-07-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 624.12, 12, '2010-03-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 236.46, 12, '2011-03-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 28.51, 16, '2024-01-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 563.2, 16, '2012-07-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 973.56, 1, '2014-01-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 969.93, 16, '2015-04-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 434.14, 10, '2017-09-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 304.36, 17, '2016-08-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 870.53, 3, '2017-01-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 694.37, 2, '2015-04-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 281.6, 2, '2011-01-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 150.81, 16, '2010-01-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 813.39, 16, '2023-06-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 313.56, 11, '2017-05-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 194.69, 4, '2016-09-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 911.68, 19, '2021-03-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 919.21, 18, '2019-11-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 926.65, 7, '2013-04-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 196.94, 20, '2025-01-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 618.98, 9, '2014-06-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 788.97, 3, '2020-07-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 567.42, 13, '2025-01-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 897.3, 7, '2022-08-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 796.31, 19, '2025-07-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 385.32, 2, '2016-05-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 556.54, 17, '2024-06-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 497.81, 11, '2022-11-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 723.92, 3, '2019-07-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 89.69, 15, '2015-12-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 138.99, 10, '2020-10-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 648.38, 15, '2021-10-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 470.32, 13, '2012-04-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 786.09, 15, '2015-06-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 715.19, 8, '2013-07-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 758.33, 12, '2014-06-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 109.1, 4, '2013-11-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 850.76, 8, '2015-04-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 952.72, 5, '2023-09-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 624.49, 21, '2020-11-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 278.66, 1, '2019-07-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 702.14, 17, '2020-09-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 297.02, 7, '2019-08-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 119.26, 7, '2016-06-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 450.89, 9, '2020-07-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 492.87, 22, '2013-09-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 769.11, 11, '2022-07-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 583.27, 10, '2022-07-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 325.15, 17, '2015-05-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 506.71, 6, '2016-08-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 660.39, 10, '2018-01-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 439.89, 20, '2024-01-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 731.25, 14, '2013-04-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 825.14, 9, '2011-01-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 438.89, 9, '2017-09-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 785.02, 15, '2013-10-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 275.85, 19, '2023-11-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 211.62, 16, '2019-08-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 689.21, 13, '2013-05-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 868.65, 5, '2020-09-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 877.59, 12, '2021-03-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 228.98, 10, '2023-08-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 459.64, 18, '2020-12-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 275.76, 6, '2017-01-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 572.6, 6, '2022-03-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 944.09, 22, '2021-03-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 321.17, 19, '2021-06-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 24.99, 13, '2022-01-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 930.65, 17, '2010-12-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 188.19, 9, '2020-03-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 749.48, 21, '2011-08-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 476.06, 14, '2010-07-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 937.74, 6, '2012-12-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 101.67, 1, '2011-06-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 706.04, 14, '2022-02-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 988.5, 10, '2023-05-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 98.67, 15, '2016-11-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 413.0, 18, '2012-06-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 235.38, 10, '2022-05-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 462.16, 19, '2012-03-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 573.02, 16, '2010-01-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 254.86, 22, '2018-05-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 16.31, 13, '2016-04-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 824.22, 9, '2025-03-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 203.48, 7, '2015-01-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 251.29, 8, '2013-05-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 537.92, 22, '2015-01-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 303.37, 21, '2015-11-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 861.51, 18, '2023-03-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 271.82, 18, '2018-07-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 462.75, 15, '2024-01-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 869.62, 14, '2016-11-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 623.79, 3, '2011-07-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 739.91, 9, '2023-03-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 547.29, 22, '2011-09-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 798.86, 9, '2014-09-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 168.78, 13, '2015-11-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 337.73, 15, '2023-03-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 230.92, 22, '2016-07-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 708.14, 15, '2022-11-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 523.11, 20, '2020-03-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 312.61, 21, '2022-12-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 617.84, 12, '2012-01-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 2.86, 12, '2016-08-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 639.91, 12, '2018-11-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 594.96, 17, '2011-04-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 876.78, 2, '2014-10-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 106.53, 19, '2018-03-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 242.81, 10, '2012-09-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 579.01, 4, '2012-06-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 912.51, 22, '2025-03-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 330.2, 4, '2022-11-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 932.83, 13, '2020-09-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 561.64, 15, '2013-11-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 220.78, 8, '2016-06-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 818.96, 15, '2023-06-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 894.54, 3, '2023-11-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 843.09, 1, '2024-08-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 23.53, 22, '2014-09-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 770.49, 5, '2024-08-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 365.15, 8, '2016-06-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 955.91, 14, '2020-08-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 64.52, 20, '2020-08-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 507.09, 9, '2024-09-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 942.97, 19, '2016-11-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 203.11, 1, '2017-12-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 417.49, 21, '2011-08-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 115.76, 21, '2023-09-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 919.58, 5, '2019-09-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 189.54, 22, '2015-06-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 709.25, 2, '2012-06-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 993.73, 12, '2011-11-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 469.44, 5, '2024-12-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 151.7, 21, '2011-07-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 855.36, 22, '2011-08-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 183.06, 16, '2017-11-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 471.61, 21, '2010-09-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 83.36, 19, '2024-06-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 310.43, 12, '2018-10-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 886.93, 15, '2014-12-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 484.64, 2, '2025-07-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 20.71, 11, '2018-06-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 355.12, 21, '2010-04-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 231.3, 8, '2016-03-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 740.3, 16, '2020-06-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 790.51, 7, '2013-10-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 369.45, 3, '2021-06-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 553.31, 10, '2021-10-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 982.88, 12, '2010-04-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 113.71, 20, '2013-05-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 405.94, 13, '2020-07-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 149.82, 4, '2019-08-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 164.99, 8, '2018-05-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 313.6, 11, '2020-10-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 882.83, 11, '2012-06-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 694.74, 13, '2015-08-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 483.93, 9, '2015-02-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 174.37, 8, '2023-02-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 467.0, 6, '2015-01-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 342.15, 16, '2021-01-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 660.55, 4, '2014-07-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 766.68, 4, '2011-01-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 318.53, 12, '2020-06-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 770.95, 3, '2019-03-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 75.48, 16, '2011-10-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 606.39, 17, '2020-08-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 306.84, 9, '2015-12-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 614.32, 2, '2024-05-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 832.76, 20, '2024-09-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 113.99, 16, '2018-09-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 509.4, 1, '2018-10-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 993.55, 2, '2017-03-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 412.35, 6, '2020-02-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 155.28, 13, '2015-07-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 828.45, 5, '2013-03-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 393.71, 1, '2022-07-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 643.21, 18, '2025-06-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 867.07, 14, '2013-06-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 404.67, 13, '2022-12-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 280.88, 20, '2020-02-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 824.08, 9, '2013-12-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 298.5, 6, '2013-07-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 409.59, 19, '2024-10-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 248.66, 3, '2010-04-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 735.24, 22, '2023-01-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 669.61, 21, '2011-04-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 677.85, 10, '2017-07-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 225.62, 13, '2024-10-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 284.84, 1, '2018-08-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 394.36, 12, '2021-01-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 197.15, 22, '2025-04-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 632.51, 7, '2019-04-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 486.29, 10, '2022-09-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 676.17, 10, '2023-02-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 70.71, 15, '2016-06-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 868.94, 21, '2013-10-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 91.56, 2, '2024-10-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 69.12, 4, '2021-09-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 526.45, 11, '2016-06-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 759.47, 16, '2016-05-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 802.77, 9, '2025-01-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 157.44, 11, '2018-07-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 362.83, 4, '2012-02-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 789.58, 18, '2019-03-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 317.16, 2, '2014-11-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 401.18, 13, '2024-10-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 904.92, 13, '2013-09-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 514.9, 6, '2013-03-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 213.24, 5, '2013-11-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 484.4, 16, '2024-12-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 991.39, 19, '2011-03-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 315.71, 11, '2013-12-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 673.57, 15, '2025-02-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 154.37, 21, '2023-03-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 321.95, 13, '2025-07-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 948.28, 11, '2014-03-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 620.39, 17, '2017-04-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 576.08, 20, '2017-09-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 57.42, 11, '2015-10-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 448.28, 7, '2017-08-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 672.29, 2, '2018-03-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 921.6, 3, '2018-02-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 530.08, 21, '2013-06-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 536.24, 7, '2025-06-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 590.87, 9, '2022-01-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 585.57, 3, '2015-07-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 28.0, 10, '2019-06-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 26.48, 5, '2023-08-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 305.89, 16, '2016-11-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 470.53, 21, '2020-06-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 662.47, 2, '2023-03-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 233.32, 17, '2015-10-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 210.86, 3, '2013-12-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 837.94, 22, '2016-10-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 745.46, 15, '2011-01-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 904.64, 22, '2015-01-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 246.25, 22, '2019-11-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 82.58, 13, '2016-11-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 874.51, 20, '2020-03-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 652.89, 12, '2022-06-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 605.97, 7, '2018-09-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 128.47, 2, '2022-12-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 352.22, 22, '2020-04-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 368.5, 6, '2022-11-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 302.87, 5, '2021-11-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 401.3, 1, '2021-09-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 47.47, 8, '2012-07-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 367.95, 15, '2022-08-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 982.92, 10, '2015-07-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 598.91, 22, '2018-10-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 666.64, 11, '2019-04-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 644.61, 12, '2018-03-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 916.54, 4, '2020-11-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 319.04, 11, '2013-07-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 117.84, 9, '2014-12-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 756.06, 9, '2017-02-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 198.67, 22, '2015-10-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 185.23, 6, '2019-11-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 95.73, 4, '2012-02-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 273.19, 19, '2016-06-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 735.03, 13, '2014-12-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 147.37, 5, '2014-12-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 469.74, 18, '2012-06-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 639.43, 12, '2023-04-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 925.08, 18, '2016-05-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 433.76, 13, '2020-03-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 492.91, 20, '2023-07-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 476.17, 13, '2022-09-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 492.6, 5, '2010-05-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 726.03, 17, '2023-06-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 647.12, 19, '2018-01-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 781.21, 22, '2016-09-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 850.15, 3, '2019-08-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 642.32, 12, '2021-02-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 756.45, 14, '2018-07-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 86.57, 7, '2013-08-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 113.39, 5, '2021-12-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 95.99, 16, '2018-02-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 564.85, 6, '2018-12-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 354.57, 8, '2018-10-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 214.03, 12, '2017-04-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 980.1, 5, '2016-03-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 578.43, 9, '2015-07-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 745.98, 16, '2016-01-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 325.91, 17, '2013-04-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 850.82, 20, '2010-09-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 782.57, 15, '2020-01-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 712.34, 8, '2021-01-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 579.22, 15, '2011-09-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 231.61, 11, '2023-04-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 328.16, 9, '2023-04-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 739.8, 2, '2010-01-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 515.48, 1, '2010-05-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 162.46, 10, '2019-12-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 314.54, 16, '2019-04-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 946.65, 10, '2020-12-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 817.1, 20, '2019-09-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 812.3, 15, '2023-04-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 268.78, 8, '2023-08-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 406.61, 15, '2012-09-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 56.59, 8, '2017-04-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 835.51, 9, '2022-02-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 522.51, 11, '2017-03-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 362.19, 22, '2011-02-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 121.55, 14, '2010-07-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 739.93, 3, '2024-03-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 10.31, 11, '2018-05-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 578.85, 13, '2021-09-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 22.4, 5, '2016-08-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 711.1, 22, '2021-12-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 34.34, 11, '2015-03-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 627.76, 20, '2016-04-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 979.0, 13, '2019-03-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 405.43, 20, '2020-09-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 711.62, 16, '2016-01-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 325.9, 10, '2021-06-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 70.27, 5, '2018-09-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 810.29, 16, '2018-05-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 544.8, 12, '2013-09-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 69.1, 7, '2012-07-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 588.68, 5, '2021-11-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 742.38, 9, '2012-01-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 264.52, 2, '2018-04-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 307.24, 18, '2013-03-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 636.47, 20, '2022-07-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 122.04, 6, '2018-05-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 740.81, 16, '2023-10-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 860.89, 7, '2014-03-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 754.84, 18, '2020-07-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 129.87, 3, '2015-05-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 956.34, 8, '2014-12-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 275.86, 15, '2010-01-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 113.78, 14, '2010-03-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 225.82, 8, '2022-02-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 560.6, 14, '2013-04-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 265.43, 5, '2024-03-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 689.86, 21, '2021-05-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 452.84, 19, '2010-09-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 955.88, 1, '2025-01-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 309.9, 17, '2024-03-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 217.59, 5, '2014-02-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 657.43, 10, '2010-01-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 929.84, 21, '2023-11-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 604.24, 20, '2018-05-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 996.97, 17, '2022-11-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 913.08, 16, '2010-06-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 127.31, 4, '2018-06-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 872.13, 22, '2017-10-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 853.64, 3, '2011-11-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 992.85, 1, '2011-07-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 436.59, 15, '2015-05-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 923.43, 14, '2010-01-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 298.73, 11, '2015-03-31 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 291.97, 3, '2010-02-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 764.59, 15, '2021-06-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 267.03, 3, '2023-06-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 259.49, 21, '2023-07-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 132.79, 9, '2023-03-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 33.22, 6, '2013-06-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 964.83, 17, '2014-09-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 224.43, 20, '2012-05-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 344.44, 20, '2015-09-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 737.22, 13, '2013-01-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 248.91, 7, '2014-09-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 366.36, 10, '2012-01-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 3.78, 4, '2023-06-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 662.28, 13, '2010-12-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 22.9, 19, '2023-04-23 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 116.33, 8, '2011-07-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 794.09, 22, '2021-10-30 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 565.32, 6, '2017-10-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 923.5, 9, '2013-01-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 639.86, 12, '2020-06-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 365.9, 20, '2019-12-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 523.78, 14, '2020-04-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 830.29, 2, '2018-12-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Pfizer', 851.16, 9, '2024-06-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 843.73, 19, '2014-04-29 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 824.21, 20, '2013-07-21 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 817.86, 15, '2012-06-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 182.01, 14, '2011-03-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 628.58, 8, '2013-10-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 33.98, 6, '2014-01-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 827.57, 7, '2012-11-20 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Khan Academy', 550.12, 3, '2025-04-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 587.52, 19, '2024-12-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 541.6, 5, '2019-11-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'UnitedHealth Group', 262.94, 16, '2015-07-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 943.0, 17, '2022-06-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 626.33, 4, '2011-02-09 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Lyft', 436.73, 8, '2013-04-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 158.3, 3, '2017-01-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 940.14, 8, '2022-11-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 35.45, 3, '2014-08-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 792.11, 5, '2010-02-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 942.99, 11, '2010-10-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 323.15, 6, '2024-08-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 418.89, 1, '2012-05-17 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Target', 237.8, 10, '2015-09-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 666.29, 16, '2015-02-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 423.55, 9, '2010-06-27 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 531.94, 20, '2011-03-25 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 626.07, 2, '2018-11-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 659.08, 21, '2013-06-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 183.16, 2, '2021-03-04 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Visa', 213.46, 15, '2025-03-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 788.98, 1, '2012-04-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 303.24, 2, '2011-05-26 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 782.61, 2, '2022-12-16 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Goldman Sachs', 866.22, 3, '2021-03-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 377.31, 9, '2022-01-18 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Walmart', 933.78, 22, '2025-02-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 151.41, 14, '2019-10-05 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 439.0, 12, '2015-05-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 971.43, 8, '2017-04-24 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Best Buy', 783.74, 14, '2012-12-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 314.55, 10, '2017-07-12 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Coursera', 838.31, 21, '2018-10-07 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 691.79, 5, '2017-06-02 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 559.98, 16, '2012-08-11 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 973.0, 16, '2011-02-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 258.9, 3, '2018-12-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 223.09, 12, '2024-06-19 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'DHL', 897.08, 13, '2012-08-14 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'KFC', 914.82, 18, '2014-10-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 983.25, 2, '2012-03-10 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'FedEx', 720.33, 21, '2011-09-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 731.83, 17, '2025-03-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Udemy', 721.63, 21, '2010-05-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 589.4, 14, '2019-09-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Subway', 428.5, 4, '2023-09-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Moderna', 356.44, 7, '2011-06-28 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 510.39, 8, '2015-01-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Healthcare', 'Johnson & Johnson', 737.21, 4, '2020-05-03 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Retailer', 'Costco', 564.72, 9, '2011-07-15 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'McDonalds', 589.73, 15, '2017-01-08 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 994.87, 7, '2024-05-22 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'Mastercard', 338.27, 3, '2024-03-06 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Finance', 'PayPal', 746.63, 6, '2020-07-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Transportation', 'Uber', 242.05, 3, '2011-07-13 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Restaurant', 'Dominos Pizza', 102.79, 20, '2010-12-01 00:00:00');
INSERT INTO card_transaction (company_category, company_name, transaction_amount, card_id, transaction_date) VALUES ('Education', 'Pearson', 135.28, 3, '2023-09-21 00:00:00');





