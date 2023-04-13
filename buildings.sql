CREATE TABLE IF NOT EXISTS buildings (
  name VARCHAR(80) NOT NULL, 
  shortname VARCHAR(10) UNIQUE, 
  id INTEGER PRIMARY KEY AUTOINCREMENT
); 

INSERT INTO buildings (name, shortname) VALUES 
  ('Kane Hall', 'KNE'), 
  ('Husky Union Building', 'HUB'), 
  ('Savery Hall', 'SAV'), 
  ('Gowen Hall', 'GWN');

CREATE TABLE IF NOT EXISTS rooms (
  number INTEGER, 
  buildingid INTEGER REFERENCES buildings(id),
  seating INTEGER 
);

INSERT INTO rooms VALUES 
  (230, (SELECT id FROM buildings WHERE name="Kane Hall"), 20),
  (300, (SELECT id FROM buildings WHERE name="Husky Union Building"), 40),
  (200, (SELECT id FROM buildings WHERE name="Savery Hall"), 50),
  (210, (SELECT id FROM buildings WHERE name="Gowen Hall"), 30);
