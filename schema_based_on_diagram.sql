/* Create the tables using the following commands */
CREATE TABLE IF NOT EXISTS patients(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    date_of_birth DATE
);