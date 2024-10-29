-- Create and use the mystery game database
CREATE DATABASE IF NOT EXISTS manor_mystery;
USE manor_mystery;

-- Create suspects table
CREATE TABLE suspects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL,
    description TEXT
);

-- Create evidence table
CREATE TABLE evidence (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(50),
    found_location VARCHAR(50),
    details TEXT
);

-- Create rooms table
CREATE TABLE rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_name VARCHAR(50) NOT NULL,
    description TEXT
);

-- Create clues table with a foreign key linking to rooms
CREATE TABLE clues (
    id INT AUTO_INCREMENT PRIMARY KEY,
    clue_text TEXT NOT NULL,
    room_id INT,
    FOREIGN KEY (room_id) REFERENCES rooms(id) ON DELETE CASCADE
);

-- Insert initial data into suspects table
INSERT INTO suspects (name, role, description) VALUES
('Mrs. Ravenscroft', 'Widow', 'The late owner’s wife, rumored to be jealous of others in his life.'),
('Ross', 'Assistant', 'The victim’s loyal assistant who has been hiding something.'),
('The Maid', 'Caretaker', 'Has worked in the mansion for years and knows its secrets.'),
('The Butler', 'Butler', 'Served the victim for many years, knows the family well.');

-- Insert initial data into evidence table
INSERT INTO evidence (name, type, found_location, details) VALUES
('Shattered Glass', 'Physical', 'Living Room', 'Glass with fingerprints found near the scene.'),
('Blood Stain', 'Physical', 'Carpet', 'Blood stain near the body, matching the victim.'),
('Knife', 'Weapon', 'Secret Room', 'The murder weapon, with unknown fingerprints.'),
('Poison Bottle', 'Substance', 'Kitchen', 'Contains traces of a lethal poison.');

-- Insert initial data into rooms table
INSERT INTO rooms (room_name, description) VALUES
('Living Room', 'A grand room with vintage furniture and a mysterious aura.'),
('Kitchen', 'Contains high-end utensils and has a tense atmosphere.'),
('Secret Room', 'A hidden room rarely seen by outsiders, rumored to hold secrets.'),
('Bedroom', 'Where the victim was last seen alive.');

-- Insert initial data into clues table
INSERT INTO clues (clue_text, room_id) VALUES
('You notice a hidden compartment in the bookshelf.', 1),
('A note reads: "Trust no one."', 3),
('A photo of the victim with an unknown figure.', 2),
('A key labeled "Secret Room" lies under the bed.', 4);
