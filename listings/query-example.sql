/* Esempio di query SQL per la gestione di tabelle in un database */
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) NOT NULL,
    Age INT,
    City VARCHAR(50)
);

ALTER TABLE Customer
ADD PhoneNumber VARCHAR(20);

ALTER TABLE Customer
DROP Email;

DROP TABLE Customer;

/* Esempi di comandi per l'inserimento, l'aggiornamento e la cancellazione dei dati */
INSERT INTO Customer (CustomerID, FirstName, LastName, Email)
VALUES (1, 'John', 'Doe', 'john.doe@example.com');

UPDATE Customer
SET FirstName = 'Jane'
WHERE CustomerID = 1;

DELETE FROM Customer
WHERE CustomerID = 1;

/* Esempi di query SQL per la manipolazione dei dati */
SELECT * FROM Customer;

SELECT * 
FROM Customer 
WHERE FirstName = 'John' AND LastName = 'Doe' 
ORDER BY LastName DESC, FirstName ASC;

/* Esempi di query con funzioni di aggregazione */
SELECT LastName, COUNT(*)
FROM Customer
GROUP BY LastName;

SELECT City, AVG(Age) 
FROM Customer 
GROUP BY City;

/* Esempio di query contente tutte le clausole definite dal linguaggio */
SELECT City, COUNT(CustomerID) 
FROM Customer 
WHERE Age >= 30 AND Age <= 50 
GROUP BY City 
ORDER BY City;
