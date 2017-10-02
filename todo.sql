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

INSERT INTO todos (title, details, priority) VALUES ('listen to the new future album', 'boring i know', 3, current_TIMESTAMP);

INSERT INTO todos (title, details, priority) VALUES ('tell elan to feed spock', 'also get that stuff from', 3, current_TIMESTAMP )

INSERT INTO todos (title, detail, priority) VALUES ('practice the beatles becuase on guitar',  'run at tempo 5 times', 3, current_TIMESTAMP);

INSERT INTO todos (title, details, priority) VALUES ('try new voicings on becuase', 'if you choose a new voicing it needs to be easier to position in corresponence to the other chords also look at chord inversions', 3, current_TIMESTAMP);

INSERT INTO todos (title, details, proprity) VALUES ('get the rest of the trash out of the garage', 'it should take one load with both cars', 1 current_TIMESTAMP);

INSERT INTO todos (title, priority) VALUES ('play a round of edh with shannon', 1 , current_TIMESTAMP, current_TIMESTAMP);

INSERT INTO todos (title, detail, priorty) VALUES ('thoroughly judge the recent trejectory of the band the sword', 'they fudged a good thing', 3 , current_TIMESTAMP);

INSERT INTO todos (title, detail, priorty) VALUES ('listen to the black saint and the sinner lady', 'thanks charles', 3 , current_TIMESTAMP);

INSERT INTO todos (title, detail, priorty) VALUES ('research more about kind of blue', 'memorize the dates and check about the death of bop', 3 , current_TIMESTAMP);

INSERT INTO todos (title, detail, priorty) VALUES ('sign up for lightning talk', 'preferably not till next week', 3 , current_TIMESTAMP);

INSERT INTO todos (title, detail, priorty) VALUES ('find clips for talk', '1 prebob, 1 bop, 2 from kind of blue, and one post modal', 3 , current_TIMESTAMP);

INSERT INTO todos (title, detail, priorty) VALUES ('kind of blue musicians', 'note the ones of imortance', 3 , current_TIMESTAMP);

INSERT INTO todos (title, detail, priorty) VALUES ('thoroughly judge the recent trejectory of the band the sword', 'they fudged a good thing', 3 , current_TIMESTAMP);

INSERT INTO todos (title, detail, priorty) VALUES ('E', 'they fudged a good thing', 3 , current_TIMESTAMP);


SELECT * FROM todos;


SELECT completed_at FROM todos;


SELECT priority = 1 FROM todos;


UPDATE todos SET completed_at = current_TIMESTAMP WHERE completed_at = NULL;


DELETE FROM todos WHERE details = 'be rude about it';


SELECT * FROM todos WHERE completed_at is NULL AND priority = 3;


SELECT * FROM todos WHERE completed_at is NULL ORDER BY  priority ASC;


SELECT * FROM todos WHERE created_at >'2017-07-29' ORDER BY priority ASC;


SElECT title FROM todos WHERE priority = 5 AND completed_at is NULL ORDER BY created_at ASC LIMIT 1;
