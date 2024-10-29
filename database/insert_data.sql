USE manor_mystery;

-- Insert suspects
INSERT INTO suspects (name, role, description) VALUES
('Mrs. Ravenscroft', 'Widow', 'The late owner’s wife, rumored to be jealous'),
('Ross', 'Assistant', 'The victim’s loyal assistant'),
('The Maid', 'Maid', 'Caretaker of the mansion’s secrets'),
('The Butler', 'Butler', 'A longtime servant, he knows every corner of the manor');

-- Insert evidence
INSERT INTO evidence (name, type, found_location, details) VALUES
('Shattered Glass', 'Physical', 'Living Room', 'Glass with fingerprints'),
('Blood Stain', 'Physical', 'Carpet', 'Blood stain near the body'),
('Knife', 'Weapon', 'Secret Room', 'The murder weapon with unknown fingerprints'),
('Poison Bottle', 'Substance', 'Kitchen', 'Contains lethal poison');

-- Insert rooms
INSERT INTO rooms (room_name, description) VALUES
('Living Room', 'A grand room with vintage furniture'),
('Kitchen', 'Filled with high-end utensils and a mysterious atmosphere'),
('Secret Room', 'A hidden room, rarely seen by anyone'),
('Bedroom', 'The last known location of the victim');

-- Insert clues linked to rooms
INSERT INTO clues (clue_text, room_id) VALUES
('You notice a hidden compartment in the bookshelf.', 1),
('A note reads: "Trust no one."', 3),
('You find a photo of the victim and a mysterious figure.', 2),
('A key labeled "Secret Room" lies under the bed.', 4);
