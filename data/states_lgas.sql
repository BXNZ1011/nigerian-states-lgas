-- Create table for Nigerian states
CREATE TABLE states (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    capital VARCHAR(50),
    population BIGINT
);

-- Create table for Local Government Areas (LGAs)
CREATE TABLE lgas (
    id SERIAL PRIMARY KEY,
    state_id INT REFERENCES states(id),
    name VARCHAR(50)
);

-- Insert sample states
INSERT INTO states (name, capital, population) VALUES
('Lagos', 'Ikeja', 21400000),
('Kano', 'Kano', 13000000),
('Rivers', 'Port Harcourt', 7500000);

-- Insert LGAs for Lagos
INSERT INTO lgas (state_id, name) VALUES
(1, 'Agege'),
(1, 'Alimosho'),
(1, 'Epe'),
(1, 'Ikorodu'),
(1, 'Surulere');

-- Insert LGAs for Kano
INSERT INTO lgas (state_id, name) VALUES
(2, 'Dala'),
(2, 'Fagge'),
(2, 'Gwale'),
(2, 'Kumbotso'),
(2, 'Tarauni');

-- Insert LGAs for Rivers
INSERT INTO lgas (state_id, name) VALUES
(3, 'Obio/Akpor'),
(3, 'Ikwerre'),
(3, 'Okrika'),
(3, 'Bonny'),
(3, 'Degema');
