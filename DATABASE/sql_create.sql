# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases v6.2.1                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          loja-database.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2019-08-06 19:20                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Tables                                                                 #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "tb_loja"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_loja` (
    `cod_loja` INTEGER NOT NULL AUTO_INCREMENT,
    `nome_empresarial` VARCHAR(100),
    `nome_fantasia` VARCHAR(100),
    `cnpj` VARCHAR(14),
    `email` VARCHAR(100) NOT NULL,
    `tel_fixo` VARCHAR(10),
    `tel_celular` VARCHAR(11),
    `rua` VARCHAR(100),
    `nr` NUMERIC(4),
    `cep` VARCHAR(8),
    `img_logo` TEXT,
    `cod_cidade` INTEGER,
    CONSTRAINT `PK_tb_loja` PRIMARY KEY (`cod_loja`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_admin"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_admin` (
    `cod_admin` INTEGER NOT NULL AUTO_INCREMENT,
    `login` VARCHAR(100),
    `senha` VARCHAR(100),
    `nome` VARCHAR(100),
    `cod_loja` INTEGER,
    CONSTRAINT `PK_tb_admin` PRIMARY KEY (`cod_admin`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_historia"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_historia` (
    `cod_historia` INTEGER NOT NULL AUTO_INCREMENT,
    `titulo` VARCHAR(100),
    `descricao` TEXT,
    `cod_img` INTEGER,
    `cod_loja` INTEGER,
    CONSTRAINT `PK_tb_historia` PRIMARY KEY (`cod_historia`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_contato"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_contato` (
    `cod_contato` INTEGER NOT NULL AUTO_INCREMENT,
    `nome_contato` VARCHAR(100),
    `telefone_contato` VARCHAR(15),
    `email_contato` VARCHAR(100),
    `img_contato` VARCHAR(100),
    `rua_contato` VARCHAR(100),
    `nr_contato` VARCHAR(10),
    CONSTRAINT `PK_tb_contato` PRIMARY KEY (`cod_contato`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_cidade"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_cidade` (
    `cod_cidade` INTEGER NOT NULL AUTO_INCREMENT,
    `nome_cidade` VARCHAR(200),
    `cod_estado` INTEGER,
    CONSTRAINT `PK_tb_cidade` PRIMARY KEY (`cod_cidade`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_estado"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_estado` (
    `cod_estado` INTEGER NOT NULL AUTO_INCREMENT,
    `nome_estado` VARCHAR(100),
    `uf` VARCHAR(2),
    CONSTRAINT `PK_tb_estado` PRIMARY KEY (`cod_estado`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_visita"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_visita` (
    `cod_visita` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `ip_visita` VARCHAR(11) NOT NULL,
    `data_visita` DATE NOT NULL,
    `cod_loja` INTEGER,
    CONSTRAINT `PK_tb_visita` PRIMARY KEY (`cod_visita`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_banner"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_banner` (
    `cod_banner` INTEGER NOT NULL AUTO_INCREMENT,
    `titulo` VARCHAR(100),
    `descricao` TEXT,
    `img` VARCHAR(100),
    `fl_ativo` BOOL,
    `cod_loja` INTEGER,
    CONSTRAINT `PK_tb_banner` PRIMARY KEY (`cod_banner`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_imagem"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_imagem` (
    `cod_img` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` TEXT,
    CONSTRAINT `PK_tb_imagem` PRIMARY KEY (`cod_img`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_destaque_pc"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_destaque_pc` (
    `cod_destaque_pc` INTEGER NOT NULL,
    `fl_ativo` BOOL,
    `img` TEXT,
    `cod_processador` INTEGER,
    `cod_loja` INTEGER,
    CONSTRAINT `PK_tb_destaque_pc` PRIMARY KEY (`cod_destaque_pc`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_destaque_cel"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_destaque_cel` (
    `cod_destaque_cel` INTEGER NOT NULL,
    `fl_ativo` BOOL,
    `desc_zero` TEXT,
    `desc_um` TEXT,
    `desc_dois` TEXT,
    `desc_tres` TEXT,
    `desc_quatro` TEXT,
    `desc_cinco` TEXT,
    `desc_seis` TEXT,
    `desc_sete` TEXT,
    `desc_oito` TEXT,
    `desc_nove` TEXT,
    `cod_loja` INTEGER,
    CONSTRAINT `PK_tb_destaque_cel` PRIMARY KEY (`cod_destaque_cel`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_img_dest_cel"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_img_dest_cel` (
    `cod_img_dest_cel` VARCHAR(40) NOT NULL,
    `cod_img` INTEGER,
    `cod_destaque_cel` INTEGER,
    PRIMARY KEY (`cod_img_dest_cel`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_processador"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_processador` (
    `cod_processador` INTEGER NOT NULL,
    `descricao` TEXT,
    `cod_fornecedor` INTEGER,
    CONSTRAINT `PK_tb_processador` PRIMARY KEY (`cod_processador`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_memoria"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_memoria` (
    `cod_memoria` INTEGER NOT NULL,
    `descricao` TEXT,
    `cod_fornecedor` INTEGER,
    CONSTRAINT `PK_tb_memoria` PRIMARY KEY (`cod_memoria`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_placa_mae"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_placa_mae` (
    `cod_placa_mae` INTEGER NOT NULL,
    `descricao` TEXT,
    `cod_fornecedor` INTEGER,
    CONSTRAINT `PK_tb_placa_mae` PRIMARY KEY (`cod_placa_mae`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_placa_video"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_placa_video` (
    `cod_placa_video` INTEGER NOT NULL,
    `descricao` TEXT,
    `cod_fornecedor` INTEGER,
    CONSTRAINT `PK_tb_placa_video` PRIMARY KEY (`cod_placa_video`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_fonte"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_fonte` (
    `cod_fonte` INTEGER NOT NULL,
    `descricao` TEXT,
    `cod_fornecedor` INTEGER,
    CONSTRAINT `PK_tb_fonte` PRIMARY KEY (`cod_fonte`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_hd"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_hd` (
    `cod_hd` INTEGER NOT NULL,
    `descricao` TEXT,
    `cod_fornecedor` INTEGER,
    CONSTRAINT `PK_tb_hd` PRIMARY KEY (`cod_hd`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_orc_cliente"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_orc_cliente` (
    `cod_orc_cliente` INTEGER NOT NULL,
    `dt_abertura` DATETIME,
    `dt_fechamento` DATETIME,
    `cod_status` INTEGER,
    `cod_cliente` INTEGER,
    `cod_pc` INTEGER,
    CONSTRAINT `PK_tb_orc_cliente` PRIMARY KEY (`cod_orc_cliente`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_status"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_status` (
    `cod_status` INTEGER NOT NULL,
    `descricao` VARCHAR(30),
    CONSTRAINT `PK_tb_status` PRIMARY KEY (`cod_status`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_cliente"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_cliente` (
    `cod_cliente` INTEGER NOT NULL,
    `nome` VARCHAR(100),
    `email` VARCHAR(40),
    `telefone` VARCHAR(11),
    `endereco` VARCHAR(100),
    `nr` NUMERIC(4),
    `cpf` VARCHAR(11),
    `cod_cidade` INTEGER,
    `cod_loja` INTEGER,
    CONSTRAINT `PK_tb_cliente` PRIMARY KEY (`cod_cliente`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_pc"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_pc` (
    `cod_pc` INTEGER NOT NULL,
    `cod_processador` INTEGER,
    `valor_vista` NUMERIC(6),
    `valor_prazo` NUMERIC(6),
    CONSTRAINT `PK_tb_pc` PRIMARY KEY (`cod_pc`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_gabinete"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_gabinete` (
    `cod_gabinete` INTEGER NOT NULL,
    `descricao` TEXT,
    `cod_fornecedor` INTEGER,
    CONSTRAINT `PK_tb_gabinete` PRIMARY KEY (`cod_gabinete`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_plmae_proc"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_plmae_proc` (
    `cod_plmae_proc` INTEGER NOT NULL,
    `cod_placa_mae` INTEGER,
    `cod_processador` INTEGER,
    CONSTRAINT `PK_tb_plmae_proc` PRIMARY KEY (`cod_plmae_proc`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_plmae_mem"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_plmae_mem` (
    `cod_plmae_mem` INTEGER NOT NULL,
    `cod_placa_mae` INTEGER,
    `cod_memoria` INTEGER,
    CONSTRAINT `PK_tb_plmae_mem` PRIMARY KEY (`cod_plmae_mem`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_plmae_plvideo"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_plmae_plvideo` (
    `cod_plmae_plvideo` INTEGER NOT NULL,
    `cod_placa_video` INTEGER,
    `cod_placa_mae` INTEGER,
    CONSTRAINT `PK_tb_plmae_plvideo` PRIMARY KEY (`cod_plmae_plvideo`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_plmae_hd"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_plmae_hd` (
    `cod_plmae_hd` INTEGER NOT NULL,
    `cod_hd` INTEGER,
    `cod_placa_mae` INTEGER,
    CONSTRAINT `PK_tb_plmae_hd` PRIMARY KEY (`cod_plmae_hd`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_plmae_fonte"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_plmae_fonte` (
    `cod_plmae_fonte` INTEGER NOT NULL,
    `cod_placa_mae` INTEGER,
    `cod_fonte` INTEGER,
    CONSTRAINT `PK_tb_plmae_fonte` PRIMARY KEY (`cod_plmae_fonte`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_plmae_gab"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_plmae_gab` (
    `cod_plmae_gab` INTEGER NOT NULL,
    `cod_placa_mae` INTEGER,
    `cod_gabinete` INTEGER,
    CONSTRAINT `PK_tb_plmae_gab` PRIMARY KEY (`cod_plmae_gab`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_cooler"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_cooler` (
    `cod_cooler` INTEGER NOT NULL,
    `descricao` TEXT,
    `cod_fornecedor` INTEGER,
    CONSTRAINT `PK_tb_cooler` PRIMARY KEY (`cod_cooler`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_plmae_cooler"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_plmae_cooler` (
    `cod_plmae_cooler` INTEGER NOT NULL,
    `cod_cooler` INTEGER,
    `cod_placa_mae` INTEGER,
    CONSTRAINT `PK_tb_plmae_cooler` PRIMARY KEY (`cod_plmae_cooler`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_fornecedor"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_fornecedor` (
    `cod_fornecedor` INTEGER NOT NULL,
    `nome` VARCHAR(100),
    CONSTRAINT `PK_tb_fornecedor` PRIMARY KEY (`cod_fornecedor`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_sistema"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_sistema` (
    `cod_sistema` INTEGER NOT NULL,
    `titulo` TEXT,
    `descricao` TEXT,
    `link` TEXT,
    `cod_img` INTEGER,
    `cod_loja` INTEGER,
    CONSTRAINT `PK_tb_sistema` PRIMARY KEY (`cod_sistema`)
);

# ---------------------------------------------------------------------- #
# Add table "tb_tim"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `tb_tim` (
    `cod_tim` INTEGER NOT NULL,
    `titulo` TEXT,
    `descricao` TEXT,
    `link` TEXT,
    `cod_img` INTEGER,
    `cod_loja` INTEGER,
    CONSTRAINT `PK_tb_tim` PRIMARY KEY (`cod_tim`)
);

# ---------------------------------------------------------------------- #
# Foreign key constraints                                                #
# ---------------------------------------------------------------------- #

ALTER TABLE `tb_loja` ADD CONSTRAINT `tb_cidade_tb_loja` 
    FOREIGN KEY (`cod_cidade`) REFERENCES `tb_cidade` (`cod_cidade`);

ALTER TABLE `tb_admin` ADD CONSTRAINT `tb_loja_tb_admin` 
    FOREIGN KEY (`cod_loja`) REFERENCES `tb_loja` (`cod_loja`);

ALTER TABLE `tb_historia` ADD CONSTRAINT `tb_loja_tb_historia` 
    FOREIGN KEY (`cod_loja`) REFERENCES `tb_loja` (`cod_loja`);

ALTER TABLE `tb_historia` ADD CONSTRAINT `tb_imagem_tb_historia` 
    FOREIGN KEY (`cod_img`) REFERENCES `tb_imagem` (`cod_img`);

ALTER TABLE `tb_cidade` ADD CONSTRAINT `tb_estado_tb_cidade` 
    FOREIGN KEY (`cod_estado`) REFERENCES `tb_estado` (`cod_estado`);

ALTER TABLE `tb_visita` ADD CONSTRAINT `tb_loja_tb_visita` 
    FOREIGN KEY (`cod_loja`) REFERENCES `tb_loja` (`cod_loja`);

ALTER TABLE `tb_banner` ADD CONSTRAINT `tb_loja_tb_banner` 
    FOREIGN KEY (`cod_loja`) REFERENCES `tb_loja` (`cod_loja`);

ALTER TABLE `tb_destaque_pc` ADD CONSTRAINT `tb_loja_tb_destaque_pc` 
    FOREIGN KEY (`cod_loja`) REFERENCES `tb_loja` (`cod_loja`);

ALTER TABLE `tb_destaque_pc` ADD CONSTRAINT `tb_processador_tb_destaque_pc` 
    FOREIGN KEY (`cod_processador`) REFERENCES `tb_processador` (`cod_processador`);

ALTER TABLE `tb_destaque_cel` ADD CONSTRAINT `tb_loja_tb_destaque_cel` 
    FOREIGN KEY (`cod_loja`) REFERENCES `tb_loja` (`cod_loja`);

ALTER TABLE `tb_img_dest_cel` ADD CONSTRAINT `tb_imagem_tb_img_dest_cel` 
    FOREIGN KEY (`cod_img`) REFERENCES `tb_imagem` (`cod_img`);

ALTER TABLE `tb_img_dest_cel` ADD CONSTRAINT `tb_destaque_cel_tb_img_dest_cel` 
    FOREIGN KEY (`cod_destaque_cel`) REFERENCES `tb_destaque_cel` (`cod_destaque_cel`);

ALTER TABLE `tb_processador` ADD CONSTRAINT `tb_fornecedor_tb_processador` 
    FOREIGN KEY (`cod_fornecedor`) REFERENCES `tb_fornecedor` (`cod_fornecedor`);

ALTER TABLE `tb_memoria` ADD CONSTRAINT `tb_fornecedor_tb_memoria` 
    FOREIGN KEY (`cod_fornecedor`) REFERENCES `tb_fornecedor` (`cod_fornecedor`);

ALTER TABLE `tb_placa_mae` ADD CONSTRAINT `tb_fornecedor_tb_placa_mae` 
    FOREIGN KEY (`cod_fornecedor`) REFERENCES `tb_fornecedor` (`cod_fornecedor`);

ALTER TABLE `tb_placa_video` ADD CONSTRAINT `tb_fornecedor_tb_placa_video` 
    FOREIGN KEY (`cod_fornecedor`) REFERENCES `tb_fornecedor` (`cod_fornecedor`);

ALTER TABLE `tb_fonte` ADD CONSTRAINT `tb_fornecedor_tb_fonte` 
    FOREIGN KEY (`cod_fornecedor`) REFERENCES `tb_fornecedor` (`cod_fornecedor`);

ALTER TABLE `tb_hd` ADD CONSTRAINT `tb_fornecedor_tb_hd` 
    FOREIGN KEY (`cod_fornecedor`) REFERENCES `tb_fornecedor` (`cod_fornecedor`);

ALTER TABLE `tb_orc_cliente` ADD CONSTRAINT `tb_status_tb_orc_cliente` 
    FOREIGN KEY (`cod_status`) REFERENCES `tb_status` (`cod_status`);

ALTER TABLE `tb_orc_cliente` ADD CONSTRAINT `tb_cliente_tb_orc_cliente` 
    FOREIGN KEY (`cod_cliente`) REFERENCES `tb_cliente` (`cod_cliente`);

ALTER TABLE `tb_orc_cliente` ADD CONSTRAINT `tb_pc_tb_orc_cliente` 
    FOREIGN KEY (`cod_pc`) REFERENCES `tb_pc` (`cod_pc`);

ALTER TABLE `tb_cliente` ADD CONSTRAINT `tb_cidade_tb_cliente` 
    FOREIGN KEY (`cod_cidade`) REFERENCES `tb_cidade` (`cod_cidade`);

ALTER TABLE `tb_cliente` ADD CONSTRAINT `tb_loja_tb_cliente` 
    FOREIGN KEY (`cod_loja`) REFERENCES `tb_loja` (`cod_loja`);

ALTER TABLE `tb_pc` ADD CONSTRAINT `tb_processador_tb_pc` 
    FOREIGN KEY (`cod_processador`) REFERENCES `tb_processador` (`cod_processador`);

ALTER TABLE `tb_gabinete` ADD CONSTRAINT `tb_fornecedor_tb_gabinete` 
    FOREIGN KEY (`cod_fornecedor`) REFERENCES `tb_fornecedor` (`cod_fornecedor`);

ALTER TABLE `tb_plmae_proc` ADD CONSTRAINT `tb_placa_mae_tb_plmae_proc` 
    FOREIGN KEY (`cod_placa_mae`) REFERENCES `tb_placa_mae` (`cod_placa_mae`);

ALTER TABLE `tb_plmae_proc` ADD CONSTRAINT `tb_processador_tb_plmae_proc` 
    FOREIGN KEY (`cod_processador`) REFERENCES `tb_processador` (`cod_processador`);

ALTER TABLE `tb_plmae_mem` ADD CONSTRAINT `tb_placa_mae_tb_plmae_mem` 
    FOREIGN KEY (`cod_placa_mae`) REFERENCES `tb_placa_mae` (`cod_placa_mae`);

ALTER TABLE `tb_plmae_mem` ADD CONSTRAINT `tb_memoria_tb_plmae_mem` 
    FOREIGN KEY (`cod_memoria`) REFERENCES `tb_memoria` (`cod_memoria`);

ALTER TABLE `tb_plmae_plvideo` ADD CONSTRAINT `tb_placa_video_tb_plmae_plvideo` 
    FOREIGN KEY (`cod_placa_video`) REFERENCES `tb_placa_video` (`cod_placa_video`);

ALTER TABLE `tb_plmae_plvideo` ADD CONSTRAINT `tb_placa_mae_tb_plmae_plvideo` 
    FOREIGN KEY (`cod_placa_mae`) REFERENCES `tb_placa_mae` (`cod_placa_mae`);

ALTER TABLE `tb_plmae_hd` ADD CONSTRAINT `tb_hd_tb_plmae_hd` 
    FOREIGN KEY (`cod_hd`) REFERENCES `tb_hd` (`cod_hd`);

ALTER TABLE `tb_plmae_hd` ADD CONSTRAINT `tb_placa_mae_tb_plmae_hd` 
    FOREIGN KEY (`cod_placa_mae`) REFERENCES `tb_placa_mae` (`cod_placa_mae`);

ALTER TABLE `tb_plmae_fonte` ADD CONSTRAINT `tb_placa_mae_tb_plmae_fonte` 
    FOREIGN KEY (`cod_placa_mae`) REFERENCES `tb_placa_mae` (`cod_placa_mae`);

ALTER TABLE `tb_plmae_fonte` ADD CONSTRAINT `tb_fonte_tb_plmae_fonte` 
    FOREIGN KEY (`cod_fonte`) REFERENCES `tb_fonte` (`cod_fonte`);

ALTER TABLE `tb_plmae_gab` ADD CONSTRAINT `tb_placa_mae_tb_plmae_gab` 
    FOREIGN KEY (`cod_placa_mae`) REFERENCES `tb_placa_mae` (`cod_placa_mae`);

ALTER TABLE `tb_plmae_gab` ADD CONSTRAINT `tb_gabinete_tb_plmae_gab` 
    FOREIGN KEY (`cod_gabinete`) REFERENCES `tb_gabinete` (`cod_gabinete`);

ALTER TABLE `tb_cooler` ADD CONSTRAINT `tb_fornecedor_tb_cooler` 
    FOREIGN KEY (`cod_fornecedor`) REFERENCES `tb_fornecedor` (`cod_fornecedor`);

ALTER TABLE `tb_plmae_cooler` ADD CONSTRAINT `tb_cooler_tb_plmae_cooler` 
    FOREIGN KEY (`cod_cooler`) REFERENCES `tb_cooler` (`cod_cooler`);

ALTER TABLE `tb_plmae_cooler` ADD CONSTRAINT `tb_placa_mae_tb_plmae_cooler` 
    FOREIGN KEY (`cod_placa_mae`) REFERENCES `tb_placa_mae` (`cod_placa_mae`);

ALTER TABLE `tb_sistema` ADD CONSTRAINT `tb_loja_tb_sistema` 
    FOREIGN KEY (`cod_loja`) REFERENCES `tb_loja` (`cod_loja`);

ALTER TABLE `tb_sistema` ADD CONSTRAINT `tb_imagem_tb_sistema` 
    FOREIGN KEY (`cod_img`) REFERENCES `tb_imagem` (`cod_img`);

ALTER TABLE `tb_tim` ADD CONSTRAINT `tb_loja_tb_tim` 
    FOREIGN KEY (`cod_loja`) REFERENCES `tb_loja` (`cod_loja`);

ALTER TABLE `tb_tim` ADD CONSTRAINT `tb_imagem_tb_tim` 
    FOREIGN KEY (`cod_img`) REFERENCES `tb_imagem` (`cod_img`);
