SELECT
    m.nomeMusica AS "nome",
    COUNT(u.idUsuario) AS "reproducoes"
FROM
    SpotifyClone.historico AS h
    INNER JOIN SpotifyClone.usuario AS u ON u.idUsuario = h.idUsuario
    INNER JOIN SpotifyClone.musica AS m ON m.idMusica = h.idMusica
    INNER JOIN SpotifyClone.plano AS p ON p.idPlano = u.idPlano
WHERE
    p.categoria = "gratuito"
    OR p.categoria = "pessoal"
GROUP BY m.nomeMusica
ORDER BY m.nomeMusica;