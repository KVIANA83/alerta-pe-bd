CREATE IF NOT EXISTS DATABASE 'defesa_civil';

CREATE TABLE IF NOT EXISTS administrador (
  id_admin int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome_completo varchar(250) NOT NULL,
  email varchar(100) NOT NULL,
  telefone varchar(11) NOT NULL,
  data_nascimento date NOT NULL,
  cargo varchar(100) NOT NULL,
  login varchar(100) NOT NULL,
  senha varchar(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS ocorrencia (
  `id_ocorrencia` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(500) NOT NULL,
  `data_abertura` date NOT NULL,
  `data_fechamento` date NOT NULL,
  `contato` varchar(20) NOT NULL,
  `nome_solicitante` varchar(250) NOT NULL,
  `status` varchar(20) NOT NULL,
  `fk_usuario_id_usuario` int DEFAULT NULL,
  `fk_admin_id_admin` int DEFAULT NULL,
  PRIMARY KEY (`id_ocorrencia`),
  KEY `fk_usuario_ocorrencia` (`fk_usuario_id_usuario`),
  KEY `fk_admin_ocorrencia` (`fk_admin_id_admin`),
  CONSTRAINT `fk_admin_ocorrencia` FOREIGN KEY (`fk_admin_id_admin`) REFERENCES `admin` (`id_admin`),
  CONSTRAINT `fk_usuario_ocorrencia` FOREIGN KEY (`fk_usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `processos` (
  `id_processos` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(500) NOT NULL,
  `data_abertura` date NOT NULL,
  `data_fechamento` date NOT NULL,
  `contato` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `fk_ocorrencias_id_ocorrencia` int DEFAULT NULL,
  `fk_admin_id_admin` int DEFAULT NULL,
  PRIMARY KEY (`id_processos`),
  KEY `fk_ocorrencias_processos` (`fk_ocorrencias_id_ocorrencia`),
  KEY `fk_admin_processos` (`fk_admin_id_admin`),
  CONSTRAINT `fk_admin_processos` FOREIGN KEY (`fk_admin_id_admin`) REFERENCES `admin` (`id_admin`),
  CONSTRAINT `fk_ocorrencias_processos` FOREIGN KEY (`fk_ocorrencias_id_ocorrencia`) REFERENCES `ocorrencia` (`id_ocorrencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `data_nascimento` date NOT NULL,
  `endereco` varchar(250) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) 
