SELECT
    ROUND(MIN(p.valor), 2) AS "faturamento_minimo",
    ROUND(MAX(p.valor), 2) AS "faturamento_maximo",
    ROUND(AVG(p.valor), 2) AS "faturamento_medio",
    ROUND(SUM(p.valor), 2) AS "faturamento_total"
FROM
    SpotifyClone.plano AS p
    INNER JOIN SpotifyClone.usuario AS u ON p.idPlano = u.idPlano;