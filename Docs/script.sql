create database ps_usuarios; 
create database ps_chaves;
create database ps_denuncias;

use ps_denuncias;
CREATE TABLE denuncias (
    id_denuncia INT AUTO_INCREMENT PRIMARY KEY,
    conteudo_denuncia VARCHAR(200) NOT NULL,
    descricao_denuncia VARCHAR(200),
    data_denuncia TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_usuario_fk INT NOT NULL,
    id_chave_fk INT NOT NULL,
    nome_usuario VARCHAR(100) NOT NULL,
    valor_chave VARCHAR(100) NOT NULL

);

use ps_usuarios;
create table usuarios (
id_usuario INT AUTO_INCREMENT PRIMARY KEY,
nome_usuario VARCHAR(100) NOT NULL,
email_usuario VARCHAR(100)NOT NULL,
telefone_usuario VARCHAR(100)NOT NULL,
senha_usuario VARCHAR(64)NOT NULL
);

use ps_chaves;
create table chavePix(
	id_chave INT AUTO_INCREMENT PRIMARY KEY,
    valor_chave VARCHAR(100) NOT NULL,
    numeroDenuncias_chave INT(100) NOT NULL
);