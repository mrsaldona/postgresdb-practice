CREATE TABLE IF NOT EXISTS klienci (
                                       idklienta int PRIMARY KEY NOT NULL,
                                       imie varchar(50) not null,
    nazwisko varchar(50) not null,
    miejscowosc varchar(50) not null
    );

INSERT INTO klienci (idklienta, imie, nazwisko, miejscowosc) VALUES
                                                                 (1, 'Łukasz', 'Lewandowski', 'Poznań'),
                                                                 (2, 'Jan', 'Nowak', 'Katowice'),
                                                                 (3, 'Maciej', 'Wójcik', 'Bydgoszcz'),
                                                                 (4, 'Agnieszka', 'Jankowska', 'Lublin'),
                                                                 (5, 'Tomasz', 'Mazur', 'Jelenia Góra'),
                                                                 (6, 'Michał', 'Zieliński', 'Kraków'),
                                                                 (7, 'Artur', 'Rutkowski', 'Kielce'),
                                                                 (8, 'Mateusz', 'Skorupa', 'Gdańsk'),
                                                                 (9, 'Jerzy', 'Rutkowski', 'Rybnik'),
                                                                 (10, 'Anna', 'Karenina', 'Pułtusk');

CREATE TABLE IF NOT EXISTS ksiazki (
                                       idksiazki int PRIMARY KEY NOT NULL,
                                       imieautora varchar(50) not null,
    nazwiskoautora varchar(50) not null,
    tytul varchar(50) not null,
    cena float not null
    );
INSERT INTO ksiazki (idksiazki, imieautora, nazwiskoautora, tytul, cena) VALUES
                                                                             (1, 'Jan', 'Michalak', 'Zaawansowane programowanie w PHP', 47.29),
                                                                             (2, 'Andrzej', 'Krawczyk', 'Windows 8 PL. Zaawansowana administracja systemem', 49.99),
                                                                             (3, 'Paweł', 'Jakubowski', 'HTML5. Tworzenie witryn', 53.65),
                                                                             (4, 'Tomasz', 'Kowalski', 'Urządzenia techniki komputerowej', 34.15),
                                                                             (5, 'Łukasz', 'Pasternak', 'PHP. Tworzenie nowoczesnych stron WWW', 29.99);

CREATE TABLE IF NOT EXISTS zamowienia (
                                          idzamowienia int PRIMARY KEY NOT NULL,
                                          idkienta int not null,
                                          idksiazki int not null,
                                          data date not null,
                                          status varchar(50) not null,
    klienci_ID int references klienci(idklienta),
    ksiazki_ID int references ksiazki(idksiazki)
    );

INSERT INTO zamowienia (idzamowienia, idkienta, idksiazki, data, status) VALUES
                                                                             (1, 2, 4, '2014-10-08', 'oczekiwanie'),
                                                                             (2, 7, 1, '2014-09-05', 'wyslano'),
                                                                             (3, 9, 1, '2014-10-11', 'wyslano'),
                                                                             (4, 2, 2, '2014-10-15', 'oczekiwanie'),
                                                                             (5, 2, 5, '2014-08-12', 'oczekiwanie'),
                                                                             (6, 3, 2, '2014-10-20', 'wyslano'),
                                                                             (7, 4, 3, '2014-08-14', 'wyslano'),
                                                                             (8, 8, 1, '2014-08-19', 'wyslano'),
                                                                             (9, 3, 5, '2014-11-19', 'wyslano'),
                                                                             (10, 9, 2, '2014-12-28', 'oczekiwanie');