-- Providers table
CREATE TABLE providers (
    provider_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100),
    npi VARCHAR(10) UNIQUE,
    email VARCHAR(255),
    phone VARCHAR(20),
    organization VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- test changes by shiv --
