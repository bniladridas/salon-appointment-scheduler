CREATE DATABASE salon;

\c salon

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    phone VARCHAR UNIQUE,
    name VARCHAR
);

CREATE TABLE services (
    service_id SERIAL PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE appointments (
    appointment_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id),
    service_id INTEGER REFERENCES services(service_id),
    time VARCHAR
);

-- Grant permissions to freecodecamp
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO freecodecamp;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO freecodecamp;

-- Insert at least 3 services
INSERT INTO services(name) VALUES ('cut');
INSERT INTO services(name) VALUES ('color');
INSERT INTO services(name) VALUES ('perm');
INSERT INTO services(name) VALUES ('style');
INSERT INTO services(name) VALUES ('trim');
