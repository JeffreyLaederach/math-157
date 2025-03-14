SELECT artist.painting.PTR_NUM, artist.painter.PTR_LASTNAME, artist.painter.PTR_FIRSTNAME, artist.painting.PTNG_TITLE, artist.painting.PTNG_PRICE
FROM artist.painter, artist.painting
WHERE artist.painter.PTR_NUM = artist.painting.PTR_NUM
ORDER BY artist.painter.PTR_NUM;