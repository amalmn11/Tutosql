-- SQLite
/*
CREATE TABLE client (
  Num_client INTEGER PRIMARY KEY AUTOINCREMENT,
  nom VARCHAR(30) DEFAULT NULL,
  prenom VARCHAR(30) DEFAULT NULL,
  quartier VARCHAR(50) DEFAULT NULL,
  phone VARCHAR(13) DEFAULT NULL,
  age INT DEFAULT NULL
);


CREATE TABLE livreur (
  Num_livreur INTEGER PRIMARY KEY AUTOINCREMENT,
  nom varchar(30) DEFAULT NULL,
  prenom varchar(30) DEFAULT NULL,
  adresse varchar(40) DEFAULT NULL,
  phone varchar(13) DEFAULT NULL
);




CREATE TABLE commande (
  Num_commande INTEGER PRIMARY KEY AUTOINCREMENT,
  date_commande date DEFAULT NULL,
  Num_client int DEFAULT NULL,
  Num_livreur int DEFAULT NULL,
  FOREIGN KEY (Num_client) REFERENCES client(Num_client),
  FOREIGN KEY (Num_livreur) REFERENCES livreur(Num_livreur)
);


DROP TABLE IF EXISTS consomation;
CREATE TABLE consomation (
  Num_consomation INTEGER PRIMARY KEY AUTOINCREMENT,
  designation varchar(30) DEFAULT NULL,
  prix_unitaire double DEFAULT NULL,
  promotion int DEFAULT NULL
);


DROP TABLE IF EXISTS contient;
CREATE TABLE IF NOT EXISTS contient (
  Num_consomation INTEGER NOT NULL,
  num_commande int NOT NULL,
  quantite varchar(30) DEFAULT NULL,
  PRIMARY KEY (Num_consomation,num_commande),
  FOREIGN KEY (num_commande) REFERENCES commande(Num_commande),
  FOREIGN KEY (Num_consomation) REFERENCES consomation(Num_consomation)
);*/

INSERT INTO client (nom, prenom, quartier, phone, age) VALUES 
('Smith', 'John', 'Downtown', '123-456-7890', 25),
('Johnson', 'Emma', 'Suburb', '987-654-3210', 32),
('Davis', 'Michael', 'Central', '555-123-4567', 28),
('Wilson', 'Emily', 'Uptown', '111-222-3333', 35),
('Miller', 'Sophia', 'Rural', '444-555-6666', 30),
('Anderson', 'James', 'Urban', '777-888-9999', 22),
('Thomas', 'Olivia', 'Village', '888-777-6666', 40),
('Brown', 'Liam', 'Countryside', '333-222-1111', 27),
('Garcia', 'Ava', 'Downtown', '222-333-4444', 33),
('Martinez', 'Noah', 'Suburb', '666-999-1111', 29);



INSERT INTO livreur (nom, prenom, adresse, phone) VALUES 
('Johnson', 'David', '123 Main St', '555-123-7890'),
('Smith', 'Emma', '456 Oak St', '888-444-5678'),
('Davis', 'Oliver', '789 Pine St', '333-555-6789'),
('Wilson', 'Sophie', '234 Elm St', '777-666-9876'),
('Miller', 'Alexander', '567 Birch St', '111-999-6543'),
('Anderson', 'Grace', '890 Maple St', '222-333-2222'),
('Thomas', 'Ethan', '345 Cedar St', '444-555-1111'),
('Brown', 'Isabella', '678 Willow St', '666-777-8888'),
('Garcia', 'Mia', '901 Spruce St', '999-888-7777'),
('Martinez', 'Benjamin', '123 Pine St', '777-999-6666');



INSERT INTO commande (date_commande, Num_client, Num_livreur) VALUES 
('2024-02-01', 1, 3),
('2024-02-02', 2, 5),
('2024-02-03', 3, 7),
('2024-02-04', 4, 9),
('2024-02-05', 5, 2),
('2024-02-06', 6, 4),
('2024-02-07', 7, 6),
('2024-02-08', 8, 8),
('2024-02-09', 9, 10),
('2024-02-10', 10, 1);



INSERT INTO consomation (designation, prix_unitaire, promotion) VALUES 
('Pizza', 12.99, 2),
('Burger', 8.50, 0),
('Salad', 6.99, 1),
('Pasta', 10.75, 3),
('Steak', 15.50, 0),
('Sushi', 20.00, 4),
('Ice Cream', 4.99, 0),
('Coffee', 2.50, 0),
('Smoothie', 5.25, 1),
('Sandwich', 7.99, 0);




INSERT INTO contient (Num_consomation, num_commande, quantite) VALUES 
(1, 1, '2'),
(2, 2, '1'),
(3, 3, '3'),
(4, 4, '2'),
(5, 5, '1'),
(6, 6, '2'),
(7, 7, '4'),
(8, 8, '3'),
(9, 9, '1'),
(10, 10, '2');

