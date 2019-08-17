INSERT INTO `tb_estado` (`cod_estado`, `nome_estado`, `uf`) VALUES
(1, 'Rio Grande do Sul', 'RS'),
(2, 'Santa Catarina', 'SC');

INSERT INTO `tb_cidade` (`cod_cidade`, `nome_cidade`, `cod_estado`) VALUES
(1, 'Itapiranga', 2),
(2, 'Iporã do Oeste', 2),
(3, 'São João do Oeste', 2),
(4, 'Tunápolis', 2);

INSERT INTO `tb_loja`(`cod_loja`, `nome_empresarial`, `nome_fantasia`, `cnpj`, `email`, `tel_fixo`, `tel_celular`, `rua`, `nr`, `cep`, `img_logo`, `cod_cidade`) VALUES 
(1, 'Sasso Informática Eireli', 'Sasso Informática e Celulares', '27178465000193', 'sassoinformatica@gmail.com', '4931941697', '49999253598', 'Rua do Comércio',
'577', '89896000', '', 1);

INSERT INTO `tb_admin` (`cod_admin`, `login`, `senha`, `nome`, `cod_loja`) VALUES
(1, 'jonas', '43r003005@', 'Jonas Kuhn', 1);

INSERT INTO `tb_banner`(`cod_banner`, `titulo`, `descricao`, `img`, `fl_ativo`, `cod_loja`) VALUES 
(1, 'Banner de teste 1', 'Algo que possa estar sobre o banner', 'banner01', true, 1),
(2, 'Banner de teste 2', 'Algo que possa estar sobre o banner', 'banner02', true, 1);

INSERT INTO `tb_imagem`(`cod_img`, `nome`) VALUES 
(1, 'clipp_store_01'),
(2, 'clipp_service_01'),
(3, 'clipp_cheff_01'),
(4, 'planox'),
(5, 'fachada'),
(6, 'celularx');

INSERT INTO `tb_sistema` (`cod_sistema`, `titulo`, `descricao`, `link`, `cod_img`,`cod_loja`) VALUES 
(1, 'Clipp Store', 'Algo que descreva o que o clipp store faz', 'link do site da própria compufour', 1, 1),
(2, 'Clipp Service', 'Algo que descreva o que o clipp service faz', 'link do site da própria compufour', 2, 1),
(3, 'Clipp Cheff', 'Algo que descreva o que o clipp service faz', 'link do site da própria compufour', 3, 1);

INSERT INTO `tb_destaque_cel`(`cod_destaque_cel`, `fl_ativo`, `desc_zero`, `desc_um`, `desc_dois`, `desc_tres`, `desc_quatro`, 
`desc_cinco`, `desc_seis`, `desc_sete`, `desc_oito`, `desc_nove`, `cod_loja`) VALUES 
(1, true, 'CELULAR X','','','','','','','','','',1);

INSERT INTO `tb_img_dest_cel`(`cod_img_dest_cel`, `cod_img`, `cod_destaque_cel`) VALUES 
(1, 1, 1);

INSERT INTO `tb_tim`(`cod_tim`, `titulo`, `descricao`, `link`, `cod_img`,`cod_loja`) VALUES 
(1, 'Nome de um plano', 'beneficios que o plano tem', 'link se tiver', 4, 1);

INSERT INTO `tb_historia`(`cod_historia`, `titulo`, `descricao`, `cod_img`,`cod_loja`) VALUES 
(1, 'Como surgimos', 'Algo que aconteceu', 5, 1);

INSERT INTO `tb_cliente`(`cod_cliente`, `nome`, `email`, `telefone`, `endereco`, `nr`, `cpf`, `cod_loja`) VALUES 
(1, 'Jonas Kuhn', 'jonaskuhn220@gmail.com', '49998051551', 'Rua São Bonifácio', '1111', '04218090009', 1);

INSERT INTO `tb_status`(`cod_status`, `descricao`) VALUES 
(1, 'Não Visualizado'),
(2, 'Em Produção'),
(3, 'Aguardando Aprovação'),
(4, 'Finalizado');

