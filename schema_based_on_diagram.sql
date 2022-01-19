/* Create the tables using the following commands */
CREATE TABLE IF NOT EXISTS patients(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    date_of_birth DATE,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS treatments(
    id INT GENERATED ALWAYS AS IDENTITY,
    type VARCHAR(255),
    name VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS medical_histories(
    id INT GENERATED ALWAYS AS IDENTITY,
    anmited_at TIMESTAMP,
    patient_id INT,
    status VARCHAR(50),
    PRIMARY KEY (id),
    CONSTRAINT fk_patients_medical_histories
        FOREIGN KEY(patient_id)
            REFERENCES patients(id)   
);
