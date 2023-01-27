DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE
    SpotifyClone.plano(
        idPlano INT AUTO_INCREMENT PRIMARY KEY,
        categoria VARCHAR(50) NOT NULL,
        valor DOUBLE NOT NULL
    );

CREATE TABLE
    SpotifyClone.usuario(
        idUsuario INT AUTO_INCREMENT PRIMARY KEY,
        nomeUsuario VARCHAR(255) NOT NULL,
        idade INT NOT NULL,
        idPlano INT NOT NULL,
        assinatura_data DATE NOT NULL,
        CONSTRAINT FOREIGN KEY(idPlano) REFERENCES plano(idPlano)
    );

CREATE TABLE
    SpotifyClone.artista(
        idArtista INT AUTO_INCREMENT PRIMARY KEY,
        nomeArtista VARCHAR(50) NOT NULL
    );

CREATE TABLE
    SpotifyClone.album(
        idAlbum INT AUTO_INCREMENT PRIMARY KEY,
        nomeAlbum VARCHAR(50) NOT NULL,
        idArtista INT NOT NULL,
        ano_lancamento INT NOT NULL,
        FOREIGN KEY(idArtista) REFERENCES artista(idArtista)
    );

CREATE TABLE
    SpotifyClone.musica(
        idMusica INT AUTO_INCREMENT PRIMARY KEY,
        nomeMusica VARCHAR(50) NOT NULL,
        idAlbum INT NOT NULL,
        duracao INT NOT NULL,
        FOREIGN KEY(idAlbum) REFERENCES album(idAlbum)
    );

CREATE TABLE
    SpotifyClone.historico(
        idUsuario INT NOT NULL,
        idMusica INT NOT NULL,
        data_reprod DATETIME NOT NULL,
        PRIMARY KEY(idUsuario, idMusica),
        FOREIGN KEY(idUsuario) REFERENCES usuario(idUsuario),
        FOREIGN KEY(idMusica) REFERENCES musica(idMusica)
    );

CREATE TABLE
    SpotifyClone.seguidor(
        idUsuario INT NOT NULL,
        idArtista INT NOT NULL,
        CONSTRAINT PRIMARY KEY(idUsuario, idArtista),
        FOREIGN KEY(idUsuario) REFERENCES usuario(idUsuario),
        FOREIGN KEY(idArtista) REFERENCES artista(idArtista)
    );

INSERT INTO
    SpotifyClone.plano(categoria, valor)
VALUES ("gratuito", 0.00), ("familiar", 7.99), ("universitário", 5.99), ("pessoal", 6.99);

INSERT INTO
    SpotifyClone.usuario(
        nomeUsuario,
        idade,
        assinatura_data,
        idPlano
    )
VALUES (
        'Barbara Liskov',
        82,
        '2019-10-20',
        1
    ), (
        'Robert Cecil Martin',
        58,
        '2017-01-06',
        1
    ), (
        'Ada Lovelace',
        37,
        '2017-12-30',
        2
    ), (
        'Martin Fowler',
        46,
        '2017-01-17',
        2
    ), (
        'Sandi Metz',
        58,
        '2018-04-29',
        2
    ), (
        'Paulo Freire',
        19,
        '2018-02-14',
        3
    ), (
        'Bell Hooks',
        26,
        '2018-01-05',
        3
    ), (
        'Christopher Alexander',
        85,
        '2019-06-05',
        4
    ), (
        'Judith Butler',
        45,
        '2020-05-13',
        4
    ), (
        'Jorge Amado',
        58,
        '2017-02-17',
        4
    );

INSERT INTO
    SpotifyClone.artista(nomeArtista)
VALUES ("Beyoncé"), ("Queen"), ("Elis Regina"), ("Baco Exu do Blues"), ("Blind Guardian"), ("Nina Simone");

INSERT INTO
    SpotifyClone.album(
        nomeAlbum,
        idArtista,
        ano_lancamento
    )
VALUES ('Renaissance', 1, 2022), ('Jazz', 2, 1978), ('Hot Space', 2, 1982), ('Falso Brilhante', 3, 1998), ('Vento de Maio', 3, 2001), ('QVVJFA?', 4, 2003), (
        'Somewhere Far Beyond',
        5,
        2007
    ), (
        'I Put A Spell On You',
        6,
        2012
    );

INSERT INTO
    SpotifyClone.musica(nomeMusica, idAlbum, duracao)
VALUES ("BREAK MY SOUL", 1, 279), ("VIRGO’S GROOVE", 1, 369), ("ALIEN SUPERSTAR", 1, 116), ("Don’t Stop Me Now", 2, 203), ("Under Pressure", 3, 152), ("Como Nossos Pais", 4, 105), (
        "O Medo de Amar é o Medo de Ser Livre",
        5,
        207
    ), ("Samba em Paris", 6, 267), ("The Bard’s Song", 7, 244), ("Feeling Good", 8, 100);

INSERT INTO
    SpotifyClone.historico(
        idUsuario,
        idMusica,
        data_reprod
    )
VALUES (1, 8, '2022-02-28 10:45:55'), (1, 2, '2020-05-02 05:30:35'), (1, 10, '2020-03-06 11:22:33'), (2, 10, '2022-08-05 08:05:17'), (2, 7, '2020-01-02 07:40:33'), (3, 10, '2020-11-13 16:55:13'), (3, 2, '2020-12-05 18:38:30'), (4, 8, '2021-08-15 17:10:10'), (5, 8, '2022-01-09 01:44:33'), (5, 5, '2020-08-06 15:23:43'), (6, 7, '2017-01-24 00:31:17'), (6, 1, '2017-10-12 12:35:20'), (7, 4, '2011-12-15 22:30:49'), (8, 4, '2012-03-17 14:56:41'), (9, 9, '2022-02-24 21:14:22'), (10, 3, '2015-12-13 08:30:22');

INSERT INTO
    SpotifyClone.seguidor(idUsuario, idArtista)
VALUES (1, 1), (1, 2), (1, 3), (2, 1), (2, 3), (3, 2), (4, 4), (5, 5), (5, 6), (6, 6), (6, 1), (7, 6), (9, 3), (10, 2);