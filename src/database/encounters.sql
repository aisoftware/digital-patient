-- Encounters table
CREATE TABLE encounters (
    encounter_id SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCES patients(patient_id),
    provider_id INTEGER REFERENCES providers(provider_id),
    encounter_type VARCHAR(50),
    encounter_date TIMESTAMP NOT NULL,
    status VARCHAR(20),
    chief_complaint TEXT,
    diagnosis TEXT,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
