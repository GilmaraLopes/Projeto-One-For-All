SELECT
    m.nomeMusica AS "cancao",
    COUNT(h.data_reprod) AS "reproducoes"
FROM
    SpotifyClone.historico AS h
    INNER JOIN SpotifyClone.musica AS m ON m.idMusica = h.idMusica
GROUP BY m.nomeMusica
ORDER BY
    COUNT("reproducoes") DESC,
    "cancao"
LIMIT 2;