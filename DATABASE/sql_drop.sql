# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases v6.2.1                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          loja-database.dez                               #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2019-08-16 19:22                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `tb_loja` DROP FOREIGN KEY `tb_cidade_tb_loja`;

ALTER TABLE `tb_admin` DROP FOREIGN KEY `tb_loja_tb_admin`;

ALTER TABLE `tb_historia` DROP FOREIGN KEY `tb_loja_tb_historia`;

ALTER TABLE `tb_historia` DROP FOREIGN KEY `tb_imagem_tb_historia`;

ALTER TABLE `tb_cidade` DROP FOREIGN KEY `tb_estado_tb_cidade`;

ALTER TABLE `tb_visita` DROP FOREIGN KEY `tb_loja_tb_visita`;

ALTER TABLE `tb_banner` DROP FOREIGN KEY `tb_loja_tb_banner`;

ALTER TABLE `tb_celular` DROP FOREIGN KEY `tb_loja_tb_celular`;

ALTER TABLE `tb_img_cel` DROP FOREIGN KEY `tb_imagem_tb_img_cel`;

ALTER TABLE `tb_img_cel` DROP FOREIGN KEY `tb_celular_tb_img_cel`;

ALTER TABLE `tb_processador` DROP FOREIGN KEY `tb_fornecedor_tb_processador`;

ALTER TABLE `tb_memoria` DROP FOREIGN KEY `tb_fornecedor_tb_memoria`;

ALTER TABLE `tb_placa_mae` DROP FOREIGN KEY `tb_fornecedor_tb_placa_mae`;

ALTER TABLE `tb_placa_video` DROP FOREIGN KEY `tb_fornecedor_tb_placa_video`;

ALTER TABLE `tb_fonte` DROP FOREIGN KEY `tb_fornecedor_tb_fonte`;

ALTER TABLE `tb_hd` DROP FOREIGN KEY `tb_fornecedor_tb_hd`;

ALTER TABLE `tb_pc` DROP FOREIGN KEY `tb_status_tb_pc`;

ALTER TABLE `tb_pc` DROP FOREIGN KEY `tb_cliente_tb_pc`;

ALTER TABLE `tb_pc` DROP FOREIGN KEY `tb_cooler_tb_pc`;

ALTER TABLE `tb_pc` DROP FOREIGN KEY `tb_gabinete_tb_pc`;

ALTER TABLE `tb_pc` DROP FOREIGN KEY `tb_fonte_tb_pc`;

ALTER TABLE `tb_pc` DROP FOREIGN KEY `tb_placa_video_tb_pc`;

ALTER TABLE `tb_cliente` DROP FOREIGN KEY `tb_cidade_tb_cliente`;

ALTER TABLE `tb_cliente` DROP FOREIGN KEY `tb_loja_tb_cliente`;

ALTER TABLE `tb_gabinete` DROP FOREIGN KEY `tb_fornecedor_tb_gabinete`;

ALTER TABLE `tb_plmae_proc` DROP FOREIGN KEY `tb_placa_mae_tb_plmae_proc`;

ALTER TABLE `tb_plmae_proc` DROP FOREIGN KEY `tb_processador_tb_plmae_proc`;

ALTER TABLE `tb_plmae_mem` DROP FOREIGN KEY `tb_placa_mae_tb_plmae_mem`;

ALTER TABLE `tb_plmae_mem` DROP FOREIGN KEY `tb_memoria_tb_plmae_mem`;

ALTER TABLE `tb_plmae_plvideo` DROP FOREIGN KEY `tb_placa_video_tb_plmae_plvideo`;

ALTER TABLE `tb_plmae_plvideo` DROP FOREIGN KEY `tb_placa_mae_tb_plmae_plvideo`;

ALTER TABLE `tb_plmae_hd` DROP FOREIGN KEY `tb_hd_tb_plmae_hd`;

ALTER TABLE `tb_plmae_hd` DROP FOREIGN KEY `tb_placa_mae_tb_plmae_hd`;

ALTER TABLE `tb_plmae_fonte` DROP FOREIGN KEY `tb_placa_mae_tb_plmae_fonte`;

ALTER TABLE `tb_plmae_fonte` DROP FOREIGN KEY `tb_fonte_tb_plmae_fonte`;

ALTER TABLE `tb_plmae_gab` DROP FOREIGN KEY `tb_placa_mae_tb_plmae_gab`;

ALTER TABLE `tb_plmae_gab` DROP FOREIGN KEY `tb_gabinete_tb_plmae_gab`;

ALTER TABLE `tb_cooler` DROP FOREIGN KEY `tb_fornecedor_tb_cooler`;

ALTER TABLE `tb_sistema` DROP FOREIGN KEY `tb_loja_tb_sistema`;

ALTER TABLE `tb_sistema` DROP FOREIGN KEY `tb_imagem_tb_sistema`;

ALTER TABLE `tb_tim` DROP FOREIGN KEY `tb_loja_tb_tim`;

ALTER TABLE `tb_tim` DROP FOREIGN KEY `tb_imagem_tb_tim`;

ALTER TABLE `tb_sobre` DROP FOREIGN KEY `tb_loja_tb_sobre`;

