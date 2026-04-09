-- Create table
CREATE TABLE sales (
    id INTEGER,
    data TEXT,
    produkt TEXT,
    cena INTEGER,
    ilosc INTEGER,
    region TEXT
);

-- Insert data
INSERT INTO sales VALUES
(1, '2024-01-01', 'Piwo', 10, 5, 'Warszawa'),
(2, '2024-01-01', 'Wino', 25, 2, 'Kraków'),
(3, '2024-01-02', 'Piwo', 10, 8, 'Warszawa'),
(4, '2024-01-02', 'Whisky', 100, 1, 'Gdańsk'),
(5, '2024-01-03', 'Wino', 25, 4, 'Kraków'),
(6, '2024-01-03', 'Czipsy', 5, 10, 'Warszawa'),
(7, '2024-01-04', 'Piwo', 10, 6, 'Warszawa'),
(8, '2024-01-04', 'Wino', 25, 3, 'Kraków'),
(9, '2024-01-05', 'Whisky', 100, 2, 'Gdańsk'),
(10, '2024-01-05', 'Czipsy', 5, 15, 'Warszawa');
