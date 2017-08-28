CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(500) NULL ,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL DEFAULT now(),
  completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, completed_at) VALUES ('Watch the newest needledrop video', 'it is on their youtube channel', 1, current_TIMESTAMP, current_TIMESTAMP);

INSERT INTO todos (title, details, priority,) VALUES ('tell my friends how much i hate them', 'be rude about it', 1, current_TIMESTAMP,);

INSERT INTO todos (title, details, priority,) VALUES ('stand upside down for 64 and 1/2 hours', 'this will not be fun at all', 1, current_TIMESTAMP,);

INSERT INTO todos (title, details, priority,) VALUES ('play number-munchers', 'this must last for an absoloutly far too long ammount of time. which will also not be fun because you are not the best at math.', 1, current_TIMESTAMP,);

INSERT INTO todos (title, details, priority,) VALUES ('make a beautiful sculpture and destroy it before any one can see it', 'nuff said', 1, current_TIMESTAMP,);

SELECT * FROM todos;

SELECT completed_at FROM todos;

SELECT priority = 1 FROM todos;

UPDATE todos SET completed_at = current_TIMESTAMP WHERE completed_at = NULL;

DELETE FROM todos WHERE details = 'be rude about it';
