INSERT INTO Artist (name) 
VALUES 
('Artist_1'), 
('Artist 2'), 
('Artist 3'), 
('Artist_4');

INSERT INTO Genre (name) 
VALUES 
('Genre_1'), 
('Genre_2'), 
('Genre_3');

INSERT INTO Album (name, release_year) 
VALUES 
('Name_Album_1', 2019), 
('Name_Album_2', 1971), 
('Name_Album_3', 2020),
('Name_Album_4', 1972);

INSERT INTO Collection (name, release_year) 
VALUES 
('Name_Collection_1', 1980), 
('Name_Collection_2', 2018),
('Name_Collection_3', 2020),
('Name_Collection_4', 2019),
('Name_Collection_5', 2021);

INSERT INTO Track (album_id, name, duration) 
VALUES 
(1, 'Name my', 120), 
(1, 'my Name', 125),
(1, 'by myself', 121),
(1, 'bemy self', 122),
(1, 'myself by', 123),
(1, 'by myself by', 124),
(1, 'beemy', 126),
(1, 'premyne', 127),
(1, 'my', 230),
(2, 'Name my Track', 130),
(2, 'Name мой', 125),
(3, 'мой Name', 135),
(3, 'мой', 140),
(3, 'Name мой Track', 240),
(3, 'myself', 120),
(4, 'Track_4_1', 136),
(4, 'Track_4_2', 139);

INSERT INTO Artist_Album (artist_id, album_id) 
VALUES 
(1, 1), 
(2, 2),
(2, 3),
(3, 3),
(4, 3);

INSERT INTO Artist_Genre (artist_id, genre_id) 
VALUES 
(1, 1), 
(1, 2),
(2, 2),
(3, 3),
(3, 2),
(4, 3);

INSERT INTO Collection_Track (collection_id, track_id) 
VALUES 
(1, 1), 
(1, 2),
(1, 3),
(2, 4),
(2, 5), 
(3, 6),
(3, 1),
(3, 2),
(3, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 1),
(4, 2);
