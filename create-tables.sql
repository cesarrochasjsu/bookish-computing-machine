drop database if exists mangalist;
create database mangalist;
use mangalist;

CREATE TABLE manga (
  manga_id         INT AUTO_INCREMENT NOT NULL,
  title      VARCHAR(128) NOT NULL,
  description     VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
  foreign key (Manga_ID) references Created(A_ID)
  on delete set null
);


CREATE TABLE created (
  A_ID			INT AUTO_INCREMENT NOT NULL,
  manga_id         INT AUTO_INCREMENT NOT NULL,
  primary key (A_ID, manga_id),
  foreign key (A_ID) references Create(A_ID)
  on delete set null
);

create table author
	(A_ID			INT AUTO_INCREMENT NOT NULL,
	 name			varchar(20) not null, 
	 a_name		varchar(20), 
	 primary key (A_ID),
	 foreign key (A_ID) references Created(A_ID)
		on delete set null
	);

INSERT INTO manga
  (title, description)
VALUES
  ('Bad Anime', 'This anime is bad'),
  ('Good anime', 'This anime is good'),
  ('Whatever anime', 'This anime is good'),
  ('Jeru', 'Gerry Mulligan');
