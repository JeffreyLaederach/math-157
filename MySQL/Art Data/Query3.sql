SELECT artist.gallery.GAL_NUM, artist.gallery.GAL_OWNER, artist.painting.PTNG_TITLE, artist.painting.PTNG_PRICE, artist.painter.PTR_FIRSTNAME, artist.painter.PTR_LASTNAME
FROM artist.gallery, artist.painting, artist.painter
WHERE artist.gallery.GAL_NUM = artist.painting.GAL_NUM AND artist.painter.PTR_NUM = artist.painting.PTR_NUM
ORDER BY artist.gallery.GAL_OWNER DESC, artist.painter.PTR_FIRSTNAME ASC, artist.painting.PTNG_TITLE ASC;