CREATE TABLE IF NOT EXISTS Artist (
	artist_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
	); 
CREATE TABLE IF NOT EXISTS Genre (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL
	); 
CREATE TABLE IF NOT EXISTS Album (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	release_year INTEGER NOT NULL
	); 
CREATE TABLE IF NOT EXISTS Collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	release_year INTEGER NOT NULL
	);
CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES Album(album_id),
	name VARCHAR(80) NOT NULL,
	duration INTEGER NOT NULL
	); 
CREATE TABLE IF NOT EXISTS Artist_Album (
	artist_album_id SERIAL PRIMARY KEY,
	artist_id INTEGER REFERENCES Artist(artist_id),
	album_id INTEGER REFERENCES Album(album_id)
	);
CREATE TABLE IF NOT EXISTS Artist_Genre (
	artist_genre_id SERIAL PRIMARY KEY,
	artist_id INTEGER REFERENCES Artist(artist_id),
	genre_id INTEGER REFERENCES Genre(genre_id)
	); 
CREATE TABLE IF NOT EXISTS Collection_Track (
	collection_id INTEGER REFERENCES Collection(collection_id),
	track_id INTEGER REFERENCES Track(track_id),
	CONSTRAINT collection_track_id PRIMARY KEY(collection_id, track_id)
	);