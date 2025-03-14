SELECT artist.painter.PTR_NUM, artist.painter.PTR_LASTNAME, artist.painter.PTR_FIRSTNAME, COUNT(*) AS "NUMofPAINT", ROUND(MAX(artist.painting.PTNG_PRICE),1) AS Max, ROUND(MIN(artist.painting.PTNG_PRICE),1) AS Min, ROUND(AVG(artist.painting.PTNG_PRICE),1) AS Average
FROM artist.painter, artist.painting
WHERE artist.painter.PTR_NUM = artist.painting.PTR_NUM
GROUP BY artist.painter.PTR_NUM, artist.painter.PTR_LASTNAME, artist.painter.PTR_FIRSTNAME;