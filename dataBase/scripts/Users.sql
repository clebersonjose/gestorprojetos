CREATE TABLE Users (
  id SERIAL NOT NULL,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,

  PRIMARY KEY (id),
  UNIQUE (id,email)
);
