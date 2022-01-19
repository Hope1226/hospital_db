/* Create the tables using the following commands */
CREATE TABLE IF NOT EXISTS patients(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    date_of_birth DATE
);

CREATE TABLE IF NOT EXISTS treatments(
    id INT GENERATED ALWAYS AS IDENTITY,
    type VARCHAR(255),
    name VARCHAR(255)
);