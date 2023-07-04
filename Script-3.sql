SELECT DISTINCT name, duration 
FROM Track
WHERE duration = (SELECT MAX(duration) FROM Track);

SELECT DISTINCT name 
FROM Track
WHERE duration >= 60*3.5
ORDER BY name;

SELECT name 
FROM Collection 
WHERE release_year BETWEEN 2018 AND 2020
ORDER BY name;

SELECT name 
FROM Artist
WHERE name NOT LIKE '% %'
ORDER BY name;

SELECT name 
FROM Track
WHERE name LIKE '%мой%' OR name LIKE '%my%'
ORDER BY name;

SELECT GE.name, COUNT(AG.genre_id) 
FROM Artist_Genre AS AG JOIN Genre AS GE ON AG.genre_id = GE.genre_id
GROUP BY GE.name
ORDER BY GE.name;

SELECT COUNT(*) 
FROM Track AS TR JOIN Album AS AL ON TR.album_id = AL.album_id
WHERE AL.release_year BETWEEN 2019 AND 2020;

SELECT AL.name, AVG(TR.duration) 
FROM Track AS TR JOIN Album AS AL ON TR.album_id = AL.album_id
GROUP BY AL.name
ORDER BY AL.name;

SELECT AR.name 
FROM Artist_Album AS AA JOIN Artist AS AR ON AA.artist_id = AR.artist_id
						JOIN Album AS AL ON AA.album_id = AL.album_id
WHERE AL.release_year != 2020
GROUP BY AR.name
ORDER BY AR.name;

SELECT CO.name 
FROM Artist_Album AS AA JOIN Artist AS AR ON AA.artist_id = AR.artist_id
						JOIN Album AS AL ON AA.album_id = AL.album_id
						JOIN Track AS TR ON AL.album_id = TR.album_id
						JOIN Collection_Track AS CT ON TR.track_id = CT.track_id
						JOIN Collection AS CO ON CT.collection_id = CO.collection_id
WHERE AR.name = 'Artist_1'
GROUP BY CO.name
ORDER BY CO.name;

SELECT AL.name 
FROM Artist_Genre AS AG JOIN Genre AS GE ON AG.genre_id = GE.genre_id 
						JOIN Artist AS AR ON AG.artist_id = AR.artist_id
						JOIN Artist_Album AS AA ON AG.artist_id = AA.artist_id
						JOIN Album AS AL ON AA.album_id = AL.album_id
GROUP BY AL.name
HAVING COUNT(AG.genre_id) > 1
ORDER BY AL.name;

SELECT TR.name 
FROM Track AS TR LEFT JOIN Collection_Track AS CT ON TR.track_id = CT.track_id
WHERE CT.collection_id IS NULL
GROUP BY TR.name
ORDER BY TR.name;

SELECT AR.name 
FROM Track AS TR JOIN Artist_Album AS AA ON TR.album_id = AA.album_id
		 JOIN Artist AS AR ON AA.artist_id = AR.artist_id
WHERE TR.duration = (SELECT MIN(TR.duration) FROM Track AS TR)
GROUP BY AR.name
ORDER BY AR.name;

SELECT AL.name 
FROM Album AS AL JOIN Track AS TR ON AL.album_id = TR.album_id 
GROUP BY TR.album_id, AL.name
ORDER BY COUNT(*) 
LIMIT 1;