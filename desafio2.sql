SELECT
    COUNT(DISTINCT m.idMusica) AS "cancoes",
    COUNT(DISTINCT ar.idArtista) AS "artistas",
    COUNT(DISTINCT al.idAlbum) AS "albuns"
from SpotifyClone.musica AS m
    inner join SpotifyClone.album as al ON m.idAlbum = al.idAlbum
    inner join SpotifyClone.artista as ar ON al.idArtista = ar.idArtista;