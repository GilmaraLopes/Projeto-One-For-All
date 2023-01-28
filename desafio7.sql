SELECT
    a.nomeArtista AS "artista",
    al.nomeAlbum AS "album",
    COUNT(s.idArtista) AS "seguidores"
FROM SpotifyClone.artista AS a
    INNER JOIN SpotifyClone.album AS al ON al.idArtista = a.idArtista
    INNER JOIN SpotifyClone.seguidor AS s ON s.idArtista = a.idArtista
GROUP BY al.idAlbum
ORDER BY
    COUNT("seguidores") DESC,
    a.nomeArtista,
    al.nomeAlbum;