ALTER TABLE `tb_proc_cool` DROP FOREIGN KEY `tb_cooler_tb_proc_cool`;

ALTER TABLE `tb_proc_cool` DROP FOREIGN KEY `tb_processador_tb_proc_cool`;

ALTER TABLE `tb_pc_hd` DROP FOREIGN KEY `tb_hd_tb_pc_hd`;

ALTER TABLE `tb_pc_hd` DROP FOREIGN KEY `tb_pc_tb_pc_hd`;

ALTER TABLE `tb_pc_mem` DROP FOREIGN KEY `tb_memoria_tb_pc_mem`;

ALTER TABLE `tb_pc_mem` DROP FOREIGN KEY `tb_pc_tb_pc_mem`;

# ---------------------------------------------------------------------- #
# Drop table "tb_pc_mem"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_pc_mem` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_pc_mem`;

# ---------------------------------------------------------------------- #
# Drop table "tb_pc_hd"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_pc_hd` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_pc_hd`;

# ---------------------------------------------------------------------- #
# Drop table "tb_pc"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_pc` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_pc`;

# ---------------------------------------------------------------------- #
# Drop table "tb_sobre"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tb_sobre` MODIFY `cod_sobre` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `tb_sobre` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_sobre`;

# ---------------------------------------------------------------------- #
# Drop table "tb_tim"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_tim` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_tim`;

# ---------------------------------------------------------------------- #
# Drop table "tb_sistema"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_sistema` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_sistema`;

# ---------------------------------------------------------------------- #
# Drop table "tb_cliente"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_cliente` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_cliente`;

# ---------------------------------------------------------------------- #
# Drop table "tb_img_cel"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_img_cel` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_img_cel`;

# ---------------------------------------------------------------------- #
# Drop table "tb_celular"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_celular` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_celular`;

# ---------------------------------------------------------------------- #
# Drop table "tb_banner"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tb_banner` MODIFY `cod_banner` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `tb_banner` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_banner`;

# ---------------------------------------------------------------------- #
# Drop table "tb_visita"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tb_visita` MODIFY `cod_visita` INTEGER UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tb_visita` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_visita`;

# ---------------------------------------------------------------------- #
# Drop table "tb_historia"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tb_historia` MODIFY `cod_historia` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `tb_historia` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_historia`;

# ---------------------------------------------------------------------- #
# Drop table "tb_admin"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tb_admin` MODIFY `cod_admin` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `tb_admin` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_admin`;

# ---------------------------------------------------------------------- #
# Drop table "tb_loja"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tb_loja` MODIFY `cod_loja` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `tb_loja` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_loja`;

# ---------------------------------------------------------------------- #
# Drop table "tb_proc_cool"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_proc_cool` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_proc_cool`;

# ---------------------------------------------------------------------- #
# Drop table "tb_cooler"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_cooler` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_cooler`;

# ---------------------------------------------------------------------- #
# Drop table "tb_plmae_gab"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_plmae_gab` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_plmae_gab`;

# ---------------------------------------------------------------------- #
# Drop table "tb_plmae_fonte"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_plmae_fonte` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_plmae_fonte`;

# ---------------------------------------------------------------------- #
# Drop table "tb_plmae_hd"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_plmae_hd` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_plmae_hd`;

# ---------------------------------------------------------------------- #
# Drop table "tb_plmae_plvideo"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_plmae_plvideo` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_plmae_plvideo`;

# ---------------------------------------------------------------------- #
# Drop table "tb_plmae_mem"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_plmae_mem` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_plmae_mem`;

# ---------------------------------------------------------------------- #
# Drop table "tb_plmae_proc"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_plmae_proc` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_plmae_proc`;

# ---------------------------------------------------------------------- #
# Drop table "tb_gabinete"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_gabinete` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_gabinete`;

# ---------------------------------------------------------------------- #
# Drop table "tb_hd"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_hd` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_hd`;

# ---------------------------------------------------------------------- #
# Drop table "tb_fonte"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_fonte` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_fonte`;

# ---------------------------------------------------------------------- #
# Drop table "tb_placa_video"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_placa_video` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_placa_video`;

# ---------------------------------------------------------------------- #
# Drop table "tb_placa_mae"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_placa_mae` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_placa_mae`;

# ---------------------------------------------------------------------- #
# Drop table "tb_memoria"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_memoria` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_memoria`;

# ---------------------------------------------------------------------- #
# Drop table "tb_processador"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_processador` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_processador`;

# ---------------------------------------------------------------------- #
# Drop table "tb_cidade"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tb_cidade` MODIFY `cod_cidade` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `tb_cidade` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_cidade`;

# ---------------------------------------------------------------------- #
# Drop table "tb_fornecedor"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_fornecedor` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_fornecedor`;

# ---------------------------------------------------------------------- #
# Drop table "tb_status"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tb_status` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_status`;

# ---------------------------------------------------------------------- #
# Drop table "tb_imagem"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tb_imagem` MODIFY `cod_img` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `tb_imagem` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_imagem`;

# ---------------------------------------------------------------------- #
# Drop table "tb_estado"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tb_estado` MODIFY `cod_estado` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `tb_estado` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `tb_estado`;
