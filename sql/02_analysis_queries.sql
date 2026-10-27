SELECT COUNT(*)
FROM title_countries tc
JOIN countries c ON c.country_id = tc.country_id
WHERE c.country = 'Spain';

SELECT g.genre, COUNT(*) AS titles
FROM title_genres tg
JOIN genres g ON tg.genre_id = g.genre_id
GROUP BY g.genre
ORDER BY titles DESC;
 