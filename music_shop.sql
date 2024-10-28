create table if not exists singer (
 singer_ID INTEGER primary key not null,
 name VARCHAR(60) not null
 );
 
create table if not exists genre ( 
 genre_ID INTEGER primary key not null, 
 Title_of_Genre varchar(60) not null
);

create table if not exists Singer_Genre (
id serial primary key not null,
singer_ID INTEGER references Singer(Singer_ID),
genre_ID INTEGER references Genre(Genre_ID)
 );
 
create table if not exists album (
album_ID INTEGER primary key not null,
title_of_album varchar(60) not null,
year INTEGER
);

create table if not exists song (
 song_ID INTEGER primary key not null,
 title_of_song varchar(60) not null,
 time time(2) not null,
 album_ID INTEGER references album(album_ID)
);

create table if not exists singer_album (
 id SERIAL primary key not null,
album_ID INTEGER references album(album_ID),
singer_ID INTEGER references singer(singer_ID)
);

create table if not exists collection (
 collection_ID INTEGER primary key not null,
 title varchar(60) not null,
 year INTEGER
);

create table if not exists Song_Collection (
id SERIAl primary key not null,  
song_ID INTEGER references Song(Song_ID),
collection_ID INTEGER references collection(collection_ID)
);
