SELECT
    COUNT(DISTINCT m.idMusica) AS "cancoes",
    COUNT(DISTINCT ar.idArtista) AS "artistas",
    COUNT(DISTINCT al.idAlbum) AS "albuns"
FROM SpotifyClone.musica AS m
    INNER JOIN SpotifyClone.album AS al ON m.idAlbum = al.idAlbum
    INNER JOIN SpotifyClone.artista AS ar ON al.idArtista = ar.idArtista;