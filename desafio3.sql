SELECT
    u.nomeUsuario AS "usuario",
    COUNT(m.idMusica) AS "qt_de_musicas_ouvidas",
    ROUND(SUM(m.duracao) / 60, 2) AS "total_minutos"
FROM SpotifyClone.usuario AS u
    INNER JOIN SpotifyClone.historico AS h ON u.idUsuario = h.idUsuario
    inner JOIN SpotifyClone.musica AS m ON m.idMusica = h.idMusica
GROUP BY u.nomeUsuario
ORDER BY u.nomeUsuario ASC;