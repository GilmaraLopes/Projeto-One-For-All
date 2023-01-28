SELECT
    COUNT(h.idMusica) AS "quantidade_musicas_no_historico"
FROM
    SpotifyClone.historico AS h
    INNER JOIN SpotifyClone.usuario AS a ON a.idUsuario = h.idUsuario
WHERE
    a.nomeUsuario = "Barbara Liskov";