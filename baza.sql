DROP DATABASE IF EXISTS baza;

CREATE DATABASE baza CHARACTER SET 	utf8mb4 COLLATE utf8mb4_polish_ci;

USE baza;

CREATE TABLE lokale (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nazwa TEXT NOT NULL,
    miasto TEXT NOT NULL,
    ulica TEXT NOT NULL
);

CREATE TABLE dania (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    typ INT NOT NULL,
    cena INT NOT NULL,
    nazwa TEXT NOT NULL
);

CREATE TABLE rezerwacje (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nr_stolika INT,
    data_rez DATE NOT NULL,
    liczba_osob INT NOT NULL,
    telefon TEXT NOT NULL
);

CREATE TABLE pracownicy (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    imie TEXT NOT NULL,
    nazwisko TEXT NOT NULL,
    stanowisko INT NOT NULL
);


INSERT INTO lokale (nazwa, miasto, ulica)
VALUES('Czarna Owca', 'Lublin', 'Narutowicza 9'), ('Al fuego', 'Warszawa', 'Duchnicka 3');

INSERT INTO dania (typ, cena, nazwa)
VALUES (1, 12, 'Rosó³ z kury'), (1, 10, 'Pomidorowa'), (2, 25, 'Kotlet schabowy z ziemniakami gotowanymi i mizeri¹'), (2, 28, 'Kotlet mielony z buraczkami i kapust¹'),
(2, 72, 'Stek z koœci¹ z frytkami i zestawem surówek'), (3, 14, 'Tatar wo³owy'), (3, 22, 'Antipasti'), (3, 17, 'Tatar z ³ososia'), (4, 6, 'Herbata'), (4, 8, 'Cola'), 
(4, 5, 'Kawa');

INSERT INTO rezerwacje(nr_stolika, data_rez, liczba_osob, telefon)
VALUES (1, '2022-09-18', 3, '123456789'), (2, '2022-09-19', 1, '987564213'), (2, '2022-09-20', 1, '777755553');

INSERT INTO pracownicy (imie, nazwisko, stanowisko)
VALUES ('Roman', 'Wiecki', 1), ('Piotr', 'Skwarek', 1), ('Magdalena', 'Gessler', 2), ('Anita', 'Pietrzakowska', 2), ('Tomasz', 'Nowak', 3), ('Agata', 'Woliñska', 3), 
('Piotr', 'Jarosz', 4), ('Tomasz', 'Bronder', 4);