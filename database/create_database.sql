-- Create the mystery game database
CREATE DATABASE IF NOT EXISTS manor_mystery;
USE manor_mystery;

-- Table to store suspects
CREATE TABLE suspects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL,
    description TEXT
);

-- Table to store evidence
CREATE TABLE evidence (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(50),
    found_location VARCHAR(50),
    details TEXT
);

-- Table to store rooms in the manor
CREATE TABLE rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_name VARCHAR(50) NOT NULL,
    description TEXT
);

-- Table to link clues to rooms
CREATE TABLE clues (
    id INT AUTO_INCREMENT PRIMARY KEY,
    clue_text TEXT NOT NULL,
    room_id INT,
    FOREIGN KEY (room_id) REFERENCES rooms(id) ON DELETE CASCADE
);
