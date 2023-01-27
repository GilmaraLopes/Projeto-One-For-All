SELECT
    u.nomeUsuario AS "usuario",
    IF(
        YEAR(MAX(h.data_reprod)) >= 2021,
        "Usuário ativo",
        "Usuário inativo"
    ) AS "status_usuario"
FROM SpotifyClone.usuario AS u
    INNER JOIN SpotifyClone.historico AS h ON u.idUsuario = h.idUsuario
GROUP BY u.nomeUsuario
ORDER BY u.nomeUsuario;