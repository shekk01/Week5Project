DROP TABLE bookings;
DROP TABLE members;
DROP TABLE gym_classes;

CREATE TABLE members (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255)
);

CREATE TABLE gym_classes (
  id SERIAL PRIMARY KEY,
  instructor VARCHAR(255),
  name VARCHAR(255),
  date DATE,
  time TIME,
  duration INT,
  capacity INT
);

CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  member_id INT REFERENCES members(id) ON DELETE CASCADE,
  gym_class_id INT REFERENCES gym_classes(id) ON DELETE CASCADE,
  UNIQUE(member_id, gym_class_id)
);

CREATE TABLE staff_members (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  job_type VARCHAR(255)
);