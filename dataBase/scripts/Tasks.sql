CREATE TYPE scale AS ENUM('1', '2', '3', '4', '5');

CREATE TABLE Tasks (
  id SERIAL NOT NULL,
  columnId INT NOT NULL,
  userId INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  content VARCHAR(50),
  position INT NOT NULL,
  priority scale NOT NULL,
  delivery DATE NOT NULL,
  effort scale NOT NULL,
  impact scale NOT NULL,

  PRIMARY KEY (id),

  FOREIGN KEY (columnId)
    REFERENCES Columns(id),

  FOREIGN KEY (userId)
    REFERENCES Users(id)
);
