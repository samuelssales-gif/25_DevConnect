--DQL
CREATE LOGIN samuel WITH PASSWORD = '123';

CREATE USER samuel FOR LOGIN samuel;

DENY INSERT, UPDATE, DELETE 
TO samuel;

CREATE TABLE Usuario(
id INT not null
);

SELECT * fROM Usuario
