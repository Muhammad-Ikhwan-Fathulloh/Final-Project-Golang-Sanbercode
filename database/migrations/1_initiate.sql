CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  user_fullname VARCHAR(150),
  user_username VARCHAR(100),
  user_password VARCHAR(125),
  user_email VARCHAR(125),
  created_at TIMESTAMP NOT NULL DEFAULT (now()),
  updated_at TIMESTAMP
);

CREATE TABLE community (
  community_id SERIAL PRIMARY KEY,
  community_name VARCHAR(150),
  community_logo VARCHAR(256),
  community_image VARCHAR(256),
  community_description VARCHAR(500),
  community_address VARCHAR(256),
  community_latitude VARCHAR(125),
  community_longitude VARCHAR(125),
  community_info VARCHAR(256),
  created_at TIMESTAMP NOT NULL DEFAULT (now()),
  created_by INT,
  updated_at TIMESTAMP,
  updated_by INT,
);

CREATE TABLE event_categories (
  event_category_id SERIAL PRIMARY KEY,
  event_category_name VARCHAR(150),
  event_category_description VARCHAR(256),
  created_at TIMESTAMP NOT NULL DEFAULT (now()),
  created_by INT,
  updated_at TIMESTAMP,
  updated_by INT,
);

CREATE TABLE events (
  event_category_id SERIAL PRIMARY KEY,
  community_id INT,
  event_category_id INT,
  event_name VARCHAR(150),
  event_logo VARCHAR(256),
  event_image VARCHAR(256),
  event_description VARCHAR(500),
  event_address VARCHAR(256),
  event_latitude VARCHAR(125),
  event_longitude VARCHAR(125),
  event_start_date VARCHAR(100),
  event_finish_date VARCHAR(100),
  created_at TIMESTAMP NOT NULL DEFAULT (now()),
  created_by INT,
  updated_at TIMESTAMP,
  updated_by INT,
);

CREATE TABLE event_participants (
  event_participant_id SERIAL PRIMARY KEY,
  event_id INT,
  event_participant_name VARCHAR(150),
  event_participant_email VARCHAR(125),
  event_participant_no_hp VARCHAR(125),
  event_participant_community VARCHAR(125),
  event_participant_status INT,
  created_at TIMESTAMP NOT NULL DEFAULT (now()),
  updated_at TIMESTAMP,
);