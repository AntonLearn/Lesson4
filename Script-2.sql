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
('Name_Album_3', 2020);

INSERT INTO Collection (name, release_year) 
VALUES 
('Name_Collection_1', 1980), 
('Name_Collection_2', 2018),
('Name_Collection_3', 2020),
('Name_Collection_4', 2019),
('Name_Collection_5', 2021);

INSERT INTO Track (album_id, name, duration) 
VALUES 
(1, 'Name_Track_1', 120), 
(1, 'Name_my_Track_2', 125),
(1, 'Name_Track_7', 230),
(2, 'Name_my_Track_3', 130),
(2, 'Name_Track_4', 125),
(3, 'Name_Track_5', 135),
(3, 'Name_мой_Track_6', 140),
(3, 'Name_Track_8', 240),
(3, 'Name_Track_9', 120);

INSERT INTO Artist_Album (artist_id, album_id) 
VALUES 
(1, 1), 
(2, 2),
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