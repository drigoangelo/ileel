DROP DATABASE   IF     EXISTS dataset;
CREATE DATABASE IF NOT EXISTS dataset;
USE dataset;

CREATE TABLE IF NOT EXISTS dataset.tb_modulo  (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome   varchar(30),
    descricao varchar(250)
);
  
CREATE TABLE IF NOT EXISTS dataset.tb_usuario(
    id              INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome            VARCHAR(120) NOT NULL,
    -- sobrenome       VARCHAR(45) NOT NULL,
    -- user_id         SERIAL,
    cpf             VARCHAR(14) NOT NULL,
    senha           VARCHAR(60) NOT NULL,
    email           VARCHAR(45) UNIQUE,
    dt_nascimento   DATE NOT NULL,
    sexo            VARCHAR(11) NOT NULL,
    nacionalidade   VARCHAR(15) NOT NULL,
    cidade          VARCHAR(45) NOT NULL,
    estado          VARCHAR(20) NOT NULL,   
    estrangeiro     BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS dataset.tb_modulo_usuario  (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_modulo INT,
    id_usuario INT,
    `status` INT,
    
    CONSTRAINT fk_mu_modulo FOREIGN KEY(id_modulo)
        REFERENCES dataset.tb_modulo(id),
        
	CONSTRAINT fk_mu_usuario FOREIGN KEY(id_usuario)
        REFERENCES dataset.tb_usuario(id)
);

create table IF NOT EXISTS dataset.tb_video(
    id              INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_modulo       INT,
    num_grupo       INT,
    num_video       INT,
    nome            VARCHAR(30),
    descricao       VARCHAR(250),
    caminho_video   VARCHAR(250),
    caminho_legenda VARCHAR(250),
    
    CONSTRAINT fk_video_modulo FOREIGN KEY(id_modulo)
        REFERENCES dataset.tb_modulo(id)
);

create table IF NOT EXISTS dataset.tb_envio(
    id              INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_usuario      INT,
    id_video        INT,
    caminho_envio   VARCHAR(250),
    `status`        INT,
    data_criacao    DATETIME DEFAULT now(),
    data_envio      DATETIME,
    
    CONSTRAINT fk_envio_video FOREIGN KEY(id_video)
        REFERENCES dataset.tb_video(id),
    
    CONSTRAINT fk_envio_usuario FOREIGN KEY(id_usuario)
        REFERENCES dataset.tb_usuario(id)
);
use dataset;

INSERT INTO `tb_modulo` (`id`, `nome`, `descricao`) VALUES
(1, NULL, NULL);

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1, 1, 1, 1, NULL, NULL, '/videos/grupo1/1.mp4', '/legendas/grupo1/1.vtt');


INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(2, 1, 1, 2, NULL, NULL, '/videos/grupo1/2.mp4', '/legendas/grupo1/2.vtt');


INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(3, 1, 1, 3, NULL, NULL, '/videos/grupo1/3.mp4', '/legendas/grupo1/3.vtt');


INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(4, 1, 1, 4, NULL, NULL, '/videos/grupo1/4.mp4', '/legendas/grupo1/4.vtt');


INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(5, 1, 1, 5, NULL, NULL, '/videos/grupo1/5.mp4', '/legendas/grupo1/5.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(6, 1, 1, 6, NULL, NULL, '/videos/grupo1/6.mp4', '/legendas/grupo1/6.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(7, 1, 1, 7, NULL, NULL, '/videos/grupo1/7.mp4', '/legendas/grupo1/7.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(8, 1, 1, 8, NULL, NULL, '/videos/grupo1/8.mp4', '/legendas/grupo1/8.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(9, 1, 1, 9, NULL, NULL, '/videos/grupo1/9.mp4', '/legendas/grupo1/9.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(10, 1, 1, 10, NULL, NULL, '/videos/grupo1/10.mp4', '/legendas/grupo1/10.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(11, 1, 1, 11, NULL, NULL, '/videos/grupo1/11.mp4', '/legendas/grupo1/11.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(12, 1, 1, 12, NULL, NULL, '/videos/grupo1/12.mp4', '/legendas/grupo1/12.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(13, 1, 1, 13, NULL, NULL, '/videos/grupo1/13.mp4', '/legendas/grupo1/13.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(14, 1, 1, 14, NULL, NULL, '/videos/grupo1/14.mp4', '/legendas/grupo1/14.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(15, 1, 1, 15, NULL, NULL, '/videos/grupo1/15.mp4', '/legendas/grupo1/15.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(16, 1, 1, 16, NULL, NULL, '/videos/grupo1/16.mp4', '/legendas/grupo1/16.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(17, 1, 1, 17, NULL, NULL, '/videos/grupo1/17.mp4', '/legendas/grupo1/17.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(18, 1, 1, 18, NULL, NULL, '/videos/grupo1/18.mp4', '/legendas/grupo1/18.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(19, 1, 1, 19, NULL, NULL, '/videos/grupo1/19.mp4', '/legendas/grupo1/19.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(20, 1, 1, 20, NULL, NULL, '/videos/grupo1/20.mp4', '/legendas/grupo1/20.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(21, 1, 1, 21, NULL, NULL, '/videos/grupo1/21.mp4', '/legendas/grupo1/21.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(22, 1, 1, 22, NULL, NULL, '/videos/grupo1/22.mp4', '/legendas/grupo1/22.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(23, 1, 1, 23, NULL, NULL, '/videos/grupo1/23.mp4', '/legendas/grupo1/23.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(24, 1, 1, 24, NULL, NULL, '/videos/grupo1/24.mp4', '/legendas/grupo1/24.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(25, 1, 1, 25, NULL, NULL, '/videos/grupo1/25.mp4', '/legendas/grupo1/25.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(26, 1, 1, 26, NULL, NULL, '/videos/grupo1/26.mp4', '/legendas/grupo1/26.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(27, 1, 1, 27, NULL, NULL, '/videos/grupo1/27.mp4', '/legendas/grupo1/27.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(28, 1, 1, 28, NULL, NULL, '/videos/grupo1/28.mp4', '/legendas/grupo1/28.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(29, 1, 1, 29, NULL, NULL, '/videos/grupo1/29.mp4', '/legendas/grupo1/29.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(30, 1, 1, 30, NULL, NULL, '/videos/grupo1/30.mp4', '/legendas/grupo1/30.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(31, 1, 1, 31, NULL, NULL, '/videos/grupo1/31.mp4', '/legendas/grupo1/31.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(32, 1, 1, 32, NULL, NULL, '/videos/grupo1/32.mp4', '/legendas/grupo1/32.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(33, 1, 1, 33, NULL, NULL, '/videos/grupo1/33.mp4', '/legendas/grupo1/33.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(34, 1, 1, 34, NULL, NULL, '/videos/grupo1/34.mp4', '/legendas/grupo1/34.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(35, 1, 1, 35, NULL, NULL, '/videos/grupo1/35.mp4', '/legendas/grupo1/35.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(36, 1, 1, 36, NULL, NULL, '/videos/grupo1/36.mp4', '/legendas/grupo1/36.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(37, 1, 1, 37, NULL, NULL, '/videos/grupo1/37.mp4', '/legendas/grupo1/37.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(38, 1, 1, 38, NULL, NULL, '/videos/grupo1/38.mp4', '/legendas/grupo1/38.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(39, 1, 1, 39, NULL, NULL, '/videos/grupo1/39.mp4', '/legendas/grupo1/39.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(40, 1, 1, 40, NULL, NULL, '/videos/grupo1/40.mp4', '/legendas/grupo1/40.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(41, 1, 1, 41, NULL, NULL, '/videos/grupo1/41.mp4', '/legendas/grupo1/41.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(42, 1, 1, 42, NULL, NULL, '/videos/grupo1/42.mp4', '/legendas/grupo1/42.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(43, 1, 1, 43, NULL, NULL, '/videos/grupo1/43.mp4', '/legendas/grupo1/43.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(44, 1, 1, 44, NULL, NULL, '/videos/grupo1/44.mp4', '/legendas/grupo1/44.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(45, 1, 1, 45, NULL, NULL, '/videos/grupo1/45.mp4', '/legendas/grupo1/45.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(46, 1, 1, 46, NULL, NULL, '/videos/grupo1/46.mp4', '/legendas/grupo1/46.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(47, 1, 1, 47, NULL, NULL, '/videos/grupo1/47.mp4', '/legendas/grupo1/47.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(48, 1, 1, 48, NULL, NULL, '/videos/grupo1/48.mp4', '/legendas/grupo1/48.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(49, 1, 1, 49, NULL, NULL, '/videos/grupo1/49.mp4', '/legendas/grupo1/49.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(50, 1, 1, 50, NULL, NULL, '/videos/grupo1/50.mp4', '/legendas/grupo1/50.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(51, 1, 1, 51, NULL, NULL, '/videos/grupo1/51.mp4', '/legendas/grupo1/51.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(52, 1, 1, 52, NULL, NULL, '/videos/grupo1/52.mp4', '/legendas/grupo1/52.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(53, 1, 1, 53, NULL, NULL, '/videos/grupo1/53.mp4', '/legendas/grupo1/53.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(54, 1, 1, 54, NULL, NULL, '/videos/grupo1/54.mp4', '/legendas/grupo1/54.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(55, 1, 1, 55, NULL, NULL, '/videos/grupo1/55.mp4', '/legendas/grupo1/55.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(56, 1, 1, 56, NULL, NULL, '/videos/grupo1/56.mp4', '/legendas/grupo1/56.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(57, 1, 1, 57, NULL, NULL, '/videos/grupo1/57.mp4', '/legendas/grupo1/57.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(58, 1, 1, 58, NULL, NULL, '/videos/grupo1/58.mp4', '/legendas/grupo1/58.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(59, 1, 1, 59, NULL, NULL, '/videos/grupo1/59.mp4', '/legendas/grupo1/59.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(60, 1, 1, 60, NULL, NULL, '/videos/grupo1/60.mp4', '/legendas/grupo1/60.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(61, 1, 1, 61, NULL, NULL, '/videos/grupo1/61.mp4', '/legendas/grupo1/61.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(62, 1, 1, 62, NULL, NULL, '/videos/grupo1/62.mp4', '/legendas/grupo1/62.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(63, 1, 1, 63, NULL, NULL, '/videos/grupo1/63.mp4', '/legendas/grupo1/63.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(64, 1, 1, 64, NULL, NULL, '/videos/grupo1/64.mp4', '/legendas/grupo1/64.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(65, 1, 1, 65, NULL, NULL, '/videos/grupo1/65.mp4', '/legendas/grupo1/65.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(66, 1, 1, 66, NULL, NULL, '/videos/grupo1/66.mp4', '/legendas/grupo1/66.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(67, 1, 1, 67, NULL, NULL, '/videos/grupo1/67.mp4', '/legendas/grupo1/67.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(68, 1, 1, 68, NULL, NULL, '/videos/grupo1/68.mp4', '/legendas/grupo1/68.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(69, 1, 1, 69, NULL, NULL, '/videos/grupo1/69.mp4', '/legendas/grupo1/69.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(70, 1, 1, 70, NULL, NULL, '/videos/grupo1/70.mp4', '/legendas/grupo1/70.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(71, 1, 1, 71, NULL, NULL, '/videos/grupo1/71.mp4', '/legendas/grupo1/71.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(72, 1, 1, 72, NULL, NULL, '/videos/grupo1/72.mp4', '/legendas/grupo1/72.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(73, 1, 1, 73, NULL, NULL, '/videos/grupo1/73.mp4', '/legendas/grupo1/73.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(74, 1, 1, 74, NULL, NULL, '/videos/grupo1/74.mp4', '/legendas/grupo1/74.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(75, 1, 1, 75, NULL, NULL, '/videos/grupo1/75.mp4', '/legendas/grupo1/75.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(76, 1, 1, 76, NULL, NULL, '/videos/grupo1/76.mp4', '/legendas/grupo1/76.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(77, 1, 1, 77, NULL, NULL, '/videos/grupo1/77.mp4', '/legendas/grupo1/77.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(78, 1, 1, 78, NULL, NULL, '/videos/grupo1/78.mp4', '/legendas/grupo1/78.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(79, 1, 1, 79, NULL, NULL, '/videos/grupo1/79.mp4', '/legendas/grupo1/79.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(80, 1, 1, 80, NULL, NULL, '/videos/grupo1/80.mp4', '/legendas/grupo1/80.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(81, 1, 1, 81, NULL, NULL, '/videos/grupo1/81.mp4', '/legendas/grupo1/81.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(82, 1, 1, 82, NULL, NULL, '/videos/grupo1/82.mp4', '/legendas/grupo1/82.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(83, 1, 1, 83, NULL, NULL, '/videos/grupo1/83.mp4', '/legendas/grupo1/83.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(84, 1, 1, 84, NULL, NULL, '/videos/grupo1/84.mp4', '/legendas/grupo1/84.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(85, 1, 1, 85, NULL, NULL, '/videos/grupo1/85.mp4', '/legendas/grupo1/85.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(86, 1, 1, 86, NULL, NULL, '/videos/grupo1/86.mp4', '/legendas/grupo1/86.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(87, 1, 1, 87, NULL, NULL, '/videos/grupo1/87.mp4', '/legendas/grupo1/87.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(88, 1, 1, 88, NULL, NULL, '/videos/grupo1/88.mp4', '/legendas/grupo1/88.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(89, 1, 1, 89, NULL, NULL, '/videos/grupo1/89.mp4', '/legendas/grupo1/89.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(90, 1, 1, 90, NULL, NULL, '/videos/grupo1/90.mp4', '/legendas/grupo1/90.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(91, 1, 1, 91, NULL, NULL, '/videos/grupo1/91.mp4', '/legendas/grupo1/91.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(92, 1, 1, 92, NULL, NULL, '/videos/grupo1/92.mp4', '/legendas/grupo1/92.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(93, 1, 1, 93, NULL, NULL, '/videos/grupo1/93.mp4', '/legendas/grupo1/93.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(94, 1, 1, 94, NULL, NULL, '/videos/grupo1/94.mp4', '/legendas/grupo1/94.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(95, 1, 1, 95, NULL, NULL, '/videos/grupo1/95.mp4', '/legendas/grupo1/95.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(96, 1, 1, 96, NULL, NULL, '/videos/grupo1/96.mp4', '/legendas/grupo1/96.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(97, 1, 1, 97, NULL, NULL, '/videos/grupo1/97.mp4', '/legendas/grupo1/97.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(98, 1, 1, 98, NULL, NULL, '/videos/grupo1/98.mp4', '/legendas/grupo1/98.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(99, 1, 1, 99, NULL, NULL, '/videos/grupo1/99.mp4', '/legendas/grupo1/99.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(100, 1, 1, 100, NULL, NULL, '/videos/grupo1/100.mp4', '/legendas/grupo1/100.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(101, 1, 1, 101, NULL, NULL, '/videos/grupo1/101.mp4', '/legendas/grupo1/101.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(102, 1, 1, 102, NULL, NULL, '/videos/grupo1/102.mp4', '/legendas/grupo1/102.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(103, 1, 1, 103, NULL, NULL, '/videos/grupo1/103.mp4', '/legendas/grupo1/103.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(104, 1, 1, 104, NULL, NULL, '/videos/grupo1/104.mp4', '/legendas/grupo1/104.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(105, 1, 1, 105, NULL, NULL, '/videos/grupo1/105.mp4', '/legendas/grupo1/105.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(106, 1, 1, 106, NULL, NULL, '/videos/grupo1/106.mp4', '/legendas/grupo1/106.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(107, 1, 1, 107, NULL, NULL, '/videos/grupo1/107.mp4', '/legendas/grupo1/107.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(108, 1, 1, 108, NULL, NULL, '/videos/grupo1/108.mp4', '/legendas/grupo1/108.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(109, 1, 1, 109, NULL, NULL, '/videos/grupo1/109.mp4', '/legendas/grupo1/109.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(110, 1, 1, 110, NULL, NULL, '/videos/grupo1/110.mp4', '/legendas/grupo1/110.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(111, 1, 1, 111, NULL, NULL, '/videos/grupo1/111.mp4', '/legendas/grupo1/111.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(112, 1, 1, 112, NULL, NULL, '/videos/grupo1/112.mp4', '/legendas/grupo1/112.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(113, 1, 1, 113, NULL, NULL, '/videos/grupo1/113.mp4', '/legendas/grupo1/113.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(114, 1, 1, 114, NULL, NULL, '/videos/grupo1/114.mp4', '/legendas/grupo1/114.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(115, 1, 1, 115, NULL, NULL, '/videos/grupo1/115.mp4', '/legendas/grupo1/115.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(116, 1, 1, 116, NULL, NULL, '/videos/grupo1/116.mp4', '/legendas/grupo1/116.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(117, 1, 1, 117, NULL, NULL, '/videos/grupo1/117.mp4', '/legendas/grupo1/117.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(118, 1, 1, 118, NULL, NULL, '/videos/grupo1/118.mp4', '/legendas/grupo1/118.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(119, 1, 2, 1, NULL, NULL, '/videos/grupo2/1.mp4', '/legendas/grupo2/1.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(120, 1, 2, 2, NULL, NULL, '/videos/grupo2/2.mp4', '/legendas/grupo2/2.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(121, 1, 2, 3, NULL, NULL, '/videos/grupo2/3.mp4', '/legendas/grupo2/3.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(122, 1, 2, 4, NULL, NULL, '/videos/grupo2/4.mp4', '/legendas/grupo2/4.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(123, 1, 2, 5, NULL, NULL, '/videos/grupo2/5.mp4', '/legendas/grupo2/5.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(124, 1, 2, 6, NULL, NULL, '/videos/grupo2/6.mp4', '/legendas/grupo2/6.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(125, 1, 2, 7, NULL, NULL, '/videos/grupo2/7.mp4', '/legendas/grupo2/7.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(126, 1, 2, 8, NULL, NULL, '/videos/grupo2/8.mp4', '/legendas/grupo2/8.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(127, 1, 2, 9, NULL, NULL, '/videos/grupo2/9.mp4', '/legendas/grupo2/9.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(128, 1, 2, 10, NULL, NULL, '/videos/grupo2/10.mp4', '/legendas/grupo2/10.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(129, 1, 2, 11, NULL, NULL, '/videos/grupo2/11.mp4', '/legendas/grupo2/11.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(130, 1, 2, 12, NULL, NULL, '/videos/grupo2/12.mp4', '/legendas/grupo2/12.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(131, 1, 2, 13, NULL, NULL, '/videos/grupo2/13.mp4', '/legendas/grupo2/13.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(132, 1, 2, 14, NULL, NULL, '/videos/grupo2/14.mp4', '/legendas/grupo2/14.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(133, 1, 2, 15, NULL, NULL, '/videos/grupo2/15.mp4', '/legendas/grupo2/15.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(134, 1, 2, 16, NULL, NULL, '/videos/grupo2/16.mp4', '/legendas/grupo2/16.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(135, 1, 2, 17, NULL, NULL, '/videos/grupo2/17.mp4', '/legendas/grupo2/17.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(136, 1, 2, 18, NULL, NULL, '/videos/grupo2/18.mp4', '/legendas/grupo2/18.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(137, 1, 2, 19, NULL, NULL, '/videos/grupo2/19.mp4', '/legendas/grupo2/19.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(138, 1, 2, 20, NULL, NULL, '/videos/grupo2/20.mp4', '/legendas/grupo2/20.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(139, 1, 2, 21, NULL, NULL, '/videos/grupo2/21.mp4', '/legendas/grupo2/21.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(140, 1, 2, 22, NULL, NULL, '/videos/grupo2/22.mp4', '/legendas/grupo2/22.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(141, 1, 2, 23, NULL, NULL, '/videos/grupo2/23.mp4', '/legendas/grupo2/23.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(142, 1, 2, 24, NULL, NULL, '/videos/grupo2/24.mp4', '/legendas/grupo2/24.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(143, 1, 2, 25, NULL, NULL, '/videos/grupo2/25.mp4', '/legendas/grupo2/25.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(144, 1, 2, 26, NULL, NULL, '/videos/grupo2/26.mp4', '/legendas/grupo2/26.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(145, 1, 2, 27, NULL, NULL, '/videos/grupo2/27.mp4', '/legendas/grupo2/27.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(146, 1, 2, 28, NULL, NULL, '/videos/grupo2/28.mp4', '/legendas/grupo2/28.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(147, 1, 2, 29, NULL, NULL, '/videos/grupo2/29.mp4', '/legendas/grupo2/29.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(148, 1, 2, 30, NULL, NULL, '/videos/grupo2/30.mp4', '/legendas/grupo2/30.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(149, 1, 2, 31, NULL, NULL, '/videos/grupo2/31.mp4', '/legendas/grupo2/31.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(150, 1, 2, 32, NULL, NULL, '/videos/grupo2/32.mp4', '/legendas/grupo2/32.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(151, 1, 2, 33, NULL, NULL, '/videos/grupo2/33.mp4', '/legendas/grupo2/33.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(152, 1, 2, 34, NULL, NULL, '/videos/grupo2/34.mp4', '/legendas/grupo2/34.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(153, 1, 2, 35, NULL, NULL, '/videos/grupo2/35.mp4', '/legendas/grupo2/35.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(154, 1, 2, 36, NULL, NULL, '/videos/grupo2/36.mp4', '/legendas/grupo2/36.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(155, 1, 2, 37, NULL, NULL, '/videos/grupo2/37.mp4', '/legendas/grupo2/37.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(156, 1, 2, 38, NULL, NULL, '/videos/grupo2/38.mp4', '/legendas/grupo2/38.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(157, 1, 2, 39, NULL, NULL, '/videos/grupo2/39.mp4', '/legendas/grupo2/39.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(158, 1, 2, 40, NULL, NULL, '/videos/grupo2/40.mp4', '/legendas/grupo2/40.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(159, 1, 2, 41, NULL, NULL, '/videos/grupo2/41.mp4', '/legendas/grupo2/41.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(160, 1, 2, 42, NULL, NULL, '/videos/grupo2/42.mp4', '/legendas/grupo2/42.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(161, 1, 2, 43, NULL, NULL, '/videos/grupo2/43.mp4', '/legendas/grupo2/43.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(162, 1, 2, 44, NULL, NULL, '/videos/grupo2/44.mp4', '/legendas/grupo2/44.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(163, 1, 2, 45, NULL, NULL, '/videos/grupo2/45.mp4', '/legendas/grupo2/45.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(164, 1, 2, 46, NULL, NULL, '/videos/grupo2/46.mp4', '/legendas/grupo2/46.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(165, 1, 2, 47, NULL, NULL, '/videos/grupo2/47.mp4', '/legendas/grupo2/47.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(166, 1, 2, 48, NULL, NULL, '/videos/grupo2/48.mp4', '/legendas/grupo2/48.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(167, 1, 2, 49, NULL, NULL, '/videos/grupo2/49.mp4', '/legendas/grupo2/49.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(168, 1, 2, 50, NULL, NULL, '/videos/grupo2/50.mp4', '/legendas/grupo2/50.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(169, 1, 2, 51, NULL, NULL, '/videos/grupo2/51.mp4', '/legendas/grupo2/51.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(170, 1, 2, 52, NULL, NULL, '/videos/grupo2/52.mp4', '/legendas/grupo2/52.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(171, 1, 2, 53, NULL, NULL, '/videos/grupo2/53.mp4', '/legendas/grupo2/53.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(172, 1, 2, 54, NULL, NULL, '/videos/grupo2/54.mp4', '/legendas/grupo2/54.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(173, 1, 2, 55, NULL, NULL, '/videos/grupo2/55.mp4', '/legendas/grupo2/55.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(174, 1, 2, 56, NULL, NULL, '/videos/grupo2/56.mp4', '/legendas/grupo2/56.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(175, 1, 2, 57, NULL, NULL, '/videos/grupo2/57.mp4', '/legendas/grupo2/57.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(176, 1, 2, 58, NULL, NULL, '/videos/grupo2/58.mp4', '/legendas/grupo2/58.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(177, 1, 2, 59, NULL, NULL, '/videos/grupo2/59.mp4', '/legendas/grupo2/59.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(178, 1, 2, 60, NULL, NULL, '/videos/grupo2/60.mp4', '/legendas/grupo2/60.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(179, 1, 2, 61, NULL, NULL, '/videos/grupo2/61.mp4', '/legendas/grupo2/61.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(180, 1, 2, 62, NULL, NULL, '/videos/grupo2/62.mp4', '/legendas/grupo2/62.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(181, 1, 2, 63, NULL, NULL, '/videos/grupo2/63.mp4', '/legendas/grupo2/63.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(182, 1, 2, 64, NULL, NULL, '/videos/grupo2/64.mp4', '/legendas/grupo2/64.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(183, 1, 2, 65, NULL, NULL, '/videos/grupo2/65.mp4', '/legendas/grupo2/65.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(184, 1, 2, 66, NULL, NULL, '/videos/grupo2/66.mp4', '/legendas/grupo2/66.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(185, 1, 2, 67, NULL, NULL, '/videos/grupo2/67.mp4', '/legendas/grupo2/67.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(186, 1, 2, 68, NULL, NULL, '/videos/grupo2/68.mp4', '/legendas/grupo2/68.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(187, 1, 2, 69, NULL, NULL, '/videos/grupo2/69.mp4', '/legendas/grupo2/69.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(188, 1, 2, 70, NULL, NULL, '/videos/grupo2/70.mp4', '/legendas/grupo2/70.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(189, 1, 2, 71, NULL, NULL, '/videos/grupo2/71.mp4', '/legendas/grupo2/71.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(190, 1, 2, 72, NULL, NULL, '/videos/grupo2/72.mp4', '/legendas/grupo2/72.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(191, 1, 2, 73, NULL, NULL, '/videos/grupo2/73.mp4', '/legendas/grupo2/73.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(192, 1, 2, 74, NULL, NULL, '/videos/grupo2/74.mp4', '/legendas/grupo2/74.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(193, 1, 2, 75, NULL, NULL, '/videos/grupo2/75.mp4', '/legendas/grupo2/75.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(194, 1, 2, 76, NULL, NULL, '/videos/grupo2/76.mp4', '/legendas/grupo2/76.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(195, 1, 2, 77, NULL, NULL, '/videos/grupo2/77.mp4', '/legendas/grupo2/77.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(196, 1, 2, 78, NULL, NULL, '/videos/grupo2/78.mp4', '/legendas/grupo2/78.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(197, 1, 2, 79, NULL, NULL, '/videos/grupo2/79.mp4', '/legendas/grupo2/79.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(198, 1, 2, 80, NULL, NULL, '/videos/grupo2/80.mp4', '/legendas/grupo2/80.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(199, 1, 2, 81, NULL, NULL, '/videos/grupo2/81.mp4', '/legendas/grupo2/81.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(200, 1, 2, 82, NULL, NULL, '/videos/grupo2/82.mp4', '/legendas/grupo2/82.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(201, 1, 2, 83, NULL, NULL, '/videos/grupo2/83.mp4', '/legendas/grupo2/83.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(202, 1, 2, 84, NULL, NULL, '/videos/grupo2/84.mp4', '/legendas/grupo2/84.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(203, 1, 2, 85, NULL, NULL, '/videos/grupo2/85.mp4', '/legendas/grupo2/85.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(204, 1, 2, 86, NULL, NULL, '/videos/grupo2/86.mp4', '/legendas/grupo2/86.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(205, 1, 2, 87, NULL, NULL, '/videos/grupo2/87.mp4', '/legendas/grupo2/87.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(206, 1, 2, 88, NULL, NULL, '/videos/grupo2/88.mp4', '/legendas/grupo2/88.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(207, 1, 2, 89, NULL, NULL, '/videos/grupo2/89.mp4', '/legendas/grupo2/89.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(208, 1, 2, 90, NULL, NULL, '/videos/grupo2/90.mp4', '/legendas/grupo2/90.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(209, 1, 2, 91, NULL, NULL, '/videos/grupo2/91.mp4', '/legendas/grupo2/91.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(210, 1, 2, 92, NULL, NULL, '/videos/grupo2/92.mp4', '/legendas/grupo2/92.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(211, 1, 2, 93, NULL, NULL, '/videos/grupo2/93.mp4', '/legendas/grupo2/93.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(212, 1, 2, 94, NULL, NULL, '/videos/grupo2/94.mp4', '/legendas/grupo2/94.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(213, 1, 2, 95, NULL, NULL, '/videos/grupo2/95.mp4', '/legendas/grupo2/95.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(214, 1, 2, 96, NULL, NULL, '/videos/grupo2/96.mp4', '/legendas/grupo2/96.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(215, 1, 2, 97, NULL, NULL, '/videos/grupo2/97.mp4', '/legendas/grupo2/97.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(216, 1, 2, 98, NULL, NULL, '/videos/grupo2/98.mp4', '/legendas/grupo2/98.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(217, 1, 2, 99, NULL, NULL, '/videos/grupo2/99.mp4', '/legendas/grupo2/99.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(218, 1, 2, 100, NULL, NULL, '/videos/grupo2/100.mp4', '/legendas/grupo2/100.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(219, 1, 2, 101, NULL, NULL, '/videos/grupo2/101.mp4', '/legendas/grupo2/101.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(220, 1, 2, 102, NULL, NULL, '/videos/grupo2/102.mp4', '/legendas/grupo2/102.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(221, 1, 2, 103, NULL, NULL, '/videos/grupo2/103.mp4', '/legendas/grupo2/103.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(222, 1, 2, 104, NULL, NULL, '/videos/grupo2/104.mp4', '/legendas/grupo2/104.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(223, 1, 2, 105, NULL, NULL, '/videos/grupo2/105.mp4', '/legendas/grupo2/105.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(224, 1, 2, 106, NULL, NULL, '/videos/grupo2/106.mp4', '/legendas/grupo2/106.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(225, 1, 2, 107, NULL, NULL, '/videos/grupo2/107.mp4', '/legendas/grupo2/107.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(226, 1, 2, 108, NULL, NULL, '/videos/grupo2/108.mp4', '/legendas/grupo2/108.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(227, 1, 2, 109, NULL, NULL, '/videos/grupo2/109.mp4', '/legendas/grupo2/109.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(228, 1, 2, 110, NULL, NULL, '/videos/grupo2/110.mp4', '/legendas/grupo2/110.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(229, 1, 2, 111, NULL, NULL, '/videos/grupo2/111.mp4', '/legendas/grupo2/111.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(230, 1, 2, 112, NULL, NULL, '/videos/grupo2/112.mp4', '/legendas/grupo2/112.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(231, 1, 2, 113, NULL, NULL, '/videos/grupo2/113.mp4', '/legendas/grupo2/113.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(232, 1, 2, 114, NULL, NULL, '/videos/grupo2/114.mp4', '/legendas/grupo2/114.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(233, 1, 2, 115, NULL, NULL, '/videos/grupo2/115.mp4', '/legendas/grupo2/115.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(234, 1, 2, 116, NULL, NULL, '/videos/grupo2/116.mp4', '/legendas/grupo2/116.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(235, 1, 2, 117, NULL, NULL, '/videos/grupo2/117.mp4', '/legendas/grupo2/117.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(237, 1, 3, 1, NULL, NULL, '/videos/grupo3/1.mp4', '/legendas/grupo3/1.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(238, 1, 3, 2, NULL, NULL, '/videos/grupo3/2.mp4', '/legendas/grupo3/2.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(239, 1, 3, 3, NULL, NULL, '/videos/grupo3/3.mp4', '/legendas/grupo3/3.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(240, 1, 3, 4, NULL, NULL, '/videos/grupo3/4.mp4', '/legendas/grupo3/4.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(241, 1, 3, 5, NULL, NULL, '/videos/grupo3/5.mp4', '/legendas/grupo3/5.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(242, 1, 3, 6, NULL, NULL, '/videos/grupo3/6.mp4', '/legendas/grupo3/6.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(243, 1, 3, 7, NULL, NULL, '/videos/grupo3/7.mp4', '/legendas/grupo3/7.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(244, 1, 3, 8, NULL, NULL, '/videos/grupo3/8.mp4', '/legendas/grupo3/8.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(245, 1, 3, 9, NULL, NULL, '/videos/grupo3/9.mp4', '/legendas/grupo3/9.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(246, 1, 3, 10, NULL, NULL, '/videos/grupo3/10.mp4', '/legendas/grupo3/10.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(247, 1, 3, 11, NULL, NULL, '/videos/grupo3/11.mp4', '/legendas/grupo3/11.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(248, 1, 3, 12, NULL, NULL, '/videos/grupo3/12.mp4', '/legendas/grupo3/12.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(249, 1, 3, 13, NULL, NULL, '/videos/grupo3/13.mp4', '/legendas/grupo3/13.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(250, 1, 3, 14, NULL, NULL, '/videos/grupo3/14.mp4', '/legendas/grupo3/14.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(251, 1, 3, 15, NULL, NULL, '/videos/grupo3/15.mp4', '/legendas/grupo3/15.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(252, 1, 3, 16, NULL, NULL, '/videos/grupo3/16.mp4', '/legendas/grupo3/16.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(253, 1, 3, 17, NULL, NULL, '/videos/grupo3/17.mp4', '/legendas/grupo3/17.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(254, 1, 3, 18, NULL, NULL, '/videos/grupo3/18.mp4', '/legendas/grupo3/18.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(255, 1, 3, 19, NULL, NULL, '/videos/grupo3/19.mp4', '/legendas/grupo3/19.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(256, 1, 3, 20, NULL, NULL, '/videos/grupo3/20.mp4', '/legendas/grupo3/20.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(257, 1, 3, 21, NULL, NULL, '/videos/grupo3/21.mp4', '/legendas/grupo3/21.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(258, 1, 3, 22, NULL, NULL, '/videos/grupo3/22.mp4', '/legendas/grupo3/22.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(259, 1, 3, 23, NULL, NULL, '/videos/grupo3/23.mp4', '/legendas/grupo3/23.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(260, 1, 3, 24, NULL, NULL, '/videos/grupo3/24.mp4', '/legendas/grupo3/24.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(261, 1, 3, 25, NULL, NULL, '/videos/grupo3/25.mp4', '/legendas/grupo3/25.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(262, 1, 3, 26, NULL, NULL, '/videos/grupo3/26.mp4', '/legendas/grupo3/26.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(263, 1, 3, 27, NULL, NULL, '/videos/grupo3/27.mp4', '/legendas/grupo3/27.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(264, 1, 3, 28, NULL, NULL, '/videos/grupo3/28.mp4', '/legendas/grupo3/28.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(265, 1, 3, 29, NULL, NULL, '/videos/grupo3/29.mp4', '/legendas/grupo3/29.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(266, 1, 3, 30, NULL, NULL, '/videos/grupo3/30.mp4', '/legendas/grupo3/30.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(267, 1, 3, 31, NULL, NULL, '/videos/grupo3/31.mp4', '/legendas/grupo3/31.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(268, 1, 3, 32, NULL, NULL, '/videos/grupo3/32.mp4', '/legendas/grupo3/32.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(269, 1, 3, 33, NULL, NULL, '/videos/grupo3/33.mp4', '/legendas/grupo3/33.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(270, 1, 3, 34, NULL, NULL, '/videos/grupo3/34.mp4', '/legendas/grupo3/34.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(271, 1, 3, 35, NULL, NULL, '/videos/grupo3/35.mp4', '/legendas/grupo3/35.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(272, 1, 3, 36, NULL, NULL, '/videos/grupo3/36.mp4', '/legendas/grupo3/36.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(273, 1, 3, 37, NULL, NULL, '/videos/grupo3/37.mp4', '/legendas/grupo3/37.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(274, 1, 3, 38, NULL, NULL, '/videos/grupo3/38.mp4', '/legendas/grupo3/38.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(275, 1, 3, 39, NULL, NULL, '/videos/grupo3/39.mp4', '/legendas/grupo3/39.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(276, 1, 3, 40, NULL, NULL, '/videos/grupo3/40.mp4', '/legendas/grupo3/40.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(277, 1, 3, 41, NULL, NULL, '/videos/grupo3/41.mp4', '/legendas/grupo3/41.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(278, 1, 3, 42, NULL, NULL, '/videos/grupo3/42.mp4', '/legendas/grupo3/42.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(279, 1, 3, 43, NULL, NULL, '/videos/grupo3/43.mp4', '/legendas/grupo3/43.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(280, 1, 3, 44, NULL, NULL, '/videos/grupo3/44.mp4', '/legendas/grupo3/44.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(281, 1, 3, 45, NULL, NULL, '/videos/grupo3/45.mp4', '/legendas/grupo3/45.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(282, 1, 3, 46, NULL, NULL, '/videos/grupo3/46.mp4', '/legendas/grupo3/46.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(283, 1, 3, 47, NULL, NULL, '/videos/grupo3/47.mp4', '/legendas/grupo3/47.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(284, 1, 3, 48, NULL, NULL, '/videos/grupo3/48.mp4', '/legendas/grupo3/48.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(285, 1, 3, 49, NULL, NULL, '/videos/grupo3/49.mp4', '/legendas/grupo3/49.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(286, 1, 3, 50, NULL, NULL, '/videos/grupo3/50.mp4', '/legendas/grupo3/50.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(287, 1, 3, 51, NULL, NULL, '/videos/grupo3/51.mp4', '/legendas/grupo3/51.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(288, 1, 3, 52, NULL, NULL, '/videos/grupo3/52.mp4', '/legendas/grupo3/52.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(289, 1, 3, 53, NULL, NULL, '/videos/grupo3/53.mp4', '/legendas/grupo3/53.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(290, 1, 3, 54, NULL, NULL, '/videos/grupo3/54.mp4', '/legendas/grupo3/54.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(291, 1, 3, 55, NULL, NULL, '/videos/grupo3/55.mp4', '/legendas/grupo3/55.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(292, 1, 3, 56, NULL, NULL, '/videos/grupo3/56.mp4', '/legendas/grupo3/56.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(293, 1, 3, 57, NULL, NULL, '/videos/grupo3/57.mp4', '/legendas/grupo3/57.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(294, 1, 3, 58, NULL, NULL, '/videos/grupo3/58.mp4', '/legendas/grupo3/58.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(295, 1, 3, 59, NULL, NULL, '/videos/grupo3/59.mp4', '/legendas/grupo3/59.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(296, 1, 3, 60, NULL, NULL, '/videos/grupo3/60.mp4', '/legendas/grupo3/60.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(297, 1, 3, 61, NULL, NULL, '/videos/grupo3/61.mp4', '/legendas/grupo3/61.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(298, 1, 3, 62, NULL, NULL, '/videos/grupo3/62.mp4', '/legendas/grupo3/62.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(299, 1, 3, 63, NULL, NULL, '/videos/grupo3/63.mp4', '/legendas/grupo3/63.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(300, 1, 3, 64, NULL, NULL, '/videos/grupo3/64.mp4', '/legendas/grupo3/64.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(301, 1, 3, 65, NULL, NULL, '/videos/grupo3/65.mp4', '/legendas/grupo3/65.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(302, 1, 3, 66, NULL, NULL, '/videos/grupo3/66.mp4', '/legendas/grupo3/66.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(303, 1, 3, 67, NULL, NULL, '/videos/grupo3/67.mp4', '/legendas/grupo3/67.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(304, 1, 3, 68, NULL, NULL, '/videos/grupo3/68.mp4', '/legendas/grupo3/68.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(305, 1, 3, 69, NULL, NULL, '/videos/grupo3/69.mp4', '/legendas/grupo3/69.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(306, 1, 3, 70, NULL, NULL, '/videos/grupo3/70.mp4', '/legendas/grupo3/70.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(307, 1, 3, 71, NULL, NULL, '/videos/grupo3/71.mp4', '/legendas/grupo3/71.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(308, 1, 3, 72, NULL, NULL, '/videos/grupo3/72.mp4', '/legendas/grupo3/72.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(309, 1, 3, 73, NULL, NULL, '/videos/grupo3/73.mp4', '/legendas/grupo3/73.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(310, 1, 3, 74, NULL, NULL, '/videos/grupo3/74.mp4', '/legendas/grupo3/74.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(311, 1, 3, 75, NULL, NULL, '/videos/grupo3/75.mp4', '/legendas/grupo3/75.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(312, 1, 3, 76, NULL, NULL, '/videos/grupo3/76.mp4', '/legendas/grupo3/76.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(313, 1, 3, 77, NULL, NULL, '/videos/grupo3/77.mp4', '/legendas/grupo3/77.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(314, 1, 3, 78, NULL, NULL, '/videos/grupo3/78.mp4', '/legendas/grupo3/78.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(315, 1, 3, 79, NULL, NULL, '/videos/grupo3/79.mp4', '/legendas/grupo3/79.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(316, 1, 3, 80, NULL, NULL, '/videos/grupo3/80.mp4', '/legendas/grupo3/80.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(317, 1, 3, 81, NULL, NULL, '/videos/grupo3/81.mp4', '/legendas/grupo3/81.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(318, 1, 3, 82, NULL, NULL, '/videos/grupo3/82.mp4', '/legendas/grupo3/82.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(319, 1, 3, 83, NULL, NULL, '/videos/grupo3/83.mp4', '/legendas/grupo3/83.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(320, 1, 3, 84, NULL, NULL, '/videos/grupo3/84.mp4', '/legendas/grupo3/84.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(321, 1, 3, 85, NULL, NULL, '/videos/grupo3/85.mp4', '/legendas/grupo3/85.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(322, 1, 3, 86, NULL, NULL, '/videos/grupo3/86.mp4', '/legendas/grupo3/86.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(323, 1, 3, 87, NULL, NULL, '/videos/grupo3/87.mp4', '/legendas/grupo3/87.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(324, 1, 3, 88, NULL, NULL, '/videos/grupo3/88.mp4', '/legendas/grupo3/88.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(325, 1, 3, 89, NULL, NULL, '/videos/grupo3/89.mp4', '/legendas/grupo3/89.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(326, 1, 3, 90, NULL, NULL, '/videos/grupo3/90.mp4', '/legendas/grupo3/90.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(327, 1, 3, 91, NULL, NULL, '/videos/grupo3/91.mp4', '/legendas/grupo3/91.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(328, 1, 3, 92, NULL, NULL, '/videos/grupo3/92.mp4', '/legendas/grupo3/92.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(329, 1, 3, 93, NULL, NULL, '/videos/grupo3/93.mp4', '/legendas/grupo3/93.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(330, 1, 3, 94, NULL, NULL, '/videos/grupo3/94.mp4', '/legendas/grupo3/94.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(331, 1, 3, 95, NULL, NULL, '/videos/grupo3/95.mp4', '/legendas/grupo3/95.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(332, 1, 3, 96, NULL, NULL, '/videos/grupo3/96.mp4', '/legendas/grupo3/96.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(333, 1, 3, 97, NULL, NULL, '/videos/grupo3/97.mp4', '/legendas/grupo3/97.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(334, 1, 3, 98, NULL, NULL, '/videos/grupo3/98.mp4', '/legendas/grupo3/98.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(335, 1, 3, 99, NULL, NULL, '/videos/grupo3/99.mp4', '/legendas/grupo3/99.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(336, 1, 3, 100, NULL, NULL, '/videos/grupo3/100.mp4', '/legendas/grupo3/100.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(337, 1, 3, 101, NULL, NULL, '/videos/grupo3/101.mp4', '/legendas/grupo3/101.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(338, 1, 3, 102, NULL, NULL, '/videos/grupo3/102.mp4', '/legendas/grupo3/102.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(339, 1, 3, 103, NULL, NULL, '/videos/grupo3/103.mp4', '/legendas/grupo3/103.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(340, 1, 3, 104, NULL, NULL, '/videos/grupo3/104.mp4', '/legendas/grupo3/104.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(341, 1, 3, 105, NULL, NULL, '/videos/grupo3/105.mp4', '/legendas/grupo3/105.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(342, 1, 3, 106, NULL, NULL, '/videos/grupo3/106.mp4', '/legendas/grupo3/106.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(343, 1, 3, 107, NULL, NULL, '/videos/grupo3/107.mp4', '/legendas/grupo3/107.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(344, 1, 3, 108, NULL, NULL, '/videos/grupo3/108.mp4', '/legendas/grupo3/108.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(345, 1, 3, 109, NULL, NULL, '/videos/grupo3/109.mp4', '/legendas/grupo3/109.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(346, 1, 3, 110, NULL, NULL, '/videos/grupo3/110.mp4', '/legendas/grupo3/110.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(347, 1, 3, 111, NULL, NULL, '/videos/grupo3/111.mp4', '/legendas/grupo3/111.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(348, 1, 3, 112, NULL, NULL, '/videos/grupo3/112.mp4', '/legendas/grupo3/112.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(349, 1, 3, 113, NULL, NULL, '/videos/grupo3/113.mp4', '/legendas/grupo3/113.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(350, 1, 3, 114, NULL, NULL, '/videos/grupo3/114.mp4', '/legendas/grupo3/114.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(351, 1, 3, 115, NULL, NULL, '/videos/grupo3/115.mp4', '/legendas/grupo3/115.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(352, 1, 3, 116, NULL, NULL, '/videos/grupo3/116.mp4', '/legendas/grupo3/116.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(353, 1, 3, 117, NULL, NULL, '/videos/grupo3/117.mp4', '/legendas/grupo3/117.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(354, 1, 3, 118, NULL, NULL, '/videos/grupo3/118.mp4', '/legendas/grupo3/118.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(355, 1, 4, 1, NULL, NULL, '/videos/grupo4/1.mp4', '/legendas/grupo4/1.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(356, 1, 4, 2, NULL, NULL, '/videos/grupo4/2.mp4', '/legendas/grupo4/2.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(357, 1, 4, 3, NULL, NULL, '/videos/grupo4/3.mp4', '/legendas/grupo4/3.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(358, 1, 4, 4, NULL, NULL, '/videos/grupo4/4.mp4', '/legendas/grupo4/4.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(359, 1, 4, 5, NULL, NULL, '/videos/grupo4/5.mp4', '/legendas/grupo4/5.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(360, 1, 4, 6, NULL, NULL, '/videos/grupo4/6.mp4', '/legendas/grupo4/6.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(361, 1, 4, 7, NULL, NULL, '/videos/grupo4/7.mp4', '/legendas/grupo4/7.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(362, 1, 4, 8, NULL, NULL, '/videos/grupo4/8.mp4', '/legendas/grupo4/8.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(363, 1, 4, 9, NULL, NULL, '/videos/grupo4/9.mp4', '/legendas/grupo4/9.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(364, 1, 4, 10, NULL, NULL, '/videos/grupo4/10.mp4', '/legendas/grupo4/10.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(365, 1, 4, 11, NULL, NULL, '/videos/grupo4/11.mp4', '/legendas/grupo4/11.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(366, 1, 4, 12, NULL, NULL, '/videos/grupo4/12.mp4', '/legendas/grupo4/12.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(367, 1, 4, 13, NULL, NULL, '/videos/grupo4/13.mp4', '/legendas/grupo4/13.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(368, 1, 4, 14, NULL, NULL, '/videos/grupo4/14.mp4', '/legendas/grupo4/14.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(369, 1, 4, 15, NULL, NULL, '/videos/grupo4/15.mp4', '/legendas/grupo4/15.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(370, 1, 4, 16, NULL, NULL, '/videos/grupo4/16.mp4', '/legendas/grupo4/16.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(371, 1, 4, 17, NULL, NULL, '/videos/grupo4/17.mp4', '/legendas/grupo4/17.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(372, 1, 4, 18, NULL, NULL, '/videos/grupo4/18.mp4', '/legendas/grupo4/18.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(373, 1, 4, 19, NULL, NULL, '/videos/grupo4/19.mp4', '/legendas/grupo4/19.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(374, 1, 4, 20, NULL, NULL, '/videos/grupo4/20.mp4', '/legendas/grupo4/20.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(375, 1, 4, 21, NULL, NULL, '/videos/grupo4/21.mp4', '/legendas/grupo4/21.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(376, 1, 4, 22, NULL, NULL, '/videos/grupo4/22.mp4', '/legendas/grupo4/22.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(377, 1, 4, 23, NULL, NULL, '/videos/grupo4/23.mp4', '/legendas/grupo4/23.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(378, 1, 4, 24, NULL, NULL, '/videos/grupo4/24.mp4', '/legendas/grupo4/24.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(379, 1, 4, 25, NULL, NULL, '/videos/grupo4/25.mp4', '/legendas/grupo4/25.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(380, 1, 4, 26, NULL, NULL, '/videos/grupo4/26.mp4', '/legendas/grupo4/26.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(381, 1, 4, 27, NULL, NULL, '/videos/grupo4/27.mp4', '/legendas/grupo4/27.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(382, 1, 4, 28, NULL, NULL, '/videos/grupo4/28.mp4', '/legendas/grupo4/28.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(383, 1, 4, 29, NULL, NULL, '/videos/grupo4/29.mp4', '/legendas/grupo4/29.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(384, 1, 4, 30, NULL, NULL, '/videos/grupo4/30.mp4', '/legendas/grupo4/30.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(385, 1, 4, 31, NULL, NULL, '/videos/grupo4/31.mp4', '/legendas/grupo4/31.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(386, 1, 4, 32, NULL, NULL, '/videos/grupo4/32.mp4', '/legendas/grupo4/32.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(387, 1, 4, 33, NULL, NULL, '/videos/grupo4/33.mp4', '/legendas/grupo4/33.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(388, 1, 4, 34, NULL, NULL, '/videos/grupo4/34.mp4', '/legendas/grupo4/34.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(389, 1, 4, 35, NULL, NULL, '/videos/grupo4/35.mp4', '/legendas/grupo4/35.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(390, 1, 4, 36, NULL, NULL, '/videos/grupo4/36.mp4', '/legendas/grupo4/36.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(391, 1, 4, 37, NULL, NULL, '/videos/grupo4/37.mp4', '/legendas/grupo4/37.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(392, 1, 4, 38, NULL, NULL, '/videos/grupo4/38.mp4', '/legendas/grupo4/38.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(393, 1, 4, 39, NULL, NULL, '/videos/grupo4/39.mp4', '/legendas/grupo4/39.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(394, 1, 4, 40, NULL, NULL, '/videos/grupo4/40.mp4', '/legendas/grupo4/40.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(395, 1, 4, 41, NULL, NULL, '/videos/grupo4/41.mp4', '/legendas/grupo4/41.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(396, 1, 4, 42, NULL, NULL, '/videos/grupo4/42.mp4', '/legendas/grupo4/42.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(397, 1, 4, 43, NULL, NULL, '/videos/grupo4/43.mp4', '/legendas/grupo4/43.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(398, 1, 4, 44, NULL, NULL, '/videos/grupo4/44.mp4', '/legendas/grupo4/44.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(399, 1, 4, 45, NULL, NULL, '/videos/grupo4/45.mp4', '/legendas/grupo4/45.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(400, 1, 4, 46, NULL, NULL, '/videos/grupo4/46.mp4', '/legendas/grupo4/46.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(401, 1, 4, 47, NULL, NULL, '/videos/grupo4/47.mp4', '/legendas/grupo4/47.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(402, 1, 4, 48, NULL, NULL, '/videos/grupo4/48.mp4', '/legendas/grupo4/48.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(403, 1, 4, 49, NULL, NULL, '/videos/grupo4/49.mp4', '/legendas/grupo4/49.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(404, 1, 4, 50, NULL, NULL, '/videos/grupo4/50.mp4', '/legendas/grupo4/50.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(405, 1, 4, 51, NULL, NULL, '/videos/grupo4/51.mp4', '/legendas/grupo4/51.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(406, 1, 4, 52, NULL, NULL, '/videos/grupo4/52.mp4', '/legendas/grupo4/52.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(407, 1, 4, 53, NULL, NULL, '/videos/grupo4/53.mp4', '/legendas/grupo4/53.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(408, 1, 4, 54, NULL, NULL, '/videos/grupo4/54.mp4', '/legendas/grupo4/54.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(409, 1, 4, 55, NULL, NULL, '/videos/grupo4/55.mp4', '/legendas/grupo4/55.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(410, 1, 4, 56, NULL, NULL, '/videos/grupo4/56.mp4', '/legendas/grupo4/56.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(411, 1, 4, 57, NULL, NULL, '/videos/grupo4/57.mp4', '/legendas/grupo4/57.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(412, 1, 4, 58, NULL, NULL, '/videos/grupo4/58.mp4', '/legendas/grupo4/58.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(413, 1, 4, 59, NULL, NULL, '/videos/grupo4/59.mp4', '/legendas/grupo4/59.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(414, 1, 4, 60, NULL, NULL, '/videos/grupo4/60.mp4', '/legendas/grupo4/60.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(415, 1, 4, 61, NULL, NULL, '/videos/grupo4/61.mp4', '/legendas/grupo4/61.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(416, 1, 4, 62, NULL, NULL, '/videos/grupo4/62.mp4', '/legendas/grupo4/62.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(417, 1, 4, 63, NULL, NULL, '/videos/grupo4/63.mp4', '/legendas/grupo4/63.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(418, 1, 4, 64, NULL, NULL, '/videos/grupo4/64.mp4', '/legendas/grupo4/64.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(419, 1, 4, 65, NULL, NULL, '/videos/grupo4/65.mp4', '/legendas/grupo4/65.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(420, 1, 4, 66, NULL, NULL, '/videos/grupo4/66.mp4', '/legendas/grupo4/66.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(421, 1, 4, 67, NULL, NULL, '/videos/grupo4/67.mp4', '/legendas/grupo4/67.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(422, 1, 4, 68, NULL, NULL, '/videos/grupo4/68.mp4', '/legendas/grupo4/68.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(423, 1, 4, 69, NULL, NULL, '/videos/grupo4/69.mp4', '/legendas/grupo4/69.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(424, 1, 4, 70, NULL, NULL, '/videos/grupo4/70.mp4', '/legendas/grupo4/70.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(425, 1, 4, 71, NULL, NULL, '/videos/grupo4/71.mp4', '/legendas/grupo4/71.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(426, 1, 4, 72, NULL, NULL, '/videos/grupo4/72.mp4', '/legendas/grupo4/72.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(427, 1, 4, 73, NULL, NULL, '/videos/grupo4/73.mp4', '/legendas/grupo4/73.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(428, 1, 4, 74, NULL, NULL, '/videos/grupo4/74.mp4', '/legendas/grupo4/74.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(429, 1, 4, 75, NULL, NULL, '/videos/grupo4/75.mp4', '/legendas/grupo4/75.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(430, 1, 4, 76, NULL, NULL, '/videos/grupo4/76.mp4', '/legendas/grupo4/76.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(431, 1, 4, 77, NULL, NULL, '/videos/grupo4/77.mp4', '/legendas/grupo4/77.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(432, 1, 4, 78, NULL, NULL, '/videos/grupo4/78.mp4', '/legendas/grupo4/78.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(433, 1, 4, 79, NULL, NULL, '/videos/grupo4/79.mp4', '/legendas/grupo4/79.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(434, 1, 4, 80, NULL, NULL, '/videos/grupo4/80.mp4', '/legendas/grupo4/80.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(435, 1, 4, 81, NULL, NULL, '/videos/grupo4/81.mp4', '/legendas/grupo4/81.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(436, 1, 4, 82, NULL, NULL, '/videos/grupo4/82.mp4', '/legendas/grupo4/82.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(437, 1, 4, 83, NULL, NULL, '/videos/grupo4/83.mp4', '/legendas/grupo4/83.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(438, 1, 4, 84, NULL, NULL, '/videos/grupo4/84.mp4', '/legendas/grupo4/84.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(439, 1, 4, 85, NULL, NULL, '/videos/grupo4/85.mp4', '/legendas/grupo4/85.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(440, 1, 4, 86, NULL, NULL, '/videos/grupo4/86.mp4', '/legendas/grupo4/86.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(441, 1, 4, 87, NULL, NULL, '/videos/grupo4/87.mp4', '/legendas/grupo4/87.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(442, 1, 4, 88, NULL, NULL, '/videos/grupo4/88.mp4', '/legendas/grupo4/88.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(443, 1, 4, 89, NULL, NULL, '/videos/grupo4/89.mp4', '/legendas/grupo4/89.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(444, 1, 4, 90, NULL, NULL, '/videos/grupo4/90.mp4', '/legendas/grupo4/90.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(445, 1, 4, 91, NULL, NULL, '/videos/grupo4/91.mp4', '/legendas/grupo4/91.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(446, 1, 4, 92, NULL, NULL, '/videos/grupo4/92.mp4', '/legendas/grupo4/92.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(447, 1, 4, 93, NULL, NULL, '/videos/grupo4/93.mp4', '/legendas/grupo4/93.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(448, 1, 4, 94, NULL, NULL, '/videos/grupo4/94.mp4', '/legendas/grupo4/94.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(449, 1, 4, 95, NULL, NULL, '/videos/grupo4/95.mp4', '/legendas/grupo4/95.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(450, 1, 4, 96, NULL, NULL, '/videos/grupo4/96.mp4', '/legendas/grupo4/96.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(451, 1, 4, 97, NULL, NULL, '/videos/grupo4/97.mp4', '/legendas/grupo4/97.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(452, 1, 4, 98, NULL, NULL, '/videos/grupo4/98.mp4', '/legendas/grupo4/98.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(453, 1, 4, 99, NULL, NULL, '/videos/grupo4/99.mp4', '/legendas/grupo4/99.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(454, 1, 4, 100, NULL, NULL, '/videos/grupo4/100.mp4', '/legendas/grupo4/100.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(455, 1, 4, 101, NULL, NULL, '/videos/grupo4/101.mp4', '/legendas/grupo4/101.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(456, 1, 4, 102, NULL, NULL, '/videos/grupo4/102.mp4', '/legendas/grupo4/102.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(457, 1, 4, 103, NULL, NULL, '/videos/grupo4/103.mp4', '/legendas/grupo4/103.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(458, 1, 4, 104, NULL, NULL, '/videos/grupo4/104.mp4', '/legendas/grupo4/104.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(459, 1, 4, 105, NULL, NULL, '/videos/grupo4/105.mp4', '/legendas/grupo4/105.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(460, 1, 4, 106, NULL, NULL, '/videos/grupo4/106.mp4', '/legendas/grupo4/106.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(461, 1, 4, 107, NULL, NULL, '/videos/grupo4/107.mp4', '/legendas/grupo4/107.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(462, 1, 4, 108, NULL, NULL, '/videos/grupo4/108.mp4', '/legendas/grupo4/108.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(463, 1, 4, 109, NULL, NULL, '/videos/grupo4/109.mp4', '/legendas/grupo4/109.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(464, 1, 4, 110, NULL, NULL, '/videos/grupo4/110.mp4', '/legendas/grupo4/110.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(465, 1, 4, 111, NULL, NULL, '/videos/grupo4/111.mp4', '/legendas/grupo4/111.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(466, 1, 4, 112, NULL, NULL, '/videos/grupo4/112.mp4', '/legendas/grupo4/112.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(467, 1, 4, 113, NULL, NULL, '/videos/grupo4/113.mp4', '/legendas/grupo4/113.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(468, 1, 4, 114, NULL, NULL, '/videos/grupo4/114.mp4', '/legendas/grupo4/114.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(469, 1, 4, 115, NULL, NULL, '/videos/grupo4/115.mp4', '/legendas/grupo4/115.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(470, 1, 4, 116, NULL, NULL, '/videos/grupo4/116.mp4', '/legendas/grupo4/116.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(471, 1, 4, 117, NULL, NULL, '/videos/grupo4/117.mp4', '/legendas/grupo4/117.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(472, 1, 4, 118, NULL, NULL, '/videos/grupo4/118.mp4', '/legendas/grupo4/118.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(473, 1, 5, 1, NULL, NULL, '/videos/grupo5/1.mp4', '/legendas/grupo5/1.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(474, 1, 5, 2, NULL, NULL, '/videos/grupo5/2.mp4', '/legendas/grupo5/2.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(475, 1, 5, 3, NULL, NULL, '/videos/grupo5/3.mp4', '/legendas/grupo5/3.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(476, 1, 5, 4, NULL, NULL, '/videos/grupo5/4.mp4', '/legendas/grupo5/4.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(477, 1, 5, 5, NULL, NULL, '/videos/grupo5/5.mp4', '/legendas/grupo5/5.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(478, 1, 5, 6, NULL, NULL, '/videos/grupo5/6.mp4', '/legendas/grupo5/6.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(479, 1, 5, 7, NULL, NULL, '/videos/grupo5/7.mp4', '/legendas/grupo5/7.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(480, 1, 5, 8, NULL, NULL, '/videos/grupo5/8.mp4', '/legendas/grupo5/8.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(481, 1, 5, 9, NULL, NULL, '/videos/grupo5/9.mp4', '/legendas/grupo5/9.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(482, 1, 5, 10, NULL, NULL, '/videos/grupo5/10.mp4', '/legendas/grupo5/10.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(483, 1, 5, 11, NULL, NULL, '/videos/grupo5/11.mp4', '/legendas/grupo5/11.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(484, 1, 5, 12, NULL, NULL, '/videos/grupo5/12.mp4', '/legendas/grupo5/12.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(485, 1, 5, 13, NULL, NULL, '/videos/grupo5/13.mp4', '/legendas/grupo5/13.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(486, 1, 5, 14, NULL, NULL, '/videos/grupo5/14.mp4', '/legendas/grupo5/14.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(487, 1, 5, 15, NULL, NULL, '/videos/grupo5/15.mp4', '/legendas/grupo5/15.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(488, 1, 5, 16, NULL, NULL, '/videos/grupo5/16.mp4', '/legendas/grupo5/16.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(489, 1, 5, 17, NULL, NULL, '/videos/grupo5/17.mp4', '/legendas/grupo5/17.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(490, 1, 5, 18, NULL, NULL, '/videos/grupo5/18.mp4', '/legendas/grupo5/18.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(491, 1, 5, 19, NULL, NULL, '/videos/grupo5/19.mp4', '/legendas/grupo5/19.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(492, 1, 5, 20, NULL, NULL, '/videos/grupo5/20.mp4', '/legendas/grupo5/20.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(493, 1, 5, 21, NULL, NULL, '/videos/grupo5/21.mp4', '/legendas/grupo5/21.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(494, 1, 5, 22, NULL, NULL, '/videos/grupo5/22.mp4', '/legendas/grupo5/22.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(495, 1, 5, 23, NULL, NULL, '/videos/grupo5/23.mp4', '/legendas/grupo5/23.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(496, 1, 5, 24, NULL, NULL, '/videos/grupo5/24.mp4', '/legendas/grupo5/24.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(497, 1, 5, 25, NULL, NULL, '/videos/grupo5/25.mp4', '/legendas/grupo5/25.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(498, 1, 5, 26, NULL, NULL, '/videos/grupo5/26.mp4', '/legendas/grupo5/26.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(499, 1, 5, 27, NULL, NULL, '/videos/grupo5/27.mp4', '/legendas/grupo5/27.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(500, 1, 5, 28, NULL, NULL, '/videos/grupo5/28.mp4', '/legendas/grupo5/28.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(501, 1, 5, 29, NULL, NULL, '/videos/grupo5/29.mp4', '/legendas/grupo5/29.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(502, 1, 5, 30, NULL, NULL, '/videos/grupo5/30.mp4', '/legendas/grupo5/30.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(503, 1, 5, 31, NULL, NULL, '/videos/grupo5/31.mp4', '/legendas/grupo5/31.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(504, 1, 5, 32, NULL, NULL, '/videos/grupo5/32.mp4', '/legendas/grupo5/32.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(505, 1, 5, 33, NULL, NULL, '/videos/grupo5/33.mp4', '/legendas/grupo5/33.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(506, 1, 5, 34, NULL, NULL, '/videos/grupo5/34.mp4', '/legendas/grupo5/34.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(507, 1, 5, 35, NULL, NULL, '/videos/grupo5/35.mp4', '/legendas/grupo5/35.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(508, 1, 5, 36, NULL, NULL, '/videos/grupo5/36.mp4', '/legendas/grupo5/36.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(509, 1, 5, 37, NULL, NULL, '/videos/grupo5/37.mp4', '/legendas/grupo5/37.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(510, 1, 5, 38, NULL, NULL, '/videos/grupo5/38.mp4', '/legendas/grupo5/38.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(511, 1, 5, 39, NULL, NULL, '/videos/grupo5/39.mp4', '/legendas/grupo5/39.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(512, 1, 5, 40, NULL, NULL, '/videos/grupo5/40.mp4', '/legendas/grupo5/40.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(513, 1, 5, 41, NULL, NULL, '/videos/grupo5/41.mp4', '/legendas/grupo5/41.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(514, 1, 5, 42, NULL, NULL, '/videos/grupo5/42.mp4', '/legendas/grupo5/42.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(515, 1, 5, 43, NULL, NULL, '/videos/grupo5/43.mp4', '/legendas/grupo5/43.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(516, 1, 5, 44, NULL, NULL, '/videos/grupo5/44.mp4', '/legendas/grupo5/44.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(517, 1, 5, 45, NULL, NULL, '/videos/grupo5/45.mp4', '/legendas/grupo5/45.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(518, 1, 5, 46, NULL, NULL, '/videos/grupo5/46.mp4', '/legendas/grupo5/46.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(519, 1, 5, 47, NULL, NULL, '/videos/grupo5/47.mp4', '/legendas/grupo5/47.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(520, 1, 5, 48, NULL, NULL, '/videos/grupo5/48.mp4', '/legendas/grupo5/48.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(521, 1, 5, 49, NULL, NULL, '/videos/grupo5/49.mp4', '/legendas/grupo5/49.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(522, 1, 5, 50, NULL, NULL, '/videos/grupo5/50.mp4', '/legendas/grupo5/50.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(523, 1, 5, 51, NULL, NULL, '/videos/grupo5/51.mp4', '/legendas/grupo5/51.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(524, 1, 5, 52, NULL, NULL, '/videos/grupo5/52.mp4', '/legendas/grupo5/52.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(525, 1, 5, 53, NULL, NULL, '/videos/grupo5/53.mp4', '/legendas/grupo5/53.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(526, 1, 5, 54, NULL, NULL, '/videos/grupo5/54.mp4', '/legendas/grupo5/54.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(527, 1, 5, 55, NULL, NULL, '/videos/grupo5/55.mp4', '/legendas/grupo5/55.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(528, 1, 5, 56, NULL, NULL, '/videos/grupo5/56.mp4', '/legendas/grupo5/56.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(529, 1, 5, 57, NULL, NULL, '/videos/grupo5/57.mp4', '/legendas/grupo5/57.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(530, 1, 5, 58, NULL, NULL, '/videos/grupo5/58.mp4', '/legendas/grupo5/58.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(531, 1, 5, 59, NULL, NULL, '/videos/grupo5/59.mp4', '/legendas/grupo5/59.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(532, 1, 5, 60, NULL, NULL, '/videos/grupo5/60.mp4', '/legendas/grupo5/60.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(533, 1, 5, 61, NULL, NULL, '/videos/grupo5/61.mp4', '/legendas/grupo5/61.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(534, 1, 5, 62, NULL, NULL, '/videos/grupo5/62.mp4', '/legendas/grupo5/62.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(535, 1, 5, 63, NULL, NULL, '/videos/grupo5/63.mp4', '/legendas/grupo5/63.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(536, 1, 5, 64, NULL, NULL, '/videos/grupo5/64.mp4', '/legendas/grupo5/64.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(537, 1, 5, 65, NULL, NULL, '/videos/grupo5/65.mp4', '/legendas/grupo5/65.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(538, 1, 5, 66, NULL, NULL, '/videos/grupo5/66.mp4', '/legendas/grupo5/66.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(539, 1, 5, 67, NULL, NULL, '/videos/grupo5/67.mp4', '/legendas/grupo5/67.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(540, 1, 5, 68, NULL, NULL, '/videos/grupo5/68.mp4', '/legendas/grupo5/68.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(541, 1, 5, 69, NULL, NULL, '/videos/grupo5/69.mp4', '/legendas/grupo5/69.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(542, 1, 5, 70, NULL, NULL, '/videos/grupo5/70.mp4', '/legendas/grupo5/70.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(543, 1, 5, 71, NULL, NULL, '/videos/grupo5/71.mp4', '/legendas/grupo5/71.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(544, 1, 5, 72, NULL, NULL, '/videos/grupo5/72.mp4', '/legendas/grupo5/72.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(545, 1, 5, 73, NULL, NULL, '/videos/grupo5/73.mp4', '/legendas/grupo5/73.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(546, 1, 5, 74, NULL, NULL, '/videos/grupo5/74.mp4', '/legendas/grupo5/74.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(547, 1, 5, 75, NULL, NULL, '/videos/grupo5/75.mp4', '/legendas/grupo5/75.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(548, 1, 5, 76, NULL, NULL, '/videos/grupo5/76.mp4', '/legendas/grupo5/76.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(549, 1, 5, 77, NULL, NULL, '/videos/grupo5/77.mp4', '/legendas/grupo5/77.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(550, 1, 5, 78, NULL, NULL, '/videos/grupo5/78.mp4', '/legendas/grupo5/78.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(551, 1, 5, 79, NULL, NULL, '/videos/grupo5/79.mp4', '/legendas/grupo5/79.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(552, 1, 5, 80, NULL, NULL, '/videos/grupo5/80.mp4', '/legendas/grupo5/80.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(553, 1, 5, 81, NULL, NULL, '/videos/grupo5/81.mp4', '/legendas/grupo5/81.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(554, 1, 5, 82, NULL, NULL, '/videos/grupo5/82.mp4', '/legendas/grupo5/82.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(555, 1, 5, 83, NULL, NULL, '/videos/grupo5/83.mp4', '/legendas/grupo5/83.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(556, 1, 5, 84, NULL, NULL, '/videos/grupo5/84.mp4', '/legendas/grupo5/84.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(557, 1, 5, 85, NULL, NULL, '/videos/grupo5/85.mp4', '/legendas/grupo5/85.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(558, 1, 5, 86, NULL, NULL, '/videos/grupo5/86.mp4', '/legendas/grupo5/86.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(559, 1, 5, 87, NULL, NULL, '/videos/grupo5/87.mp4', '/legendas/grupo5/87.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(560, 1, 5, 88, NULL, NULL, '/videos/grupo5/88.mp4', '/legendas/grupo5/88.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(561, 1, 5, 89, NULL, NULL, '/videos/grupo5/89.mp4', '/legendas/grupo5/89.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(562, 1, 5, 90, NULL, NULL, '/videos/grupo5/90.mp4', '/legendas/grupo5/90.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(563, 1, 5, 91, NULL, NULL, '/videos/grupo5/91.mp4', '/legendas/grupo5/91.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(564, 1, 5, 92, NULL, NULL, '/videos/grupo5/92.mp4', '/legendas/grupo5/92.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(565, 1, 5, 93, NULL, NULL, '/videos/grupo5/93.mp4', '/legendas/grupo5/93.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(566, 1, 5, 94, NULL, NULL, '/videos/grupo5/94.mp4', '/legendas/grupo5/94.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(567, 1, 5, 95, NULL, NULL, '/videos/grupo5/95.mp4', '/legendas/grupo5/95.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(568, 1, 5, 96, NULL, NULL, '/videos/grupo5/96.mp4', '/legendas/grupo5/96.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(569, 1, 5, 97, NULL, NULL, '/videos/grupo5/97.mp4', '/legendas/grupo5/97.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(570, 1, 5, 98, NULL, NULL, '/videos/grupo5/98.mp4', '/legendas/grupo5/98.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(571, 1, 5, 99, NULL, NULL, '/videos/grupo5/99.mp4', '/legendas/grupo5/99.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(572, 1, 5, 100, NULL, NULL, '/videos/grupo5/100.mp4', '/legendas/grupo5/100.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(573, 1, 5, 101, NULL, NULL, '/videos/grupo5/101.mp4', '/legendas/grupo5/101.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(574, 1, 5, 102, NULL, NULL, '/videos/grupo5/102.mp4', '/legendas/grupo5/102.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(575, 1, 5, 103, NULL, NULL, '/videos/grupo5/103.mp4', '/legendas/grupo5/103.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(576, 1, 5, 104, NULL, NULL, '/videos/grupo5/104.mp4', '/legendas/grupo5/104.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(577, 1, 5, 105, NULL, NULL, '/videos/grupo5/105.mp4', '/legendas/grupo5/105.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(578, 1, 5, 106, NULL, NULL, '/videos/grupo5/106.mp4', '/legendas/grupo5/106.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(579, 1, 5, 107, NULL, NULL, '/videos/grupo5/107.mp4', '/legendas/grupo5/107.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(580, 1, 5, 108, NULL, NULL, '/videos/grupo5/108.mp4', '/legendas/grupo5/108.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(581, 1, 5, 109, NULL, NULL, '/videos/grupo5/109.mp4', '/legendas/grupo5/109.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(582, 1, 5, 110, NULL, NULL, '/videos/grupo5/110.mp4', '/legendas/grupo5/110.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(583, 1, 5, 111, NULL, NULL, '/videos/grupo5/111.mp4', '/legendas/grupo5/111.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(584, 1, 5, 112, NULL, NULL, '/videos/grupo5/112.mp4', '/legendas/grupo5/112.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(585, 1, 5, 113, NULL, NULL, '/videos/grupo5/113.mp4', '/legendas/grupo5/113.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(586, 1, 5, 114, NULL, NULL, '/videos/grupo5/114.mp4', '/legendas/grupo5/114.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(587, 1, 5, 115, NULL, NULL, '/videos/grupo5/115.mp4', '/legendas/grupo5/115.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(588, 1, 5, 116, NULL, NULL, '/videos/grupo5/116.mp4', '/legendas/grupo5/116.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(589, 1, 5, 117, NULL, NULL, '/videos/grupo5/117.mp4', '/legendas/grupo5/117.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(590, 1, 5, 118, NULL, NULL, '/videos/grupo5/118.mp4', '/legendas/grupo5/118.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(591, 1, 6, 1, NULL, NULL, '/videos/grupo6/1.mp4', '/legendas/grupo6/1.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(592, 1, 6, 2, NULL, NULL, '/videos/grupo6/2.mp4', '/legendas/grupo6/2.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(593, 1, 6, 3, NULL, NULL, '/videos/grupo6/3.mp4', '/legendas/grupo6/3.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(594, 1, 6, 4, NULL, NULL, '/videos/grupo6/4.mp4', '/legendas/grupo6/4.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(595, 1, 6, 5, NULL, NULL, '/videos/grupo6/5.mp4', '/legendas/grupo6/5.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(596, 1, 6, 6, NULL, NULL, '/videos/grupo6/6.mp4', '/legendas/grupo6/6.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(597, 1, 6, 7, NULL, NULL, '/videos/grupo6/7.mp4', '/legendas/grupo6/7.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(598, 1, 6, 8, NULL, NULL, '/videos/grupo6/8.mp4', '/legendas/grupo6/8.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(599, 1, 6, 9, NULL, NULL, '/videos/grupo6/9.mp4', '/legendas/grupo6/9.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(600, 1, 6, 10, NULL, NULL, '/videos/grupo6/10.mp4', '/legendas/grupo6/10.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(601, 1, 6, 11, NULL, NULL, '/videos/grupo6/11.mp4', '/legendas/grupo6/11.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(602, 1, 6, 12, NULL, NULL, '/videos/grupo6/12.mp4', '/legendas/grupo6/12.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(603, 1, 6, 13, NULL, NULL, '/videos/grupo6/13.mp4', '/legendas/grupo6/13.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(604, 1, 6, 14, NULL, NULL, '/videos/grupo6/14.mp4', '/legendas/grupo6/14.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(605, 1, 6, 15, NULL, NULL, '/videos/grupo6/15.mp4', '/legendas/grupo6/15.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(606, 1, 6, 16, NULL, NULL, '/videos/grupo6/16.mp4', '/legendas/grupo6/16.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(607, 1, 6, 17, NULL, NULL, '/videos/grupo6/17.mp4', '/legendas/grupo6/17.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(608, 1, 6, 18, NULL, NULL, '/videos/grupo6/18.mp4', '/legendas/grupo6/18.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(609, 1, 6, 19, NULL, NULL, '/videos/grupo6/19.mp4', '/legendas/grupo6/19.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(610, 1, 6, 20, NULL, NULL, '/videos/grupo6/20.mp4', '/legendas/grupo6/20.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(611, 1, 6, 21, NULL, NULL, '/videos/grupo6/21.mp4', '/legendas/grupo6/21.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(612, 1, 6, 22, NULL, NULL, '/videos/grupo6/22.mp4', '/legendas/grupo6/22.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(613, 1, 6, 23, NULL, NULL, '/videos/grupo6/23.mp4', '/legendas/grupo6/23.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(614, 1, 6, 24, NULL, NULL, '/videos/grupo6/24.mp4', '/legendas/grupo6/24.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(615, 1, 6, 25, NULL, NULL, '/videos/grupo6/25.mp4', '/legendas/grupo6/25.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(616, 1, 6, 26, NULL, NULL, '/videos/grupo6/26.mp4', '/legendas/grupo6/26.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(617, 1, 6, 27, NULL, NULL, '/videos/grupo6/27.mp4', '/legendas/grupo6/27.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(618, 1, 6, 28, NULL, NULL, '/videos/grupo6/28.mp4', '/legendas/grupo6/28.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(619, 1, 6, 29, NULL, NULL, '/videos/grupo6/29.mp4', '/legendas/grupo6/29.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(620, 1, 6, 30, NULL, NULL, '/videos/grupo6/30.mp4', '/legendas/grupo6/30.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(621, 1, 6, 31, NULL, NULL, '/videos/grupo6/31.mp4', '/legendas/grupo6/31.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(622, 1, 6, 32, NULL, NULL, '/videos/grupo6/32.mp4', '/legendas/grupo6/32.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(623, 1, 6, 33, NULL, NULL, '/videos/grupo6/33.mp4', '/legendas/grupo6/33.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(624, 1, 6, 34, NULL, NULL, '/videos/grupo6/34.mp4', '/legendas/grupo6/34.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(625, 1, 6, 35, NULL, NULL, '/videos/grupo6/35.mp4', '/legendas/grupo6/35.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(626, 1, 6, 36, NULL, NULL, '/videos/grupo6/36.mp4', '/legendas/grupo6/36.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(627, 1, 6, 37, NULL, NULL, '/videos/grupo6/37.mp4', '/legendas/grupo6/37.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(628, 1, 6, 38, NULL, NULL, '/videos/grupo6/38.mp4', '/legendas/grupo6/38.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(629, 1, 6, 39, NULL, NULL, '/videos/grupo6/39.mp4', '/legendas/grupo6/39.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(630, 1, 6, 40, NULL, NULL, '/videos/grupo6/40.mp4', '/legendas/grupo6/40.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(631, 1, 6, 41, NULL, NULL, '/videos/grupo6/41.mp4', '/legendas/grupo6/41.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(632, 1, 6, 42, NULL, NULL, '/videos/grupo6/42.mp4', '/legendas/grupo6/42.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(633, 1, 6, 43, NULL, NULL, '/videos/grupo6/43.mp4', '/legendas/grupo6/43.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(634, 1, 6, 44, NULL, NULL, '/videos/grupo6/44.mp4', '/legendas/grupo6/44.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(635, 1, 6, 45, NULL, NULL, '/videos/grupo6/45.mp4', '/legendas/grupo6/45.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(636, 1, 6, 46, NULL, NULL, '/videos/grupo6/46.mp4', '/legendas/grupo6/46.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(637, 1, 6, 47, NULL, NULL, '/videos/grupo6/47.mp4', '/legendas/grupo6/47.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(638, 1, 6, 48, NULL, NULL, '/videos/grupo6/48.mp4', '/legendas/grupo6/48.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(639, 1, 6, 49, NULL, NULL, '/videos/grupo6/49.mp4', '/legendas/grupo6/49.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(640, 1, 6, 50, NULL, NULL, '/videos/grupo6/50.mp4', '/legendas/grupo6/50.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(641, 1, 6, 51, NULL, NULL, '/videos/grupo6/51.mp4', '/legendas/grupo6/51.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(642, 1, 6, 52, NULL, NULL, '/videos/grupo6/52.mp4', '/legendas/grupo6/52.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(643, 1, 6, 53, NULL, NULL, '/videos/grupo6/53.mp4', '/legendas/grupo6/53.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(644, 1, 6, 54, NULL, NULL, '/videos/grupo6/54.mp4', '/legendas/grupo6/54.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(645, 1, 6, 55, NULL, NULL, '/videos/grupo6/55.mp4', '/legendas/grupo6/55.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(646, 1, 6, 56, NULL, NULL, '/videos/grupo6/56.mp4', '/legendas/grupo6/56.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(647, 1, 6, 57, NULL, NULL, '/videos/grupo6/57.mp4', '/legendas/grupo6/57.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(648, 1, 6, 58, NULL, NULL, '/videos/grupo6/58.mp4', '/legendas/grupo6/58.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(649, 1, 6, 59, NULL, NULL, '/videos/grupo6/59.mp4', '/legendas/grupo6/59.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(650, 1, 6, 60, NULL, NULL, '/videos/grupo6/60.mp4', '/legendas/grupo6/60.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(651, 1, 6, 61, NULL, NULL, '/videos/grupo6/61.mp4', '/legendas/grupo6/61.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(652, 1, 6, 62, NULL, NULL, '/videos/grupo6/62.mp4', '/legendas/grupo6/62.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(653, 1, 6, 63, NULL, NULL, '/videos/grupo6/63.mp4', '/legendas/grupo6/63.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(654, 1, 6, 64, NULL, NULL, '/videos/grupo6/64.mp4', '/legendas/grupo6/64.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(655, 1, 6, 65, NULL, NULL, '/videos/grupo6/65.mp4', '/legendas/grupo6/65.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(656, 1, 6, 66, NULL, NULL, '/videos/grupo6/66.mp4', '/legendas/grupo6/66.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(657, 1, 6, 67, NULL, NULL, '/videos/grupo6/67.mp4', '/legendas/grupo6/67.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(658, 1, 6, 68, NULL, NULL, '/videos/grupo6/68.mp4', '/legendas/grupo6/68.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(659, 1, 6, 69, NULL, NULL, '/videos/grupo6/69.mp4', '/legendas/grupo6/69.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(660, 1, 6, 70, NULL, NULL, '/videos/grupo6/70.mp4', '/legendas/grupo6/70.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(661, 1, 6, 71, NULL, NULL, '/videos/grupo6/71.mp4', '/legendas/grupo6/71.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(662, 1, 6, 72, NULL, NULL, '/videos/grupo6/72.mp4', '/legendas/grupo6/72.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(663, 1, 6, 73, NULL, NULL, '/videos/grupo6/73.mp4', '/legendas/grupo6/73.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(664, 1, 6, 74, NULL, NULL, '/videos/grupo6/74.mp4', '/legendas/grupo6/74.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(665, 1, 6, 75, NULL, NULL, '/videos/grupo6/75.mp4', '/legendas/grupo6/75.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(666, 1, 6, 76, NULL, NULL, '/videos/grupo6/76.mp4', '/legendas/grupo6/76.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(667, 1, 6, 77, NULL, NULL, '/videos/grupo6/77.mp4', '/legendas/grupo6/77.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(668, 1, 6, 78, NULL, NULL, '/videos/grupo6/78.mp4', '/legendas/grupo6/78.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(669, 1, 6, 79, NULL, NULL, '/videos/grupo6/79.mp4', '/legendas/grupo6/79.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(670, 1, 6, 80, NULL, NULL, '/videos/grupo6/80.mp4', '/legendas/grupo6/80.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(671, 1, 6, 81, NULL, NULL, '/videos/grupo6/81.mp4', '/legendas/grupo6/81.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(672, 1, 6, 82, NULL, NULL, '/videos/grupo6/82.mp4', '/legendas/grupo6/82.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(673, 1, 6, 83, NULL, NULL, '/videos/grupo6/83.mp4', '/legendas/grupo6/83.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(674, 1, 6, 84, NULL, NULL, '/videos/grupo6/84.mp4', '/legendas/grupo6/84.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(675, 1, 6, 85, NULL, NULL, '/videos/grupo6/85.mp4', '/legendas/grupo6/85.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(676, 1, 6, 86, NULL, NULL, '/videos/grupo6/86.mp4', '/legendas/grupo6/86.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(677, 1, 6, 87, NULL, NULL, '/videos/grupo6/87.mp4', '/legendas/grupo6/87.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(678, 1, 6, 88, NULL, NULL, '/videos/grupo6/88.mp4', '/legendas/grupo6/88.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(679, 1, 6, 89, NULL, NULL, '/videos/grupo6/89.mp4', '/legendas/grupo6/89.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(680, 1, 6, 90, NULL, NULL, '/videos/grupo6/90.mp4', '/legendas/grupo6/90.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(681, 1, 6, 91, NULL, NULL, '/videos/grupo6/91.mp4', '/legendas/grupo6/91.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(682, 1, 6, 92, NULL, NULL, '/videos/grupo6/92.mp4', '/legendas/grupo6/92.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(683, 1, 6, 93, NULL, NULL, '/videos/grupo6/93.mp4', '/legendas/grupo6/93.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(684, 1, 6, 94, NULL, NULL, '/videos/grupo6/94.mp4', '/legendas/grupo6/94.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(685, 1, 6, 95, NULL, NULL, '/videos/grupo6/95.mp4', '/legendas/grupo6/95.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(686, 1, 6, 96, NULL, NULL, '/videos/grupo6/96.mp4', '/legendas/grupo6/96.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(687, 1, 6, 97, NULL, NULL, '/videos/grupo6/97.mp4', '/legendas/grupo6/97.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(688, 1, 6, 98, NULL, NULL, '/videos/grupo6/98.mp4', '/legendas/grupo6/98.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(689, 1, 6, 99, NULL, NULL, '/videos/grupo6/99.mp4', '/legendas/grupo6/99.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(690, 1, 6, 100, NULL, NULL, '/videos/grupo6/100.mp4', '/legendas/grupo6/100.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(691, 1, 6, 101, NULL, NULL, '/videos/grupo6/101.mp4', '/legendas/grupo6/101.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(692, 1, 6, 102, NULL, NULL, '/videos/grupo6/102.mp4', '/legendas/grupo6/102.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(693, 1, 6, 103, NULL, NULL, '/videos/grupo6/103.mp4', '/legendas/grupo6/103.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(694, 1, 6, 104, NULL, NULL, '/videos/grupo6/104.mp4', '/legendas/grupo6/104.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(695, 1, 6, 105, NULL, NULL, '/videos/grupo6/105.mp4', '/legendas/grupo6/105.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(696, 1, 6, 106, NULL, NULL, '/videos/grupo6/106.mp4', '/legendas/grupo6/106.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(697, 1, 6, 107, NULL, NULL, '/videos/grupo6/107.mp4', '/legendas/grupo6/107.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(698, 1, 6, 108, NULL, NULL, '/videos/grupo6/108.mp4', '/legendas/grupo6/108.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(699, 1, 6, 109, NULL, NULL, '/videos/grupo6/109.mp4', '/legendas/grupo6/109.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(700, 1, 6, 110, NULL, NULL, '/videos/grupo6/110.mp4', '/legendas/grupo6/110.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(701, 1, 6, 111, NULL, NULL, '/videos/grupo6/111.mp4', '/legendas/grupo6/111.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(702, 1, 6, 112, NULL, NULL, '/videos/grupo6/112.mp4', '/legendas/grupo6/112.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(703, 1, 6, 113, NULL, NULL, '/videos/grupo6/113.mp4', '/legendas/grupo6/113.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(704, 1, 6, 114, NULL, NULL, '/videos/grupo6/114.mp4', '/legendas/grupo6/114.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(705, 1, 6, 115, NULL, NULL, '/videos/grupo6/115.mp4', '/legendas/grupo6/115.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(706, 1, 6, 116, NULL, NULL, '/videos/grupo6/116.mp4', '/legendas/grupo6/116.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(707, 1, 6, 117, NULL, NULL, '/videos/grupo6/117.mp4', '/legendas/grupo6/117.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(708, 1, 6, 118, NULL, NULL, '/videos/grupo6/118.mp4', '/legendas/grupo6/118.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(709, 1, 7, 1, NULL, NULL, '/videos/grupo7/1.mp4', '/legendas/grupo7/1.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(710, 1, 7, 2, NULL, NULL, '/videos/grupo7/2.mp4', '/legendas/grupo7/2.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(711, 1, 7, 3, NULL, NULL, '/videos/grupo7/3.mp4', '/legendas/grupo7/3.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(712, 1, 7, 4, NULL, NULL, '/videos/grupo7/4.mp4', '/legendas/grupo7/4.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(713, 1, 7, 5, NULL, NULL, '/videos/grupo7/5.mp4', '/legendas/grupo7/5.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(714, 1, 7, 6, NULL, NULL, '/videos/grupo7/6.mp4', '/legendas/grupo7/6.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(715, 1, 7, 7, NULL, NULL, '/videos/grupo7/7.mp4', '/legendas/grupo7/7.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(716, 1, 7, 8, NULL, NULL, '/videos/grupo7/8.mp4', '/legendas/grupo7/8.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(717, 1, 7, 9, NULL, NULL, '/videos/grupo7/9.mp4', '/legendas/grupo7/9.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(718, 1, 7, 10, NULL, NULL, '/videos/grupo7/10.mp4', '/legendas/grupo7/10.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(719, 1, 7, 11, NULL, NULL, '/videos/grupo7/11.mp4', '/legendas/grupo7/11.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(720, 1, 7, 12, NULL, NULL, '/videos/grupo7/12.mp4', '/legendas/grupo7/12.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(721, 1, 7, 13, NULL, NULL, '/videos/grupo7/13.mp4', '/legendas/grupo7/13.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(722, 1, 7, 14, NULL, NULL, '/videos/grupo7/14.mp4', '/legendas/grupo7/14.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(723, 1, 7, 15, NULL, NULL, '/videos/grupo7/15.mp4', '/legendas/grupo7/15.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(724, 1, 7, 16, NULL, NULL, '/videos/grupo7/16.mp4', '/legendas/grupo7/16.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(725, 1, 7, 17, NULL, NULL, '/videos/grupo7/17.mp4', '/legendas/grupo7/17.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(726, 1, 7, 18, NULL, NULL, '/videos/grupo7/18.mp4', '/legendas/grupo7/18.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(727, 1, 7, 19, NULL, NULL, '/videos/grupo7/19.mp4', '/legendas/grupo7/19.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(728, 1, 7, 20, NULL, NULL, '/videos/grupo7/20.mp4', '/legendas/grupo7/20.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(729, 1, 7, 21, NULL, NULL, '/videos/grupo7/21.mp4', '/legendas/grupo7/21.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(730, 1, 7, 22, NULL, NULL, '/videos/grupo7/22.mp4', '/legendas/grupo7/22.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(731, 1, 7, 23, NULL, NULL, '/videos/grupo7/23.mp4', '/legendas/grupo7/23.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(732, 1, 7, 24, NULL, NULL, '/videos/grupo7/24.mp4', '/legendas/grupo7/24.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(733, 1, 7, 25, NULL, NULL, '/videos/grupo7/25.mp4', '/legendas/grupo7/25.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(734, 1, 7, 26, NULL, NULL, '/videos/grupo7/26.mp4', '/legendas/grupo7/26.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(735, 1, 7, 27, NULL, NULL, '/videos/grupo7/27.mp4', '/legendas/grupo7/27.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(736, 1, 7, 28, NULL, NULL, '/videos/grupo7/28.mp4', '/legendas/grupo7/28.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(737, 1, 7, 29, NULL, NULL, '/videos/grupo7/29.mp4', '/legendas/grupo7/29.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(738, 1, 7, 30, NULL, NULL, '/videos/grupo7/30.mp4', '/legendas/grupo7/30.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(739, 1, 7, 31, NULL, NULL, '/videos/grupo7/31.mp4', '/legendas/grupo7/31.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(740, 1, 7, 32, NULL, NULL, '/videos/grupo7/32.mp4', '/legendas/grupo7/32.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(741, 1, 7, 33, NULL, NULL, '/videos/grupo7/33.mp4', '/legendas/grupo7/33.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(742, 1, 7, 34, NULL, NULL, '/videos/grupo7/34.mp4', '/legendas/grupo7/34.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(743, 1, 7, 35, NULL, NULL, '/videos/grupo7/35.mp4', '/legendas/grupo7/35.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(744, 1, 7, 36, NULL, NULL, '/videos/grupo7/36.mp4', '/legendas/grupo7/36.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(745, 1, 7, 37, NULL, NULL, '/videos/grupo7/37.mp4', '/legendas/grupo7/37.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(746, 1, 7, 38, NULL, NULL, '/videos/grupo7/38.mp4', '/legendas/grupo7/38.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(747, 1, 7, 39, NULL, NULL, '/videos/grupo7/39.mp4', '/legendas/grupo7/39.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(748, 1, 7, 40, NULL, NULL, '/videos/grupo7/40.mp4', '/legendas/grupo7/40.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(749, 1, 7, 41, NULL, NULL, '/videos/grupo7/41.mp4', '/legendas/grupo7/41.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(750, 1, 7, 42, NULL, NULL, '/videos/grupo7/42.mp4', '/legendas/grupo7/42.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(751, 1, 7, 43, NULL, NULL, '/videos/grupo7/43.mp4', '/legendas/grupo7/43.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(752, 1, 7, 44, NULL, NULL, '/videos/grupo7/44.mp4', '/legendas/grupo7/44.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(753, 1, 7, 45, NULL, NULL, '/videos/grupo7/45.mp4', '/legendas/grupo7/45.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(754, 1, 7, 46, NULL, NULL, '/videos/grupo7/46.mp4', '/legendas/grupo7/46.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(755, 1, 7, 47, NULL, NULL, '/videos/grupo7/47.mp4', '/legendas/grupo7/47.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(756, 1, 7, 48, NULL, NULL, '/videos/grupo7/48.mp4', '/legendas/grupo7/48.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(757, 1, 7, 49, NULL, NULL, '/videos/grupo7/49.mp4', '/legendas/grupo7/49.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(758, 1, 7, 50, NULL, NULL, '/videos/grupo7/50.mp4', '/legendas/grupo7/50.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(759, 1, 7, 51, NULL, NULL, '/videos/grupo7/51.mp4', '/legendas/grupo7/51.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(760, 1, 7, 52, NULL, NULL, '/videos/grupo7/52.mp4', '/legendas/grupo7/52.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(761, 1, 7, 53, NULL, NULL, '/videos/grupo7/53.mp4', '/legendas/grupo7/53.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(762, 1, 7, 54, NULL, NULL, '/videos/grupo7/54.mp4', '/legendas/grupo7/54.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(763, 1, 7, 55, NULL, NULL, '/videos/grupo7/55.mp4', '/legendas/grupo7/55.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(764, 1, 7, 56, NULL, NULL, '/videos/grupo7/56.mp4', '/legendas/grupo7/56.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(765, 1, 7, 57, NULL, NULL, '/videos/grupo7/57.mp4', '/legendas/grupo7/57.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(766, 1, 7, 58, NULL, NULL, '/videos/grupo7/58.mp4', '/legendas/grupo7/58.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(767, 1, 7, 59, NULL, NULL, '/videos/grupo7/59.mp4', '/legendas/grupo7/59.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(768, 1, 7, 60, NULL, NULL, '/videos/grupo7/60.mp4', '/legendas/grupo7/60.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(769, 1, 7, 61, NULL, NULL, '/videos/grupo7/61.mp4', '/legendas/grupo7/61.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(770, 1, 7, 62, NULL, NULL, '/videos/grupo7/62.mp4', '/legendas/grupo7/62.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(771, 1, 7, 63, NULL, NULL, '/videos/grupo7/63.mp4', '/legendas/grupo7/63.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(772, 1, 7, 64, NULL, NULL, '/videos/grupo7/64.mp4', '/legendas/grupo7/64.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(773, 1, 7, 65, NULL, NULL, '/videos/grupo7/65.mp4', '/legendas/grupo7/65.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(774, 1, 7, 66, NULL, NULL, '/videos/grupo7/66.mp4', '/legendas/grupo7/66.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(775, 1, 7, 67, NULL, NULL, '/videos/grupo7/67.mp4', '/legendas/grupo7/67.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(776, 1, 7, 68, NULL, NULL, '/videos/grupo7/68.mp4', '/legendas/grupo7/68.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(777, 1, 7, 69, NULL, NULL, '/videos/grupo7/69.mp4', '/legendas/grupo7/69.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(778, 1, 7, 70, NULL, NULL, '/videos/grupo7/70.mp4', '/legendas/grupo7/70.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(779, 1, 7, 71, NULL, NULL, '/videos/grupo7/71.mp4', '/legendas/grupo7/71.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(780, 1, 7, 72, NULL, NULL, '/videos/grupo7/72.mp4', '/legendas/grupo7/72.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(781, 1, 7, 73, NULL, NULL, '/videos/grupo7/73.mp4', '/legendas/grupo7/73.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(782, 1, 7, 74, NULL, NULL, '/videos/grupo7/74.mp4', '/legendas/grupo7/74.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(783, 1, 7, 75, NULL, NULL, '/videos/grupo7/75.mp4', '/legendas/grupo7/75.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(784, 1, 7, 76, NULL, NULL, '/videos/grupo7/76.mp4', '/legendas/grupo7/76.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(785, 1, 7, 77, NULL, NULL, '/videos/grupo7/77.mp4', '/legendas/grupo7/77.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(786, 1, 7, 78, NULL, NULL, '/videos/grupo7/78.mp4', '/legendas/grupo7/78.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(787, 1, 7, 79, NULL, NULL, '/videos/grupo7/79.mp4', '/legendas/grupo7/79.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(788, 1, 7, 80, NULL, NULL, '/videos/grupo7/80.mp4', '/legendas/grupo7/80.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(789, 1, 7, 81, NULL, NULL, '/videos/grupo7/81.mp4', '/legendas/grupo7/81.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(790, 1, 7, 82, NULL, NULL, '/videos/grupo7/82.mp4', '/legendas/grupo7/82.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(791, 1, 7, 83, NULL, NULL, '/videos/grupo7/83.mp4', '/legendas/grupo7/83.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(792, 1, 7, 84, NULL, NULL, '/videos/grupo7/84.mp4', '/legendas/grupo7/84.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(793, 1, 7, 85, NULL, NULL, '/videos/grupo7/85.mp4', '/legendas/grupo7/85.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(794, 1, 7, 86, NULL, NULL, '/videos/grupo7/86.mp4', '/legendas/grupo7/86.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(795, 1, 7, 87, NULL, NULL, '/videos/grupo7/87.mp4', '/legendas/grupo7/87.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(796, 1, 7, 88, NULL, NULL, '/videos/grupo7/88.mp4', '/legendas/grupo7/88.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(797, 1, 7, 89, NULL, NULL, '/videos/grupo7/89.mp4', '/legendas/grupo7/89.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(798, 1, 7, 90, NULL, NULL, '/videos/grupo7/90.mp4', '/legendas/grupo7/90.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(799, 1, 7, 91, NULL, NULL, '/videos/grupo7/91.mp4', '/legendas/grupo7/91.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(800, 1, 7, 92, NULL, NULL, '/videos/grupo7/92.mp4', '/legendas/grupo7/92.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(801, 1, 7, 93, NULL, NULL, '/videos/grupo7/93.mp4', '/legendas/grupo7/93.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(802, 1, 7, 94, NULL, NULL, '/videos/grupo7/94.mp4', '/legendas/grupo7/94.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(803, 1, 7, 95, NULL, NULL, '/videos/grupo7/95.mp4', '/legendas/grupo7/95.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(804, 1, 7, 96, NULL, NULL, '/videos/grupo7/96.mp4', '/legendas/grupo7/96.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(805, 1, 7, 97, NULL, NULL, '/videos/grupo7/97.mp4', '/legendas/grupo7/97.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(806, 1, 7, 98, NULL, NULL, '/videos/grupo7/98.mp4', '/legendas/grupo7/98.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(807, 1, 7, 99, NULL, NULL, '/videos/grupo7/99.mp4', '/legendas/grupo7/99.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(808, 1, 7, 100, NULL, NULL, '/videos/grupo7/100.mp4', '/legendas/grupo7/100.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(809, 1, 7, 101, NULL, NULL, '/videos/grupo7/101.mp4', '/legendas/grupo7/101.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(810, 1, 7, 102, NULL, NULL, '/videos/grupo7/102.mp4', '/legendas/grupo7/102.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(811, 1, 7, 103, NULL, NULL, '/videos/grupo7/103.mp4', '/legendas/grupo7/103.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(812, 1, 7, 104, NULL, NULL, '/videos/grupo7/104.mp4', '/legendas/grupo7/104.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(813, 1, 7, 105, NULL, NULL, '/videos/grupo7/105.mp4', '/legendas/grupo7/105.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(814, 1, 7, 106, NULL, NULL, '/videos/grupo7/106.mp4', '/legendas/grupo7/106.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(815, 1, 7, 107, NULL, NULL, '/videos/grupo7/107.mp4', '/legendas/grupo7/107.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(816, 1, 7, 108, NULL, NULL, '/videos/grupo7/108.mp4', '/legendas/grupo7/108.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(817, 1, 7, 109, NULL, NULL, '/videos/grupo7/109.mp4', '/legendas/grupo7/109.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(818, 1, 7, 110, NULL, NULL, '/videos/grupo7/110.mp4', '/legendas/grupo7/110.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(819, 1, 7, 111, NULL, NULL, '/videos/grupo7/111.mp4', '/legendas/grupo7/111.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(820, 1, 7, 112, NULL, NULL, '/videos/grupo7/112.mp4', '/legendas/grupo7/112.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(821, 1, 7, 113, NULL, NULL, '/videos/grupo7/113.mp4', '/legendas/grupo7/113.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(822, 1, 7, 114, NULL, NULL, '/videos/grupo7/114.mp4', '/legendas/grupo7/114.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(823, 1, 7, 115, NULL, NULL, '/videos/grupo7/115.mp4', '/legendas/grupo7/115.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(824, 1, 7, 116, NULL, NULL, '/videos/grupo7/116.mp4', '/legendas/grupo7/116.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(825, 1, 7, 117, NULL, NULL, '/videos/grupo7/117.mp4', '/legendas/grupo7/117.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(826, 1, 7, 118, NULL, NULL, '/videos/grupo7/118.mp4', '/legendas/grupo7/118.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(827, 1, 8, 1, NULL, NULL, '/videos/grupo8/1.mp4', '/legendas/grupo8/1.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(828, 1, 8, 2, NULL, NULL, '/videos/grupo8/2.mp4', '/legendas/grupo8/2.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(829, 1, 8, 3, NULL, NULL, '/videos/grupo8/3.mp4', '/legendas/grupo8/3.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(830, 1, 8, 4, NULL, NULL, '/videos/grupo8/4.mp4', '/legendas/grupo8/4.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(831, 1, 8, 5, NULL, NULL, '/videos/grupo8/5.mp4', '/legendas/grupo8/5.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(832, 1, 8, 6, NULL, NULL, '/videos/grupo8/6.mp4', '/legendas/grupo8/6.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(833, 1, 8, 7, NULL, NULL, '/videos/grupo8/7.mp4', '/legendas/grupo8/7.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(834, 1, 8, 8, NULL, NULL, '/videos/grupo8/8.mp4', '/legendas/grupo8/8.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(835, 1, 8, 9, NULL, NULL, '/videos/grupo8/9.mp4', '/legendas/grupo8/9.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(836, 1, 8, 10, NULL, NULL, '/videos/grupo8/10.mp4', '/legendas/grupo8/10.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(837, 1, 8, 11, NULL, NULL, '/videos/grupo8/11.mp4', '/legendas/grupo8/11.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(838, 1, 8, 12, NULL, NULL, '/videos/grupo8/12.mp4', '/legendas/grupo8/12.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(839, 1, 8, 13, NULL, NULL, '/videos/grupo8/13.mp4', '/legendas/grupo8/13.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(840, 1, 8, 14, NULL, NULL, '/videos/grupo8/14.mp4', '/legendas/grupo8/14.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(841, 1, 8, 15, NULL, NULL, '/videos/grupo8/15.mp4', '/legendas/grupo8/15.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(842, 1, 8, 16, NULL, NULL, '/videos/grupo8/16.mp4', '/legendas/grupo8/16.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(843, 1, 8, 17, NULL, NULL, '/videos/grupo8/17.mp4', '/legendas/grupo8/17.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(844, 1, 8, 18, NULL, NULL, '/videos/grupo8/18.mp4', '/legendas/grupo8/18.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(845, 1, 8, 19, NULL, NULL, '/videos/grupo8/19.mp4', '/legendas/grupo8/19.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(846, 1, 8, 20, NULL, NULL, '/videos/grupo8/20.mp4', '/legendas/grupo8/20.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(847, 1, 8, 21, NULL, NULL, '/videos/grupo8/21.mp4', '/legendas/grupo8/21.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(848, 1, 8, 22, NULL, NULL, '/videos/grupo8/22.mp4', '/legendas/grupo8/22.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(849, 1, 8, 23, NULL, NULL, '/videos/grupo8/23.mp4', '/legendas/grupo8/23.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(850, 1, 8, 24, NULL, NULL, '/videos/grupo8/24.mp4', '/legendas/grupo8/24.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(851, 1, 8, 25, NULL, NULL, '/videos/grupo8/25.mp4', '/legendas/grupo8/25.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(852, 1, 8, 26, NULL, NULL, '/videos/grupo8/26.mp4', '/legendas/grupo8/26.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(853, 1, 8, 27, NULL, NULL, '/videos/grupo8/27.mp4', '/legendas/grupo8/27.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(854, 1, 8, 28, NULL, NULL, '/videos/grupo8/28.mp4', '/legendas/grupo8/28.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(855, 1, 8, 29, NULL, NULL, '/videos/grupo8/29.mp4', '/legendas/grupo8/29.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(856, 1, 8, 30, NULL, NULL, '/videos/grupo8/30.mp4', '/legendas/grupo8/30.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(857, 1, 8, 31, NULL, NULL, '/videos/grupo8/31.mp4', '/legendas/grupo8/31.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(858, 1, 8, 32, NULL, NULL, '/videos/grupo8/32.mp4', '/legendas/grupo8/32.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(859, 1, 8, 33, NULL, NULL, '/videos/grupo8/33.mp4', '/legendas/grupo8/33.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(860, 1, 8, 34, NULL, NULL, '/videos/grupo8/34.mp4', '/legendas/grupo8/34.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(861, 1, 8, 35, NULL, NULL, '/videos/grupo8/35.mp4', '/legendas/grupo8/35.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(862, 1, 8, 36, NULL, NULL, '/videos/grupo8/36.mp4', '/legendas/grupo8/36.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(863, 1, 8, 37, NULL, NULL, '/videos/grupo8/37.mp4', '/legendas/grupo8/37.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(864, 1, 8, 38, NULL, NULL, '/videos/grupo8/38.mp4', '/legendas/grupo8/38.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(865, 1, 8, 39, NULL, NULL, '/videos/grupo8/39.mp4', '/legendas/grupo8/39.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(866, 1, 8, 40, NULL, NULL, '/videos/grupo8/40.mp4', '/legendas/grupo8/40.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(867, 1, 8, 41, NULL, NULL, '/videos/grupo8/41.mp4', '/legendas/grupo8/41.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(868, 1, 8, 42, NULL, NULL, '/videos/grupo8/42.mp4', '/legendas/grupo8/42.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(869, 1, 8, 43, NULL, NULL, '/videos/grupo8/43.mp4', '/legendas/grupo8/43.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(870, 1, 8, 44, NULL, NULL, '/videos/grupo8/44.mp4', '/legendas/grupo8/44.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(871, 1, 8, 45, NULL, NULL, '/videos/grupo8/45.mp4', '/legendas/grupo8/45.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(872, 1, 8, 46, NULL, NULL, '/videos/grupo8/46.mp4', '/legendas/grupo8/46.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(873, 1, 8, 47, NULL, NULL, '/videos/grupo8/47.mp4', '/legendas/grupo8/47.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(874, 1, 8, 48, NULL, NULL, '/videos/grupo8/48.mp4', '/legendas/grupo8/48.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(875, 1, 8, 49, NULL, NULL, '/videos/grupo8/49.mp4', '/legendas/grupo8/49.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(876, 1, 8, 50, NULL, NULL, '/videos/grupo8/50.mp4', '/legendas/grupo8/50.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(877, 1, 8, 51, NULL, NULL, '/videos/grupo8/51.mp4', '/legendas/grupo8/51.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(878, 1, 8, 52, NULL, NULL, '/videos/grupo8/52.mp4', '/legendas/grupo8/52.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(879, 1, 8, 53, NULL, NULL, '/videos/grupo8/53.mp4', '/legendas/grupo8/53.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(880, 1, 8, 54, NULL, NULL, '/videos/grupo8/54.mp4', '/legendas/grupo8/54.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(881, 1, 8, 55, NULL, NULL, '/videos/grupo8/55.mp4', '/legendas/grupo8/55.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(882, 1, 8, 56, NULL, NULL, '/videos/grupo8/56.mp4', '/legendas/grupo8/56.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(883, 1, 8, 57, NULL, NULL, '/videos/grupo8/57.mp4', '/legendas/grupo8/57.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(884, 1, 8, 58, NULL, NULL, '/videos/grupo8/58.mp4', '/legendas/grupo8/58.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(885, 1, 8, 59, NULL, NULL, '/videos/grupo8/59.mp4', '/legendas/grupo8/59.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(886, 1, 8, 60, NULL, NULL, '/videos/grupo8/60.mp4', '/legendas/grupo8/60.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(887, 1, 8, 61, NULL, NULL, '/videos/grupo8/61.mp4', '/legendas/grupo8/61.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(888, 1, 8, 62, NULL, NULL, '/videos/grupo8/62.mp4', '/legendas/grupo8/62.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(889, 1, 8, 63, NULL, NULL, '/videos/grupo8/63.mp4', '/legendas/grupo8/63.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(890, 1, 8, 64, NULL, NULL, '/videos/grupo8/64.mp4', '/legendas/grupo8/64.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(891, 1, 8, 65, NULL, NULL, '/videos/grupo8/65.mp4', '/legendas/grupo8/65.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(892, 1, 8, 66, NULL, NULL, '/videos/grupo8/66.mp4', '/legendas/grupo8/66.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(893, 1, 8, 67, NULL, NULL, '/videos/grupo8/67.mp4', '/legendas/grupo8/67.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(894, 1, 8, 68, NULL, NULL, '/videos/grupo8/68.mp4', '/legendas/grupo8/68.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(895, 1, 8, 69, NULL, NULL, '/videos/grupo8/69.mp4', '/legendas/grupo8/69.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(896, 1, 8, 70, NULL, NULL, '/videos/grupo8/70.mp4', '/legendas/grupo8/70.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(897, 1, 8, 71, NULL, NULL, '/videos/grupo8/71.mp4', '/legendas/grupo8/71.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(898, 1, 8, 72, NULL, NULL, '/videos/grupo8/72.mp4', '/legendas/grupo8/72.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(899, 1, 8, 73, NULL, NULL, '/videos/grupo8/73.mp4', '/legendas/grupo8/73.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(900, 1, 8, 74, NULL, NULL, '/videos/grupo8/74.mp4', '/legendas/grupo8/74.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(901, 1, 8, 75, NULL, NULL, '/videos/grupo8/75.mp4', '/legendas/grupo8/75.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(902, 1, 8, 76, NULL, NULL, '/videos/grupo8/76.mp4', '/legendas/grupo8/76.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(903, 1, 8, 77, NULL, NULL, '/videos/grupo8/77.mp4', '/legendas/grupo8/77.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(904, 1, 8, 78, NULL, NULL, '/videos/grupo8/78.mp4', '/legendas/grupo8/78.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(905, 1, 8, 79, NULL, NULL, '/videos/grupo8/79.mp4', '/legendas/grupo8/79.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(906, 1, 8, 80, NULL, NULL, '/videos/grupo8/80.mp4', '/legendas/grupo8/80.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(907, 1, 8, 81, NULL, NULL, '/videos/grupo8/81.mp4', '/legendas/grupo8/81.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(908, 1, 8, 82, NULL, NULL, '/videos/grupo8/82.mp4', '/legendas/grupo8/82.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(909, 1, 8, 83, NULL, NULL, '/videos/grupo8/83.mp4', '/legendas/grupo8/83.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(910, 1, 8, 84, NULL, NULL, '/videos/grupo8/84.mp4', '/legendas/grupo8/84.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(911, 1, 8, 85, NULL, NULL, '/videos/grupo8/85.mp4', '/legendas/grupo8/85.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(912, 1, 8, 86, NULL, NULL, '/videos/grupo8/86.mp4', '/legendas/grupo8/86.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(913, 1, 8, 87, NULL, NULL, '/videos/grupo8/87.mp4', '/legendas/grupo8/87.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(914, 1, 8, 88, NULL, NULL, '/videos/grupo8/88.mp4', '/legendas/grupo8/88.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(915, 1, 8, 89, NULL, NULL, '/videos/grupo8/89.mp4', '/legendas/grupo8/89.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(916, 1, 8, 90, NULL, NULL, '/videos/grupo8/90.mp4', '/legendas/grupo8/90.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(917, 1, 8, 91, NULL, NULL, '/videos/grupo8/91.mp4', '/legendas/grupo8/91.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(918, 1, 8, 92, NULL, NULL, '/videos/grupo8/92.mp4', '/legendas/grupo8/92.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(919, 1, 8, 93, NULL, NULL, '/videos/grupo8/93.mp4', '/legendas/grupo8/93.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(920, 1, 8, 94, NULL, NULL, '/videos/grupo8/94.mp4', '/legendas/grupo8/94.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(921, 1, 8, 95, NULL, NULL, '/videos/grupo8/95.mp4', '/legendas/grupo8/95.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(922, 1, 8, 96, NULL, NULL, '/videos/grupo8/96.mp4', '/legendas/grupo8/96.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(923, 1, 8, 97, NULL, NULL, '/videos/grupo8/97.mp4', '/legendas/grupo8/97.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(924, 1, 8, 98, NULL, NULL, '/videos/grupo8/98.mp4', '/legendas/grupo8/98.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(925, 1, 8, 99, NULL, NULL, '/videos/grupo8/99.mp4', '/legendas/grupo8/99.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(926, 1, 8, 100, NULL, NULL, '/videos/grupo8/100.mp4', '/legendas/grupo8/100.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(927, 1, 8, 101, NULL, NULL, '/videos/grupo8/101.mp4', '/legendas/grupo8/101.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(928, 1, 8, 102, NULL, NULL, '/videos/grupo8/102.mp4', '/legendas/grupo8/102.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(929, 1, 8, 103, NULL, NULL, '/videos/grupo8/103.mp4', '/legendas/grupo8/103.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(930, 1, 8, 104, NULL, NULL, '/videos/grupo8/104.mp4', '/legendas/grupo8/104.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(931, 1, 8, 105, NULL, NULL, '/videos/grupo8/105.mp4', '/legendas/grupo8/105.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(932, 1, 8, 106, NULL, NULL, '/videos/grupo8/106.mp4', '/legendas/grupo8/106.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(933, 1, 8, 107, NULL, NULL, '/videos/grupo8/107.mp4', '/legendas/grupo8/107.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(934, 1, 8, 108, NULL, NULL, '/videos/grupo8/108.mp4', '/legendas/grupo8/108.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(935, 1, 8, 109, NULL, NULL, '/videos/grupo8/109.mp4', '/legendas/grupo8/109.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(936, 1, 8, 110, NULL, NULL, '/videos/grupo8/110.mp4', '/legendas/grupo8/110.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(937, 1, 8, 111, NULL, NULL, '/videos/grupo8/111.mp4', '/legendas/grupo8/111.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(938, 1, 8, 112, NULL, NULL, '/videos/grupo8/112.mp4', '/legendas/grupo8/112.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(939, 1, 8, 113, NULL, NULL, '/videos/grupo8/113.mp4', '/legendas/grupo8/113.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(940, 1, 8, 114, NULL, NULL, '/videos/grupo8/114.mp4', '/legendas/grupo8/114.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(941, 1, 8, 115, NULL, NULL, '/videos/grupo8/115.mp4', '/legendas/grupo8/115.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(942, 1, 8, 116, NULL, NULL, '/videos/grupo8/116.mp4', '/legendas/grupo8/116.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(943, 1, 8, 117, NULL, NULL, '/videos/grupo8/117.mp4', '/legendas/grupo8/117.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(945, 1, 9, 1, NULL, NULL, '/videos/grupo9/1.mp4', '/legendas/grupo9/1.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(946, 1, 9, 2, NULL, NULL, '/videos/grupo9/2.mp4', '/legendas/grupo9/2.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(947, 1, 9, 3, NULL, NULL, '/videos/grupo9/3.mp4', '/legendas/grupo9/3.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(948, 1, 9, 4, NULL, NULL, '/videos/grupo9/4.mp4', '/legendas/grupo9/4.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(949, 1, 9, 5, NULL, NULL, '/videos/grupo9/5.mp4', '/legendas/grupo9/5.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(950, 1, 9, 6, NULL, NULL, '/videos/grupo9/6.mp4', '/legendas/grupo9/6.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(951, 1, 9, 7, NULL, NULL, '/videos/grupo9/7.mp4', '/legendas/grupo9/7.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(952, 1, 9, 8, NULL, NULL, '/videos/grupo9/8.mp4', '/legendas/grupo9/8.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(953, 1, 9, 9, NULL, NULL, '/videos/grupo9/9.mp4', '/legendas/grupo9/9.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(954, 1, 9, 10, NULL, NULL, '/videos/grupo9/10.mp4', '/legendas/grupo9/10.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(955, 1, 9, 11, NULL, NULL, '/videos/grupo9/11.mp4', '/legendas/grupo9/11.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(956, 1, 9, 12, NULL, NULL, '/videos/grupo9/12.mp4', '/legendas/grupo9/12.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(957, 1, 9, 13, NULL, NULL, '/videos/grupo9/13.mp4', '/legendas/grupo9/13.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(958, 1, 9, 14, NULL, NULL, '/videos/grupo9/14.mp4', '/legendas/grupo9/14.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(959, 1, 9, 15, NULL, NULL, '/videos/grupo9/15.mp4', '/legendas/grupo9/15.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(960, 1, 9, 16, NULL, NULL, '/videos/grupo9/16.mp4', '/legendas/grupo9/16.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(961, 1, 9, 17, NULL, NULL, '/videos/grupo9/17.mp4', '/legendas/grupo9/17.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(962, 1, 9, 18, NULL, NULL, '/videos/grupo9/18.mp4', '/legendas/grupo9/18.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(963, 1, 9, 19, NULL, NULL, '/videos/grupo9/19.mp4', '/legendas/grupo9/19.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(964, 1, 9, 20, NULL, NULL, '/videos/grupo9/20.mp4', '/legendas/grupo9/20.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(965, 1, 9, 21, NULL, NULL, '/videos/grupo9/21.mp4', '/legendas/grupo9/21.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(966, 1, 9, 22, NULL, NULL, '/videos/grupo9/22.mp4', '/legendas/grupo9/22.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(967, 1, 9, 23, NULL, NULL, '/videos/grupo9/23.mp4', '/legendas/grupo9/23.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(968, 1, 9, 24, NULL, NULL, '/videos/grupo9/24.mp4', '/legendas/grupo9/24.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(969, 1, 9, 25, NULL, NULL, '/videos/grupo9/25.mp4', '/legendas/grupo9/25.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(970, 1, 9, 26, NULL, NULL, '/videos/grupo9/26.mp4', '/legendas/grupo9/26.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(971, 1, 9, 27, NULL, NULL, '/videos/grupo9/27.mp4', '/legendas/grupo9/27.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(972, 1, 9, 28, NULL, NULL, '/videos/grupo9/28.mp4', '/legendas/grupo9/28.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(973, 1, 9, 29, NULL, NULL, '/videos/grupo9/29.mp4', '/legendas/grupo9/29.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(974, 1, 9, 30, NULL, NULL, '/videos/grupo9/30.mp4', '/legendas/grupo9/30.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(975, 1, 9, 31, NULL, NULL, '/videos/grupo9/31.mp4', '/legendas/grupo9/31.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(976, 1, 9, 32, NULL, NULL, '/videos/grupo9/32.mp4', '/legendas/grupo9/32.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(977, 1, 9, 33, NULL, NULL, '/videos/grupo9/33.mp4', '/legendas/grupo9/33.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(978, 1, 9, 34, NULL, NULL, '/videos/grupo9/34.mp4', '/legendas/grupo9/34.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(979, 1, 9, 35, NULL, NULL, '/videos/grupo9/35.mp4', '/legendas/grupo9/35.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(980, 1, 9, 36, NULL, NULL, '/videos/grupo9/36.mp4', '/legendas/grupo9/36.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(981, 1, 9, 37, NULL, NULL, '/videos/grupo9/37.mp4', '/legendas/grupo9/37.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(982, 1, 9, 38, NULL, NULL, '/videos/grupo9/38.mp4', '/legendas/grupo9/38.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(983, 1, 9, 39, NULL, NULL, '/videos/grupo9/39.mp4', '/legendas/grupo9/39.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(984, 1, 9, 40, NULL, NULL, '/videos/grupo9/40.mp4', '/legendas/grupo9/40.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(985, 1, 9, 41, NULL, NULL, '/videos/grupo9/41.mp4', '/legendas/grupo9/41.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(986, 1, 9, 42, NULL, NULL, '/videos/grupo9/42.mp4', '/legendas/grupo9/42.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(987, 1, 9, 43, NULL, NULL, '/videos/grupo9/43.mp4', '/legendas/grupo9/43.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(988, 1, 9, 44, NULL, NULL, '/videos/grupo9/44.mp4', '/legendas/grupo9/44.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(989, 1, 9, 45, NULL, NULL, '/videos/grupo9/45.mp4', '/legendas/grupo9/45.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(990, 1, 9, 46, NULL, NULL, '/videos/grupo9/46.mp4', '/legendas/grupo9/46.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(991, 1, 9, 47, NULL, NULL, '/videos/grupo9/47.mp4', '/legendas/grupo9/47.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(992, 1, 9, 48, NULL, NULL, '/videos/grupo9/48.mp4', '/legendas/grupo9/48.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(993, 1, 9, 49, NULL, NULL, '/videos/grupo9/49.mp4', '/legendas/grupo9/49.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(994, 1, 9, 50, NULL, NULL, '/videos/grupo9/50.mp4', '/legendas/grupo9/50.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(995, 1, 9, 51, NULL, NULL, '/videos/grupo9/51.mp4', '/legendas/grupo9/51.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(996, 1, 9, 52, NULL, NULL, '/videos/grupo9/52.mp4', '/legendas/grupo9/52.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(997, 1, 9, 53, NULL, NULL, '/videos/grupo9/53.mp4', '/legendas/grupo9/53.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(998, 1, 9, 54, NULL, NULL, '/videos/grupo9/54.mp4', '/legendas/grupo9/54.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(999, 1, 9, 55, NULL, NULL, '/videos/grupo9/55.mp4', '/legendas/grupo9/55.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1000, 1, 9, 56, NULL, NULL, '/videos/grupo9/56.mp4', '/legendas/grupo9/56.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1001, 1, 9, 57, NULL, NULL, '/videos/grupo9/57.mp4', '/legendas/grupo9/57.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1002, 1, 9, 58, NULL, NULL, '/videos/grupo9/58.mp4', '/legendas/grupo9/58.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1003, 1, 9, 59, NULL, NULL, '/videos/grupo9/59.mp4', '/legendas/grupo9/59.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1004, 1, 9, 60, NULL, NULL, '/videos/grupo9/60.mp4', '/legendas/grupo9/60.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1005, 1, 9, 61, NULL, NULL, '/videos/grupo9/61.mp4', '/legendas/grupo9/61.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1006, 1, 9, 62, NULL, NULL, '/videos/grupo9/62.mp4', '/legendas/grupo9/62.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1007, 1, 9, 63, NULL, NULL, '/videos/grupo9/63.mp4', '/legendas/grupo9/63.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1008, 1, 9, 64, NULL, NULL, '/videos/grupo9/64.mp4', '/legendas/grupo9/64.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1009, 1, 9, 65, NULL, NULL, '/videos/grupo9/65.mp4', '/legendas/grupo9/65.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1010, 1, 9, 66, NULL, NULL, '/videos/grupo9/66.mp4', '/legendas/grupo9/66.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1011, 1, 9, 67, NULL, NULL, '/videos/grupo9/67.mp4', '/legendas/grupo9/67.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1012, 1, 9, 68, NULL, NULL, '/videos/grupo9/68.mp4', '/legendas/grupo9/68.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1013, 1, 9, 69, NULL, NULL, '/videos/grupo9/69.mp4', '/legendas/grupo9/69.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1014, 1, 9, 70, NULL, NULL, '/videos/grupo9/70.mp4', '/legendas/grupo9/70.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1015, 1, 9, 71, NULL, NULL, '/videos/grupo9/71.mp4', '/legendas/grupo9/71.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1016, 1, 9, 72, NULL, NULL, '/videos/grupo9/72.mp4', '/legendas/grupo9/72.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1017, 1, 9, 73, NULL, NULL, '/videos/grupo9/73.mp4', '/legendas/grupo9/73.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1018, 1, 9, 74, NULL, NULL, '/videos/grupo9/74.mp4', '/legendas/grupo9/74.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1019, 1, 9, 75, NULL, NULL, '/videos/grupo9/75.mp4', '/legendas/grupo9/75.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1020, 1, 9, 76, NULL, NULL, '/videos/grupo9/76.mp4', '/legendas/grupo9/76.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1021, 1, 9, 77, NULL, NULL, '/videos/grupo9/77.mp4', '/legendas/grupo9/77.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1022, 1, 9, 78, NULL, NULL, '/videos/grupo9/78.mp4', '/legendas/grupo9/78.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1023, 1, 9, 79, NULL, NULL, '/videos/grupo9/79.mp4', '/legendas/grupo9/79.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1024, 1, 9, 80, NULL, NULL, '/videos/grupo9/80.mp4', '/legendas/grupo9/80.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1025, 1, 9, 81, NULL, NULL, '/videos/grupo9/81.mp4', '/legendas/grupo9/81.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1026, 1, 9, 82, NULL, NULL, '/videos/grupo9/82.mp4', '/legendas/grupo9/82.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1027, 1, 9, 83, NULL, NULL, '/videos/grupo9/83.mp4', '/legendas/grupo9/83.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1028, 1, 9, 84, NULL, NULL, '/videos/grupo9/84.mp4', '/legendas/grupo9/84.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1029, 1, 9, 85, NULL, NULL, '/videos/grupo9/85.mp4', '/legendas/grupo9/85.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1030, 1, 9, 86, NULL, NULL, '/videos/grupo9/86.mp4', '/legendas/grupo9/86.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1031, 1, 9, 87, NULL, NULL, '/videos/grupo9/87.mp4', '/legendas/grupo9/87.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1032, 1, 9, 88, NULL, NULL, '/videos/grupo9/88.mp4', '/legendas/grupo9/88.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1033, 1, 9, 89, NULL, NULL, '/videos/grupo9/89.mp4', '/legendas/grupo9/89.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1034, 1, 9, 90, NULL, NULL, '/videos/grupo9/90.mp4', '/legendas/grupo9/90.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1035, 1, 9, 91, NULL, NULL, '/videos/grupo9/91.mp4', '/legendas/grupo9/91.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1036, 1, 9, 92, NULL, NULL, '/videos/grupo9/92.mp4', '/legendas/grupo9/92.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1037, 1, 9, 93, NULL, NULL, '/videos/grupo9/93.mp4', '/legendas/grupo9/93.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1038, 1, 9, 94, NULL, NULL, '/videos/grupo9/94.mp4', '/legendas/grupo9/94.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1039, 1, 9, 95, NULL, NULL, '/videos/grupo9/95.mp4', '/legendas/grupo9/95.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1040, 1, 9, 96, NULL, NULL, '/videos/grupo9/96.mp4', '/legendas/grupo9/96.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1041, 1, 9, 97, NULL, NULL, '/videos/grupo9/97.mp4', '/legendas/grupo9/97.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1042, 1, 9, 98, NULL, NULL, '/videos/grupo9/98.mp4', '/legendas/grupo9/98.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1043, 1, 9, 99, NULL, NULL, '/videos/grupo9/99.mp4', '/legendas/grupo9/99.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1044, 1, 9, 100, NULL, NULL, '/videos/grupo9/100.mp4', '/legendas/grupo9/100.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1045, 1, 9, 101, NULL, NULL, '/videos/grupo9/101.mp4', '/legendas/grupo9/101.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1046, 1, 9, 102, NULL, NULL, '/videos/grupo9/102.mp4', '/legendas/grupo9/102.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1047, 1, 9, 103, NULL, NULL, '/videos/grupo9/103.mp4', '/legendas/grupo9/103.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1048, 1, 9, 104, NULL, NULL, '/videos/grupo9/104.mp4', '/legendas/grupo9/104.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1049, 1, 9, 105, NULL, NULL, '/videos/grupo9/105.mp4', '/legendas/grupo9/105.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1050, 1, 9, 106, NULL, NULL, '/videos/grupo9/106.mp4', '/legendas/grupo9/106.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1051, 1, 9, 107, NULL, NULL, '/videos/grupo9/107.mp4', '/legendas/grupo9/107.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1052, 1, 9, 108, NULL, NULL, '/videos/grupo9/108.mp4', '/legendas/grupo9/108.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1053, 1, 9, 109, NULL, NULL, '/videos/grupo9/109.mp4', '/legendas/grupo9/109.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1054, 1, 9, 110, NULL, NULL, '/videos/grupo9/110.mp4', '/legendas/grupo9/110.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1055, 1, 9, 111, NULL, NULL, '/videos/grupo9/111.mp4', '/legendas/grupo9/111.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1056, 1, 9, 112, NULL, NULL, '/videos/grupo9/112.mp4', '/legendas/grupo9/112.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1057, 1, 9, 113, NULL, NULL, '/videos/grupo9/113.mp4', '/legendas/grupo9/113.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1058, 1, 9, 114, NULL, NULL, '/videos/grupo9/114.mp4', '/legendas/grupo9/114.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1059, 1, 9, 115, NULL, NULL, '/videos/grupo9/115.mp4', '/legendas/grupo9/115.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1060, 1, 9, 116, NULL, NULL, '/videos/grupo9/116.mp4', '/legendas/grupo9/116.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1061, 1, 9, 117, NULL, NULL, '/videos/grupo9/117.mp4', '/legendas/grupo9/117.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1063, 1, 10, 1, NULL, NULL, '/videos/grupo10/1.mp4', '/legendas/grupo10/1.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1064, 1, 10, 2, NULL, NULL, '/videos/grupo10/2.mp4', '/legendas/grupo10/2.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1065, 1, 10, 3, NULL, NULL, '/videos/grupo10/3.mp4', '/legendas/grupo10/3.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1066, 1, 10, 4, NULL, NULL, '/videos/grupo10/4.mp4', '/legendas/grupo10/4.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1067, 1, 10, 5, NULL, NULL, '/videos/grupo10/5.mp4', '/legendas/grupo10/5.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1068, 1, 10, 6, NULL, NULL, '/videos/grupo10/6.mp4', '/legendas/grupo10/6.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1069, 1, 10, 7, NULL, NULL, '/videos/grupo10/7.mp4', '/legendas/grupo10/7.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1070, 1, 10, 8, NULL, NULL, '/videos/grupo10/8.mp4', '/legendas/grupo10/8.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1071, 1, 10, 9, NULL, NULL, '/videos/grupo10/9.mp4', '/legendas/grupo10/9.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1072, 1, 10, 10, NULL, NULL, '/videos/grupo10/10.mp4', '/legendas/grupo10/10.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1073, 1, 10, 11, NULL, NULL, '/videos/grupo10/11.mp4', '/legendas/grupo10/11.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1074, 1, 10, 12, NULL, NULL, '/videos/grupo10/12.mp4', '/legendas/grupo10/12.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1075, 1, 10, 13, NULL, NULL, '/videos/grupo10/13.mp4', '/legendas/grupo10/13.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1076, 1, 10, 14, NULL, NULL, '/videos/grupo10/14.mp4', '/legendas/grupo10/14.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1077, 1, 10, 15, NULL, NULL, '/videos/grupo10/15.mp4', '/legendas/grupo10/15.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1078, 1, 10, 16, NULL, NULL, '/videos/grupo10/16.mp4', '/legendas/grupo10/16.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1079, 1, 10, 17, NULL, NULL, '/videos/grupo10/17.mp4', '/legendas/grupo10/17.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1080, 1, 10, 18, NULL, NULL, '/videos/grupo10/18.mp4', '/legendas/grupo10/18.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1081, 1, 10, 19, NULL, NULL, '/videos/grupo10/19.mp4', '/legendas/grupo10/19.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1082, 1, 10, 20, NULL, NULL, '/videos/grupo10/20.mp4', '/legendas/grupo10/20.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1083, 1, 10, 21, NULL, NULL, '/videos/grupo10/21.mp4', '/legendas/grupo10/21.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1084, 1, 10, 22, NULL, NULL, '/videos/grupo10/22.mp4', '/legendas/grupo10/22.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1085, 1, 10, 23, NULL, NULL, '/videos/grupo10/23.mp4', '/legendas/grupo10/23.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1086, 1, 10, 24, NULL, NULL, '/videos/grupo10/24.mp4', '/legendas/grupo10/24.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1087, 1, 10, 25, NULL, NULL, '/videos/grupo10/25.mp4', '/legendas/grupo10/25.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1088, 1, 10, 26, NULL, NULL, '/videos/grupo10/26.mp4', '/legendas/grupo10/26.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1089, 1, 10, 27, NULL, NULL, '/videos/grupo10/27.mp4', '/legendas/grupo10/27.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1090, 1, 10, 28, NULL, NULL, '/videos/grupo10/28.mp4', '/legendas/grupo10/28.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1091, 1, 10, 29, NULL, NULL, '/videos/grupo10/29.mp4', '/legendas/grupo10/29.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1092, 1, 10, 30, NULL, NULL, '/videos/grupo10/30.mp4', '/legendas/grupo10/30.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1093, 1, 10, 31, NULL, NULL, '/videos/grupo10/31.mp4', '/legendas/grupo10/31.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1094, 1, 10, 32, NULL, NULL, '/videos/grupo10/32.mp4', '/legendas/grupo10/32.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1095, 1, 10, 33, NULL, NULL, '/videos/grupo10/33.mp4', '/legendas/grupo10/33.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1096, 1, 10, 34, NULL, NULL, '/videos/grupo10/34.mp4', '/legendas/grupo10/34.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1097, 1, 10, 35, NULL, NULL, '/videos/grupo10/35.mp4', '/legendas/grupo10/35.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1098, 1, 10, 36, NULL, NULL, '/videos/grupo10/36.mp4', '/legendas/grupo10/36.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1099, 1, 10, 37, NULL, NULL, '/videos/grupo10/37.mp4', '/legendas/grupo10/37.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1100, 1, 10, 38, NULL, NULL, '/videos/grupo10/38.mp4', '/legendas/grupo10/38.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1101, 1, 10, 39, NULL, NULL, '/videos/grupo10/39.mp4', '/legendas/grupo10/39.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1102, 1, 10, 40, NULL, NULL, '/videos/grupo10/40.mp4', '/legendas/grupo10/40.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1103, 1, 10, 41, NULL, NULL, '/videos/grupo10/41.mp4', '/legendas/grupo10/41.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1104, 1, 10, 42, NULL, NULL, '/videos/grupo10/42.mp4', '/legendas/grupo10/42.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1105, 1, 10, 43, NULL, NULL, '/videos/grupo10/43.mp4', '/legendas/grupo10/43.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1106, 1, 10, 44, NULL, NULL, '/videos/grupo10/44.mp4', '/legendas/grupo10/44.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1107, 1, 10, 45, NULL, NULL, '/videos/grupo10/45.mp4', '/legendas/grupo10/45.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1108, 1, 10, 46, NULL, NULL, '/videos/grupo10/46.mp4', '/legendas/grupo10/46.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1109, 1, 10, 47, NULL, NULL, '/videos/grupo10/47.mp4', '/legendas/grupo10/47.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1110, 1, 10, 48, NULL, NULL, '/videos/grupo10/48.mp4', '/legendas/grupo10/48.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1111, 1, 10, 49, NULL, NULL, '/videos/grupo10/49.mp4', '/legendas/grupo10/49.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1112, 1, 10, 50, NULL, NULL, '/videos/grupo10/50.mp4', '/legendas/grupo10/50.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1113, 1, 10, 51, NULL, NULL, '/videos/grupo10/51.mp4', '/legendas/grupo10/51.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1114, 1, 10, 52, NULL, NULL, '/videos/grupo10/52.mp4', '/legendas/grupo10/52.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1115, 1, 10, 53, NULL, NULL, '/videos/grupo10/53.mp4', '/legendas/grupo10/53.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1116, 1, 10, 54, NULL, NULL, '/videos/grupo10/54.mp4', '/legendas/grupo10/54.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1117, 1, 10, 55, NULL, NULL, '/videos/grupo10/55.mp4', '/legendas/grupo10/55.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1118, 1, 10, 56, NULL, NULL, '/videos/grupo10/56.mp4', '/legendas/grupo10/56.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1119, 1, 10, 57, NULL, NULL, '/videos/grupo10/57.mp4', '/legendas/grupo10/57.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1120, 1, 10, 58, NULL, NULL, '/videos/grupo10/58.mp4', '/legendas/grupo10/58.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1121, 1, 10, 59, NULL, NULL, '/videos/grupo10/59.mp4', '/legendas/grupo10/59.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1122, 1, 10, 60, NULL, NULL, '/videos/grupo10/60.mp4', '/legendas/grupo10/60.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1123, 1, 10, 61, NULL, NULL, '/videos/grupo10/61.mp4', '/legendas/grupo10/61.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1124, 1, 10, 62, NULL, NULL, '/videos/grupo10/62.mp4', '/legendas/grupo10/62.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1125, 1, 10, 63, NULL, NULL, '/videos/grupo10/63.mp4', '/legendas/grupo10/63.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1126, 1, 10, 64, NULL, NULL, '/videos/grupo10/64.mp4', '/legendas/grupo10/64.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1127, 1, 10, 65, NULL, NULL, '/videos/grupo10/65.mp4', '/legendas/grupo10/65.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1128, 1, 10, 66, NULL, NULL, '/videos/grupo10/66.mp4', '/legendas/grupo10/66.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1129, 1, 10, 67, NULL, NULL, '/videos/grupo10/67.mp4', '/legendas/grupo10/67.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1130, 1, 10, 68, NULL, NULL, '/videos/grupo10/68.mp4', '/legendas/grupo10/68.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1131, 1, 10, 69, NULL, NULL, '/videos/grupo10/69.mp4', '/legendas/grupo10/69.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1132, 1, 10, 70, NULL, NULL, '/videos/grupo10/70.mp4', '/legendas/grupo10/70.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1133, 1, 10, 71, NULL, NULL, '/videos/grupo10/71.mp4', '/legendas/grupo10/71.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1134, 1, 10, 72, NULL, NULL, '/videos/grupo10/72.mp4', '/legendas/grupo10/72.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1135, 1, 10, 73, NULL, NULL, '/videos/grupo10/73.mp4', '/legendas/grupo10/73.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1136, 1, 10, 74, NULL, NULL, '/videos/grupo10/74.mp4', '/legendas/grupo10/74.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1137, 1, 10, 75, NULL, NULL, '/videos/grupo10/75.mp4', '/legendas/grupo10/75.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1138, 1, 10, 76, NULL, NULL, '/videos/grupo10/76.mp4', '/legendas/grupo10/76.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1139, 1, 10, 77, NULL, NULL, '/videos/grupo10/77.mp4', '/legendas/grupo10/77.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1140, 1, 10, 78, NULL, NULL, '/videos/grupo10/78.mp4', '/legendas/grupo10/78.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1141, 1, 10, 79, NULL, NULL, '/videos/grupo10/79.mp4', '/legendas/grupo10/79.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1142, 1, 10, 80, NULL, NULL, '/videos/grupo10/80.mp4', '/legendas/grupo10/80.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1143, 1, 10, 81, NULL, NULL, '/videos/grupo10/81.mp4', '/legendas/grupo10/81.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1144, 1, 10, 82, NULL, NULL, '/videos/grupo10/82.mp4', '/legendas/grupo10/82.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1145, 1, 10, 83, NULL, NULL, '/videos/grupo10/83.mp4', '/legendas/grupo10/83.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1146, 1, 10, 84, NULL, NULL, '/videos/grupo10/84.mp4', '/legendas/grupo10/84.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1147, 1, 10, 85, NULL, NULL, '/videos/grupo10/85.mp4', '/legendas/grupo10/85.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1148, 1, 10, 86, NULL, NULL, '/videos/grupo10/86.mp4', '/legendas/grupo10/86.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1149, 1, 10, 87, NULL, NULL, '/videos/grupo10/87.mp4', '/legendas/grupo10/87.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1150, 1, 10, 88, NULL, NULL, '/videos/grupo10/88.mp4', '/legendas/grupo10/88.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1151, 1, 10, 89, NULL, NULL, '/videos/grupo10/89.mp4', '/legendas/grupo10/89.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1152, 1, 10, 90, NULL, NULL, '/videos/grupo10/90.mp4', '/legendas/grupo10/90.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1153, 1, 10, 91, NULL, NULL, '/videos/grupo10/91.mp4', '/legendas/grupo10/91.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1154, 1, 10, 92, NULL, NULL, '/videos/grupo10/92.mp4', '/legendas/grupo10/92.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1155, 1, 10, 93, NULL, NULL, '/videos/grupo10/93.mp4', '/legendas/grupo10/93.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1156, 1, 10, 94, NULL, NULL, '/videos/grupo10/94.mp4', '/legendas/grupo10/94.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1157, 1, 10, 95, NULL, NULL, '/videos/grupo10/95.mp4', '/legendas/grupo10/95.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1158, 1, 10, 96, NULL, NULL, '/videos/grupo10/96.mp4', '/legendas/grupo10/96.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1159, 1, 10, 97, NULL, NULL, '/videos/grupo10/97.mp4', '/legendas/grupo10/97.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1160, 1, 10, 98, NULL, NULL, '/videos/grupo10/98.mp4', '/legendas/grupo10/98.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1161, 1, 10, 99, NULL, NULL, '/videos/grupo10/99.mp4', '/legendas/grupo10/99.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1162, 1, 10, 100, NULL, NULL, '/videos/grupo10/100.mp4', '/legendas/grupo10/100.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1163, 1, 10, 101, NULL, NULL, '/videos/grupo10/101.mp4', '/legendas/grupo10/101.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1164, 1, 10, 102, NULL, NULL, '/videos/grupo10/102.mp4', '/legendas/grupo10/102.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1165, 1, 10, 103, NULL, NULL, '/videos/grupo10/103.mp4', '/legendas/grupo10/103.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1166, 1, 10, 104, NULL, NULL, '/videos/grupo10/104.mp4', '/legendas/grupo10/104.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1167, 1, 10, 105, NULL, NULL, '/videos/grupo10/105.mp4', '/legendas/grupo10/105.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1168, 1, 10, 106, NULL, NULL, '/videos/grupo10/106.mp4', '/legendas/grupo10/106.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1169, 1, 10, 107, NULL, NULL, '/videos/grupo10/107.mp4', '/legendas/grupo10/107.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1170, 1, 10, 108, NULL, NULL, '/videos/grupo10/108.mp4', '/legendas/grupo10/108.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1171, 1, 10, 109, NULL, NULL, '/videos/grupo10/109.mp4', '/legendas/grupo10/109.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1172, 1, 10, 110, NULL, NULL, '/videos/grupo10/110.mp4', '/legendas/grupo10/110.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1173, 1, 10, 111, NULL, NULL, '/videos/grupo10/111.mp4', '/legendas/grupo10/111.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1174, 1, 10, 112, NULL, NULL, '/videos/grupo10/112.mp4', '/legendas/grupo10/112.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1175, 1, 10, 113, NULL, NULL, '/videos/grupo10/113.mp4', '/legendas/grupo10/113.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1176, 1, 10, 114, NULL, NULL, '/videos/grupo10/114.mp4', '/legendas/grupo10/114.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1177, 1, 10, 115, NULL, NULL, '/videos/grupo10/115.mp4', '/legendas/grupo10/115.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1178, 1, 10, 116, NULL, NULL, '/videos/grupo10/116.mp4', '/legendas/grupo10/116.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1179, 1, 10, 117, NULL, NULL, '/videos/grupo10/117.mp4', '/legendas/grupo10/117.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1181, 1, 11, 1, NULL, NULL, '/videos/grupo11/1.mp4', '/legendas/grupo11/1.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1182, 1, 11, 2, NULL, NULL, '/videos/grupo11/2.mp4', '/legendas/grupo11/2.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1183, 1, 11, 3, NULL, NULL, '/videos/grupo11/3.mp4', '/legendas/grupo11/3.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1184, 1, 11, 4, NULL, NULL, '/videos/grupo11/4.mp4', '/legendas/grupo11/4.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1185, 1, 11, 5, NULL, NULL, '/videos/grupo11/5.mp4', '/legendas/grupo11/5.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1186, 1, 11, 6, NULL, NULL, '/videos/grupo11/6.mp4', '/legendas/grupo11/6.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1187, 1, 11, 7, NULL, NULL, '/videos/grupo11/7.mp4', '/legendas/grupo11/7.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1188, 1, 11, 8, NULL, NULL, '/videos/grupo11/8.mp4', '/legendas/grupo11/8.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1189, 1, 11, 9, NULL, NULL, '/videos/grupo11/9.mp4', '/legendas/grupo11/9.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1190, 1, 11, 10, NULL, NULL, '/videos/grupo11/10.mp4', '/legendas/grupo11/10.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1191, 1, 11, 11, NULL, NULL, '/videos/grupo11/11.mp4', '/legendas/grupo11/11.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1192, 1, 11, 12, NULL, NULL, '/videos/grupo11/12.mp4', '/legendas/grupo11/12.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1193, 1, 11, 13, NULL, NULL, '/videos/grupo11/13.mp4', '/legendas/grupo11/13.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1194, 1, 11, 14, NULL, NULL, '/videos/grupo11/14.mp4', '/legendas/grupo11/14.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1195, 1, 11, 15, NULL, NULL, '/videos/grupo11/15.mp4', '/legendas/grupo11/15.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1196, 1, 11, 16, NULL, NULL, '/videos/grupo11/16.mp4', '/legendas/grupo11/16.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1197, 1, 11, 17, NULL, NULL, '/videos/grupo11/17.mp4', '/legendas/grupo11/17.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1198, 1, 11, 18, NULL, NULL, '/videos/grupo11/18.mp4', '/legendas/grupo11/18.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1199, 1, 11, 19, NULL, NULL, '/videos/grupo11/19.mp4', '/legendas/grupo11/19.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1200, 1, 11, 20, NULL, NULL, '/videos/grupo11/20.mp4', '/legendas/grupo11/20.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1201, 1, 11, 21, NULL, NULL, '/videos/grupo11/21.mp4', '/legendas/grupo11/21.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1202, 1, 11, 22, NULL, NULL, '/videos/grupo11/22.mp4', '/legendas/grupo11/22.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1203, 1, 11, 23, NULL, NULL, '/videos/grupo11/23.mp4', '/legendas/grupo11/23.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1204, 1, 11, 24, NULL, NULL, '/videos/grupo11/24.mp4', '/legendas/grupo11/24.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1205, 1, 11, 25, NULL, NULL, '/videos/grupo11/25.mp4', '/legendas/grupo11/25.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1206, 1, 11, 26, NULL, NULL, '/videos/grupo11/26.mp4', '/legendas/grupo11/26.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1207, 1, 11, 27, NULL, NULL, '/videos/grupo11/27.mp4', '/legendas/grupo11/27.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1208, 1, 11, 28, NULL, NULL, '/videos/grupo11/28.mp4', '/legendas/grupo11/28.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1209, 1, 11, 29, NULL, NULL, '/videos/grupo11/29.mp4', '/legendas/grupo11/29.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1210, 1, 11, 30, NULL, NULL, '/videos/grupo11/30.mp4', '/legendas/grupo11/30.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1211, 1, 11, 31, NULL, NULL, '/videos/grupo11/31.mp4', '/legendas/grupo11/31.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1212, 1, 11, 32, NULL, NULL, '/videos/grupo11/32.mp4', '/legendas/grupo11/32.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1213, 1, 11, 33, NULL, NULL, '/videos/grupo11/33.mp4', '/legendas/grupo11/33.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1214, 1, 11, 34, NULL, NULL, '/videos/grupo11/34.mp4', '/legendas/grupo11/34.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1215, 1, 11, 35, NULL, NULL, '/videos/grupo11/35.mp4', '/legendas/grupo11/35.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1216, 1, 11, 36, NULL, NULL, '/videos/grupo11/36.mp4', '/legendas/grupo11/36.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1217, 1, 11, 37, NULL, NULL, '/videos/grupo11/37.mp4', '/legendas/grupo11/37.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1218, 1, 11, 38, NULL, NULL, '/videos/grupo11/38.mp4', '/legendas/grupo11/38.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1219, 1, 11, 39, NULL, NULL, '/videos/grupo11/39.mp4', '/legendas/grupo11/39.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1220, 1, 11, 40, NULL, NULL, '/videos/grupo11/40.mp4', '/legendas/grupo11/40.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1221, 1, 11, 41, NULL, NULL, '/videos/grupo11/41.mp4', '/legendas/grupo11/41.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1222, 1, 11, 42, NULL, NULL, '/videos/grupo11/42.mp4', '/legendas/grupo11/42.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1223, 1, 11, 43, NULL, NULL, '/videos/grupo11/43.mp4', '/legendas/grupo11/43.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1224, 1, 11, 44, NULL, NULL, '/videos/grupo11/44.mp4', '/legendas/grupo11/44.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1225, 1, 11, 45, NULL, NULL, '/videos/grupo11/45.mp4', '/legendas/grupo11/45.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1226, 1, 11, 46, NULL, NULL, '/videos/grupo11/46.mp4', '/legendas/grupo11/46.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1227, 1, 11, 47, NULL, NULL, '/videos/grupo11/47.mp4', '/legendas/grupo11/47.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1228, 1, 11, 48, NULL, NULL, '/videos/grupo11/48.mp4', '/legendas/grupo11/48.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1229, 1, 11, 49, NULL, NULL, '/videos/grupo11/49.mp4', '/legendas/grupo11/49.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1230, 1, 11, 50, NULL, NULL, '/videos/grupo11/50.mp4', '/legendas/grupo11/50.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1231, 1, 11, 51, NULL, NULL, '/videos/grupo11/51.mp4', '/legendas/grupo11/51.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1232, 1, 11, 52, NULL, NULL, '/videos/grupo11/52.mp4', '/legendas/grupo11/52.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1233, 1, 11, 53, NULL, NULL, '/videos/grupo11/53.mp4', '/legendas/grupo11/53.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1234, 1, 11, 54, NULL, NULL, '/videos/grupo11/54.mp4', '/legendas/grupo11/54.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1235, 1, 11, 55, NULL, NULL, '/videos/grupo11/55.mp4', '/legendas/grupo11/55.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1236, 1, 11, 56, NULL, NULL, '/videos/grupo11/56.mp4', '/legendas/grupo11/56.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1237, 1, 11, 57, NULL, NULL, '/videos/grupo11/57.mp4', '/legendas/grupo11/57.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1238, 1, 11, 58, NULL, NULL, '/videos/grupo11/58.mp4', '/legendas/grupo11/58.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1239, 1, 11, 59, NULL, NULL, '/videos/grupo11/59.mp4', '/legendas/grupo11/59.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1240, 1, 11, 60, NULL, NULL, '/videos/grupo11/60.mp4', '/legendas/grupo11/60.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1241, 1, 11, 61, NULL, NULL, '/videos/grupo11/61.mp4', '/legendas/grupo11/61.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1242, 1, 11, 62, NULL, NULL, '/videos/grupo11/62.mp4', '/legendas/grupo11/62.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1243, 1, 11, 63, NULL, NULL, '/videos/grupo11/63.mp4', '/legendas/grupo11/63.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1244, 1, 11, 64, NULL, NULL, '/videos/grupo11/64.mp4', '/legendas/grupo11/64.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1245, 1, 11, 65, NULL, NULL, '/videos/grupo11/65.mp4', '/legendas/grupo11/65.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1246, 1, 11, 66, NULL, NULL, '/videos/grupo11/66.mp4', '/legendas/grupo11/66.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1247, 1, 11, 67, NULL, NULL, '/videos/grupo11/67.mp4', '/legendas/grupo11/67.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1248, 1, 11, 68, NULL, NULL, '/videos/grupo11/68.mp4', '/legendas/grupo11/68.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1249, 1, 11, 69, NULL, NULL, '/videos/grupo11/69.mp4', '/legendas/grupo11/69.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1250, 1, 11, 70, NULL, NULL, '/videos/grupo11/70.mp4', '/legendas/grupo11/70.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1251, 1, 11, 71, NULL, NULL, '/videos/grupo11/71.mp4', '/legendas/grupo11/71.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1252, 1, 11, 72, NULL, NULL, '/videos/grupo11/72.mp4', '/legendas/grupo11/72.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1253, 1, 11, 73, NULL, NULL, '/videos/grupo11/73.mp4', '/legendas/grupo11/73.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1254, 1, 11, 74, NULL, NULL, '/videos/grupo11/74.mp4', '/legendas/grupo11/74.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1255, 1, 11, 75, NULL, NULL, '/videos/grupo11/75.mp4', '/legendas/grupo11/75.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1256, 1, 11, 76, NULL, NULL, '/videos/grupo11/76.mp4', '/legendas/grupo11/76.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1257, 1, 11, 77, NULL, NULL, '/videos/grupo11/77.mp4', '/legendas/grupo11/77.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1258, 1, 11, 78, NULL, NULL, '/videos/grupo11/78.mp4', '/legendas/grupo11/78.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1259, 1, 11, 79, NULL, NULL, '/videos/grupo11/79.mp4', '/legendas/grupo11/79.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1260, 1, 11, 80, NULL, NULL, '/videos/grupo11/80.mp4', '/legendas/grupo11/80.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1261, 1, 11, 81, NULL, NULL, '/videos/grupo11/81.mp4', '/legendas/grupo11/81.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1262, 1, 11, 82, NULL, NULL, '/videos/grupo11/82.mp4', '/legendas/grupo11/82.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1263, 1, 11, 83, NULL, NULL, '/videos/grupo11/83.mp4', '/legendas/grupo11/83.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1264, 1, 11, 84, NULL, NULL, '/videos/grupo11/84.mp4', '/legendas/grupo11/84.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1265, 1, 11, 85, NULL, NULL, '/videos/grupo11/85.mp4', '/legendas/grupo11/85.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1266, 1, 11, 86, NULL, NULL, '/videos/grupo11/86.mp4', '/legendas/grupo11/86.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1267, 1, 11, 87, NULL, NULL, '/videos/grupo11/87.mp4', '/legendas/grupo11/87.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1268, 1, 11, 88, NULL, NULL, '/videos/grupo11/88.mp4', '/legendas/grupo11/88.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1269, 1, 11, 89, NULL, NULL, '/videos/grupo11/89.mp4', '/legendas/grupo11/89.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1270, 1, 11, 90, NULL, NULL, '/videos/grupo11/90.mp4', '/legendas/grupo11/90.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1271, 1, 11, 91, NULL, NULL, '/videos/grupo11/91.mp4', '/legendas/grupo11/91.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1272, 1, 11, 92, NULL, NULL, '/videos/grupo11/92.mp4', '/legendas/grupo11/92.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1273, 1, 11, 93, NULL, NULL, '/videos/grupo11/93.mp4', '/legendas/grupo11/93.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1274, 1, 11, 94, NULL, NULL, '/videos/grupo11/94.mp4', '/legendas/grupo11/94.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1275, 1, 11, 95, NULL, NULL, '/videos/grupo11/95.mp4', '/legendas/grupo11/95.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1276, 1, 11, 96, NULL, NULL, '/videos/grupo11/96.mp4', '/legendas/grupo11/96.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1277, 1, 11, 97, NULL, NULL, '/videos/grupo11/97.mp4', '/legendas/grupo11/97.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1278, 1, 11, 98, NULL, NULL, '/videos/grupo11/98.mp4', '/legendas/grupo11/98.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1279, 1, 11, 99, NULL, NULL, '/videos/grupo11/99.mp4', '/legendas/grupo11/99.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1280, 1, 11, 100, NULL, NULL, '/videos/grupo11/100.mp4', '/legendas/grupo11/100.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1281, 1, 11, 101, NULL, NULL, '/videos/grupo11/101.mp4', '/legendas/grupo11/101.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1282, 1, 11, 102, NULL, NULL, '/videos/grupo11/102.mp4', '/legendas/grupo11/102.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1283, 1, 11, 103, NULL, NULL, '/videos/grupo11/103.mp4', '/legendas/grupo11/103.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1284, 1, 11, 104, NULL, NULL, '/videos/grupo11/104.mp4', '/legendas/grupo11/104.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1285, 1, 11, 105, NULL, NULL, '/videos/grupo11/105.mp4', '/legendas/grupo11/105.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1286, 1, 11, 106, NULL, NULL, '/videos/grupo11/106.mp4', '/legendas/grupo11/106.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1287, 1, 11, 107, NULL, NULL, '/videos/grupo11/107.mp4', '/legendas/grupo11/107.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1288, 1, 11, 108, NULL, NULL, '/videos/grupo11/108.mp4', '/legendas/grupo11/108.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1289, 1, 11, 109, NULL, NULL, '/videos/grupo11/109.mp4', '/legendas/grupo11/109.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1290, 1, 11, 110, NULL, NULL, '/videos/grupo11/110.mp4', '/legendas/grupo11/110.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1291, 1, 11, 111, NULL, NULL, '/videos/grupo11/111.mp4', '/legendas/grupo11/111.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1292, 1, 11, 112, NULL, NULL, '/videos/grupo11/112.mp4', '/legendas/grupo11/112.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1293, 1, 11, 113, NULL, NULL, '/videos/grupo11/113.mp4', '/legendas/grupo11/113.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1294, 1, 11, 114, NULL, NULL, '/videos/grupo11/114.mp4', '/legendas/grupo11/114.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1295, 1, 11, 115, NULL, NULL, '/videos/grupo11/115.mp4', '/legendas/grupo11/115.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1296, 1, 11, 116, NULL, NULL, '/videos/grupo11/116.mp4', '/legendas/grupo11/116.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1299, 1, 12, 1, NULL, NULL, '/videos/grupo12/1.mp4', '/legendas/grupo12/1.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1300, 1, 12, 2, NULL, NULL, '/videos/grupo12/2.mp4', '/legendas/grupo12/2.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1301, 1, 12, 3, NULL, NULL, '/videos/grupo12/3.mp4', '/legendas/grupo12/3.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1302, 1, 12, 4, NULL, NULL, '/videos/grupo12/4.mp4', '/legendas/grupo12/4.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1303, 1, 12, 5, NULL, NULL, '/videos/grupo12/5.mp4', '/legendas/grupo12/5.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1304, 1, 12, 6, NULL, NULL, '/videos/grupo12/6.mp4', '/legendas/grupo12/6.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1305, 1, 12, 7, NULL, NULL, '/videos/grupo12/7.mp4', '/legendas/grupo12/7.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1306, 1, 12, 8, NULL, NULL, '/videos/grupo12/8.mp4', '/legendas/grupo12/8.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1307, 1, 12, 9, NULL, NULL, '/videos/grupo12/9.mp4', '/legendas/grupo12/9.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1308, 1, 12, 10, NULL, NULL, '/videos/grupo12/10.mp4', '/legendas/grupo12/10.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1309, 1, 12, 11, NULL, NULL, '/videos/grupo12/11.mp4', '/legendas/grupo12/11.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1310, 1, 12, 12, NULL, NULL, '/videos/grupo12/12.mp4', '/legendas/grupo12/12.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1311, 1, 12, 13, NULL, NULL, '/videos/grupo12/13.mp4', '/legendas/grupo12/13.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1312, 1, 12, 14, NULL, NULL, '/videos/grupo12/14.mp4', '/legendas/grupo12/14.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1313, 1, 12, 15, NULL, NULL, '/videos/grupo12/15.mp4', '/legendas/grupo12/15.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1314, 1, 12, 16, NULL, NULL, '/videos/grupo12/16.mp4', '/legendas/grupo12/16.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1315, 1, 12, 17, NULL, NULL, '/videos/grupo12/17.mp4', '/legendas/grupo12/17.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1316, 1, 12, 18, NULL, NULL, '/videos/grupo12/18.mp4', '/legendas/grupo12/18.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1317, 1, 12, 19, NULL, NULL, '/videos/grupo12/19.mp4', '/legendas/grupo12/19.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1318, 1, 12, 20, NULL, NULL, '/videos/grupo12/20.mp4', '/legendas/grupo12/20.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1319, 1, 12, 21, NULL, NULL, '/videos/grupo12/21.mp4', '/legendas/grupo12/21.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1320, 1, 12, 22, NULL, NULL, '/videos/grupo12/22.mp4', '/legendas/grupo12/22.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1321, 1, 12, 23, NULL, NULL, '/videos/grupo12/23.mp4', '/legendas/grupo12/23.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1322, 1, 12, 24, NULL, NULL, '/videos/grupo12/24.mp4', '/legendas/grupo12/24.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1323, 1, 12, 25, NULL, NULL, '/videos/grupo12/25.mp4', '/legendas/grupo12/25.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1324, 1, 12, 26, NULL, NULL, '/videos/grupo12/26.mp4', '/legendas/grupo12/26.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1325, 1, 12, 27, NULL, NULL, '/videos/grupo12/27.mp4', '/legendas/grupo12/27.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1326, 1, 12, 28, NULL, NULL, '/videos/grupo12/28.mp4', '/legendas/grupo12/28.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1327, 1, 12, 29, NULL, NULL, '/videos/grupo12/29.mp4', '/legendas/grupo12/29.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1328, 1, 12, 30, NULL, NULL, '/videos/grupo12/30.mp4', '/legendas/grupo12/30.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1329, 1, 12, 31, NULL, NULL, '/videos/grupo12/31.mp4', '/legendas/grupo12/31.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1330, 1, 12, 32, NULL, NULL, '/videos/grupo12/32.mp4', '/legendas/grupo12/32.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1331, 1, 12, 33, NULL, NULL, '/videos/grupo12/33.mp4', '/legendas/grupo12/33.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1332, 1, 12, 34, NULL, NULL, '/videos/grupo12/34.mp4', '/legendas/grupo12/34.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1333, 1, 12, 35, NULL, NULL, '/videos/grupo12/35.mp4', '/legendas/grupo12/35.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1334, 1, 12, 36, NULL, NULL, '/videos/grupo12/36.mp4', '/legendas/grupo12/36.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1335, 1, 12, 37, NULL, NULL, '/videos/grupo12/37.mp4', '/legendas/grupo12/37.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1336, 1, 12, 38, NULL, NULL, '/videos/grupo12/38.mp4', '/legendas/grupo12/38.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1337, 1, 12, 39, NULL, NULL, '/videos/grupo12/39.mp4', '/legendas/grupo12/39.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1338, 1, 12, 40, NULL, NULL, '/videos/grupo12/40.mp4', '/legendas/grupo12/40.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1339, 1, 12, 41, NULL, NULL, '/videos/grupo12/41.mp4', '/legendas/grupo12/41.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1340, 1, 12, 42, NULL, NULL, '/videos/grupo12/42.mp4', '/legendas/grupo12/42.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1341, 1, 12, 43, NULL, NULL, '/videos/grupo12/43.mp4', '/legendas/grupo12/43.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1342, 1, 12, 44, NULL, NULL, '/videos/grupo12/44.mp4', '/legendas/grupo12/44.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1343, 1, 12, 45, NULL, NULL, '/videos/grupo12/45.mp4', '/legendas/grupo12/45.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1344, 1, 12, 46, NULL, NULL, '/videos/grupo12/46.mp4', '/legendas/grupo12/46.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1345, 1, 12, 47, NULL, NULL, '/videos/grupo12/47.mp4', '/legendas/grupo12/47.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1346, 1, 12, 48, NULL, NULL, '/videos/grupo12/48.mp4', '/legendas/grupo12/48.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1347, 1, 12, 49, NULL, NULL, '/videos/grupo12/49.mp4', '/legendas/grupo12/49.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1348, 1, 12, 50, NULL, NULL, '/videos/grupo12/50.mp4', '/legendas/grupo12/50.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1349, 1, 12, 51, NULL, NULL, '/videos/grupo12/51.mp4', '/legendas/grupo12/51.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1350, 1, 12, 52, NULL, NULL, '/videos/grupo12/52.mp4', '/legendas/grupo12/52.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1351, 1, 12, 53, NULL, NULL, '/videos/grupo12/53.mp4', '/legendas/grupo12/53.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1352, 1, 12, 54, NULL, NULL, '/videos/grupo12/54.mp4', '/legendas/grupo12/54.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1353, 1, 12, 55, NULL, NULL, '/videos/grupo12/55.mp4', '/legendas/grupo12/55.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1354, 1, 12, 56, NULL, NULL, '/videos/grupo12/56.mp4', '/legendas/grupo12/56.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1355, 1, 12, 57, NULL, NULL, '/videos/grupo12/57.mp4', '/legendas/grupo12/57.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1356, 1, 12, 58, NULL, NULL, '/videos/grupo12/58.mp4', '/legendas/grupo12/58.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1357, 1, 12, 59, NULL, NULL, '/videos/grupo12/59.mp4', '/legendas/grupo12/59.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1358, 1, 12, 60, NULL, NULL, '/videos/grupo12/60.mp4', '/legendas/grupo12/60.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1359, 1, 12, 61, NULL, NULL, '/videos/grupo12/61.mp4', '/legendas/grupo12/61.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1360, 1, 12, 62, NULL, NULL, '/videos/grupo12/62.mp4', '/legendas/grupo12/62.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1361, 1, 12, 63, NULL, NULL, '/videos/grupo12/63.mp4', '/legendas/grupo12/63.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1362, 1, 12, 64, NULL, NULL, '/videos/grupo12/64.mp4', '/legendas/grupo12/64.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1363, 1, 12, 65, NULL, NULL, '/videos/grupo12/65.mp4', '/legendas/grupo12/65.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1364, 1, 12, 66, NULL, NULL, '/videos/grupo12/66.mp4', '/legendas/grupo12/66.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1365, 1, 12, 67, NULL, NULL, '/videos/grupo12/67.mp4', '/legendas/grupo12/67.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1366, 1, 12, 68, NULL, NULL, '/videos/grupo12/68.mp4', '/legendas/grupo12/68.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1367, 1, 12, 69, NULL, NULL, '/videos/grupo12/69.mp4', '/legendas/grupo12/69.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1368, 1, 12, 70, NULL, NULL, '/videos/grupo12/70.mp4', '/legendas/grupo12/70.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1369, 1, 12, 71, NULL, NULL, '/videos/grupo12/71.mp4', '/legendas/grupo12/71.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1370, 1, 12, 72, NULL, NULL, '/videos/grupo12/72.mp4', '/legendas/grupo12/72.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1371, 1, 12, 73, NULL, NULL, '/videos/grupo12/73.mp4', '/legendas/grupo12/73.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1372, 1, 12, 74, NULL, NULL, '/videos/grupo12/74.mp4', '/legendas/grupo12/74.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1373, 1, 12, 75, NULL, NULL, '/videos/grupo12/75.mp4', '/legendas/grupo12/75.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1374, 1, 12, 76, NULL, NULL, '/videos/grupo12/76.mp4', '/legendas/grupo12/76.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1375, 1, 12, 77, NULL, NULL, '/videos/grupo12/77.mp4', '/legendas/grupo12/77.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1376, 1, 12, 78, NULL, NULL, '/videos/grupo12/78.mp4', '/legendas/grupo12/78.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1377, 1, 12, 79, NULL, NULL, '/videos/grupo12/79.mp4', '/legendas/grupo12/79.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1378, 1, 12, 80, NULL, NULL, '/videos/grupo12/80.mp4', '/legendas/grupo12/80.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1379, 1, 12, 81, NULL, NULL, '/videos/grupo12/81.mp4', '/legendas/grupo12/81.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1380, 1, 12, 82, NULL, NULL, '/videos/grupo12/82.mp4', '/legendas/grupo12/82.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1381, 1, 12, 83, NULL, NULL, '/videos/grupo12/83.mp4', '/legendas/grupo12/83.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1382, 1, 12, 84, NULL, NULL, '/videos/grupo12/84.mp4', '/legendas/grupo12/84.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1383, 1, 12, 85, NULL, NULL, '/videos/grupo12/85.mp4', '/legendas/grupo12/85.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1384, 1, 12, 86, NULL, NULL, '/videos/grupo12/86.mp4', '/legendas/grupo12/86.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1385, 1, 12, 87, NULL, NULL, '/videos/grupo12/87.mp4', '/legendas/grupo12/87.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1386, 1, 12, 88, NULL, NULL, '/videos/grupo12/88.mp4', '/legendas/grupo12/88.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1387, 1, 12, 89, NULL, NULL, '/videos/grupo12/89.mp4', '/legendas/grupo12/89.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1388, 1, 12, 90, NULL, NULL, '/videos/grupo12/90.mp4', '/legendas/grupo12/90.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1389, 1, 12, 91, NULL, NULL, '/videos/grupo12/91.mp4', '/legendas/grupo12/91.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1390, 1, 12, 92, NULL, NULL, '/videos/grupo12/92.mp4', '/legendas/grupo12/92.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1391, 1, 12, 93, NULL, NULL, '/videos/grupo12/93.mp4', '/legendas/grupo12/93.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1392, 1, 12, 94, NULL, NULL, '/videos/grupo12/94.mp4', '/legendas/grupo12/94.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1393, 1, 12, 95, NULL, NULL, '/videos/grupo12/95.mp4', '/legendas/grupo12/95.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1394, 1, 12, 96, NULL, NULL, '/videos/grupo12/96.mp4', '/legendas/grupo12/96.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1395, 1, 12, 97, NULL, NULL, '/videos/grupo12/97.mp4', '/legendas/grupo12/97.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1396, 1, 12, 98, NULL, NULL, '/videos/grupo12/98.mp4', '/legendas/grupo12/98.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1397, 1, 12, 99, NULL, NULL, '/videos/grupo12/99.mp4', '/legendas/grupo12/99.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1398, 1, 12, 100, NULL, NULL, '/videos/grupo12/100.mp4', '/legendas/grupo12/100.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1399, 1, 12, 101, NULL, NULL, '/videos/grupo12/101.mp4', '/legendas/grupo12/101.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1400, 1, 12, 102, NULL, NULL, '/videos/grupo12/102.mp4', '/legendas/grupo12/102.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1401, 1, 12, 103, NULL, NULL, '/videos/grupo12/103.mp4', '/legendas/grupo12/103.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1402, 1, 12, 104, NULL, NULL, '/videos/grupo12/104.mp4', '/legendas/grupo12/104.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1403, 1, 12, 105, NULL, NULL, '/videos/grupo12/105.mp4', '/legendas/grupo12/105.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1404, 1, 12, 106, NULL, NULL, '/videos/grupo12/106.mp4', '/legendas/grupo12/106.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1405, 1, 12, 107, NULL, NULL, '/videos/grupo12/107.mp4', '/legendas/grupo12/107.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1406, 1, 12, 108, NULL, NULL, '/videos/grupo12/108.mp4', '/legendas/grupo12/108.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1407, 1, 12, 109, NULL, NULL, '/videos/grupo12/109.mp4', '/legendas/grupo12/109.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1408, 1, 12, 110, NULL, NULL, '/videos/grupo12/110.mp4', '/legendas/grupo12/110.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1409, 1, 12, 111, NULL, NULL, '/videos/grupo12/111.mp4', '/legendas/grupo12/111.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1410, 1, 12, 112, NULL, NULL, '/videos/grupo12/112.mp4', '/legendas/grupo12/112.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1411, 1, 12, 113, NULL, NULL, '/videos/grupo12/113.mp4', '/legendas/grupo12/113.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1412, 1, 12, 114, NULL, NULL, '/videos/grupo12/114.mp4', '/legendas/grupo12/114.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1413, 1, 12, 115, NULL, NULL, '/videos/grupo12/115.mp4', '/legendas/grupo12/115.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1414, 1, 12, 116, NULL, NULL, '/videos/grupo12/116.mp4', '/legendas/grupo12/116.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1415, 1, 12, 117, NULL, NULL, '/videos/grupo12/117.mp4', '/legendas/grupo12/117.vtt');

INSERT INTO `tb_video` (`id`, `id_modulo`, `num_grupo`, `num_video`, `nome`, `descricao`, `caminho_video`, `caminho_legenda`) VALUES
(1416, 1, 12, 118, NULL, NULL, '/videos/grupo12/118.mp4', '/legendas/grupo12/118.vtt');