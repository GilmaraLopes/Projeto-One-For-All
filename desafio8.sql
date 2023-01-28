SELECT
    a.nomeArtista AS "artista",
    al.nomeAlbum AS "album"
FROM SpotifyClone.artista AS a
    INNER JOIN SpotifyClone.album AS al ON al.idArtista = a.idArtista
WHERE
    a.nomeArtista = "Elis Regina"
ORDER BY al.nomeAlbum;