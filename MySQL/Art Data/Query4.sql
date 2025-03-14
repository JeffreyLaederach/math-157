SELECT artist.painting.PTNG_TITLE, artist.painting.PTNG_PRICE, artist.painter.PTR_FIRSTNAME, artist.painter.PTR_LASTNAME
FROM artist.painting, artist.painter
WHERE artist.painting.GAL_NUM = "" AND artist.painter.PTR_NUM = artist.painting.PTR_NUM;