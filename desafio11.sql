SELECT
    nomeMusica AS "nome_musica",
    CASE
        WHEN nomeMusica LIKE "%Bard%" THEN
        REPLACE (nomeMusica, "Bard", "QA")
            WHEN nomeMusica LIKE "%Amar%" THEN
        REPLACE (
                nomeMusica,
                "Amar",
                "Code Review"
            )
            WHEN nomeMusica LIKE "%Pais" THEN
        REPLACE (
                nomeMusica,
                "Pais",
                "Pull Requests"
            )
            WHEN nomeMusica LIKE "%SOUL" THEN
        REPLACE (nomeMusica, "SOUL", "CODE")
            WHEN nomeMusica LIKE "%SUPERSTAR" THEN
        REPLACE (
                nomeMusica,
                "SUPERSTAR",
                "SUPERDEV"
            )
            ELSE nomeMusica
    END AS novo_nome
FROM SpotifyClone.musica
WHERE
    nomeMusica LIKE '%Bard%'
    OR nomeMusica LIKE '%Amar%'
    OR nomeMusica LIKE '%Pais'
    OR nomeMusica LIKE '%SOUL'
    OR nomeMusica LIKE '%SUPERSTAR'
ORDER BY nomeMusica DESC;