INSERT INTO `tb_fornecedor`(`cod_fornecedor`, `nome`) VALUES 
(1, 'Pauta Distribuição');

INSERT INTO `tb_processador`(`cod_processador`, `descricao`, `cod_fornecedor`) VALUES 
(1, 'PROCESSADOR INTEL PENTIUM G5400 GOLD 3.7GHZ 4MB LGA 1151 COFFE LAKE 8º GERAÇÃO', 1);

INSERT INTO `tb_pc`(`cod_pc`, `cod_processador`, `valor_vista`, `valor_prazo`) VALUES 
(1, 1, '00', '00');

INSERT INTO `tb_orc_cliente`(`cod_orc_cliente`, `dt_abertura`, `dt_fechamento`, `cod_status`, `cod_cliente`, `cod_pc`) VALUES 
(1, '2019-08-05', '2019-09-27', 4, 1, 1);

INSERT INTO `tb_destaque_pc`(`cod_destaque_pc`, `fl_ativo`, `img`, `cod_processador`, `cod_loja`) VALUES 
(1, false, '', 1, 1);

INSERT INTO `tb_placa_mae`(`cod_placa_mae`, `descricao`, `cod_fornecedor`) VALUES 
(1, 'PLACA MAE (INTEL) ASUS PRIME H310M-PLUS GAMING TUF DDR4 1151 8º GERAÇÃO', 1);

INSERT INTO `tb_plmae_proc`(`cod_plmae_proc`, `cod_placa_mae`, `cod_processador`) VALUES 
(1, 1, 1);

INSERT INTO `tb_memoria`(`cod_memoria`, `descricao`, `cod_fornecedor`) VALUES 
(1, 'MEMORIA HYPERX FURY GAMER 8GB DDR4 2400MHZ BLACK', 1);

INSERT INTO `tb_plmae_mem`(`cod_plmae_mem`, `cod_placa_mae`, `cod_memoria`) VALUES
(1,1,1);

INSERT INTO `tb_placa_video`(`cod_placa_video`, `descricao`, `cod_fornecedor`) VALUES 
(1, 'PLACA DE VIDEO GIGABYTE GEFORCE RTX 2060 OC 6GB GDDR6 HDMI+3DP GV-N2060 OC-6GD REV 2.0', 1);

INSERT INTO `tb_plmae_plvideo`(`cod_plmae_plvideo`, `cod_placa_video`, `cod_placa_mae`) VALUES 
(1,1,1);

INSERT INTO `tb_hd`(`cod_hd`, `descricao`, `cod_fornecedor`) VALUES 
(1, 'SSD M.2 2280 WD SN750 BLACK 500GB NVME', 1);

INSERT INTO `tb_plmae_hd`(`cod_plmae_hd`, `cod_hd`, `cod_placa_mae`) VALUES 
(1,1,1);

INSERT INTO `tb_cooler`(`cod_cooler`, `descricao`, `cod_fornecedor`) VALUES 
(1, 'LIQUID COOLER COOLER MASTER MASTERLIQUID LITE 120', 1);

INSERT INTO `tb_plmae_cooler`(`cod_plmae_cooler`, `cod_cooler`, `cod_placa_mae`) VALUES 
(1,1,1);

INSERT INTO `tb_fonte`(`cod_fonte`, `descricao`, `cod_fornecedor`) VALUES 
(1, 'FONTE EVGA 600W ATX 100-W1-0600-K1 80 PLUS STD', 1);

INSERT INTO `tb_plmae_fonte`(`cod_plmae_fonte`, `cod_placa_mae`, `cod_fonte`) VALUES 
(1,1,1);

INSERT INTO `tb_gabinete`(`cod_gabinete`, `descricao`, `cod_fornecedor`) VALUES 
(1, 'GABINETE K-MEX GAMER CG-01RC BK S/ FONTE C/ 1 FAN AZUL 200MM', 1);

INSERT INTO `tb_plmae_gab`(`cod_plmae_gab`, `cod_placa_mae`, `cod_gabinete`) VALUES 
(1,1,1);
