use GoVarzea_bd

insert into Estado values ('SP', 'São Paulo');
insert into Estado values ('MG', 'Minas Gerais');

insert into Cidade (nome, fk_estado) values ('São Paulo', 'SP');
insert into Cidade (nome, fk_estado) values ('Belo Horizonte', 'MG');

insert into Endereco values ('05138-120', 'Rua Benedito Pereira', 135, 1);
insert into Endereco values ('07212-046', 'Rua Antônio Biachi', 135, 1);
insert into Endereco values ('07256-146', 'Rua Doutor Arroy', 46, 1);
insert into Endereco values ('72903-132', 'Avenida Mutinga', 93, 1);
insert into Endereco values ('27903-182', 'Rua Doutor Manuel D Elboux', 91, 2);
insert into Endereco values ('91903-152', 'Rua Doutor Manuel D Elboux', 91, 2);
insert into Endereco values ('87431-192', 'Rua Jannart Moutinho Ribeiro', 62, 2);

insert into Calendario(data_calendario) values ('24-12-2004 15:30:00');
insert into Calendario(data_calendario) values ('12-09-2023 19:30:00');
insert into Calendario(data_calendario) values ('10-10-2024 09:30:00');
insert into Calendario(data_calendario) values ('25-11-2025 12:30:00');

insert into Prioridade_evento(nivel) values ('Alta');
insert into Prioridade_evento(nivel) values ('Média');
insert into Prioridade_evento(nivel) values ('Baixa');

insert into Pessoas values (44298763223, 'Fernando de Augusto Ferreira', '07212-046');
insert into Pessoas values (78632132451, 'Matheus Antônio de Jesus', '07212-046');
insert into Pessoas values (98535657635, 'Erica Barros dos Santos', '05138-120');
insert into Pessoas values (22476488890, 'José dos Santos Pinto', '05138-120');
insert into Pessoas values (25977741879, 'Bruno Almeida do Ramos', '91903-152');
insert into Pessoas values (87703715370, 'Yuri Rufino de Nunes', '91903-152');

insert into Pessoas_telefone values (44298763223, 56970323690);
insert into Pessoas_telefone values (78632132451, 11966432569);
insert into Pessoas_telefone values (98535657635, 11955418761);
insert into Pessoas_telefone values (98535657635, 11988101847);
insert into Pessoas_telefone values (22476488890, 21933279064);
insert into Pessoas_telefone values (25977741879, 36988772254);
insert into Pessoas_telefone values (25977741879, 36967900054);
insert into Pessoas_telefone values (87703715370, 11910401846);

insert into Pessoas_email values (44298763223, 'augustinhoferreira32@outlook.com');
insert into Pessoas_email values (44298763223, 'ferreiraaugustinho34@outlook.com');
insert into Pessoas_email values (78632132451, 'matheuszin542@gmail.com');
insert into Pessoas_email values (78632132451, 'barros.erica45@gmail.com');
insert into Pessoas_email values (22476488890, 'josesantospinto5597@gmail.com');
insert into Pessoas_email values (25977741879, 'bruninhoramos34@outlook.com');
insert into Pessoas_email values (87703715370, 'yuriGutsLover@hotmail.com');

insert into Evento values ('24-12-2004 15:30:00', 3);
insert into Evento values ('12-09-2023 19:30:00', 3);
insert into Evento values ('10-10-2024 09:30:00', 2);
insert into Evento values ('25-11-2025 12:30:00', 1);

insert into Juiz values (22476488890, 'Rua Tiradentes 154');

insert into Dirigente values (78632132451);
insert into Dirigente values (22476488890);

insert into Jogador_posicao (posicao) values ('Goleiro');
insert into Jogador_posicao (posicao) values ('Atacante');
insert into Jogador_posicao (posicao) values ('Meia');
insert into Jogador_posicao (posicao) values ('Lateral direita');
insert into Jogador_posicao (posicao) values ('Lateral esquerda');
insert into jogador_posicao (posicao) values ('Zagueiro');
insert into jogador_posicao (posicao) values ('Volante');

insert into Jogador values (87703715370, 2);

insert into Torcedor values (98535657635);

insert into Dono_comercio values(25977741879, 'Rua Guaipá 678');

insert into Patrocinador values (44298763223);

insert into Empresa values (39752873000590, '05138-120', 'Bar da Peixada', 'IMG_2023.jpg', 25977741879, 44298763223);

insert into Empresa_telefone values (39752873000590, 11974316789);
insert into Empresa_telefone values (39752873000590, 22987437980);

insert into Amistoso (codevento) values (1);
insert into Amistoso (codevento) values (2);
insert into Liga (codevento) values (3);
insert into Copa (codevento) values (3);

insert into Associacao (nome, camisa1, camisa2, bandeira) values ('RalaPoeira', 'azul-claro', 'amarelo-escuro', 'hgitjtir.jpg');
insert into Associacao (nome, camisa1, camisa2, bandeira) values ('ColinaSuperior', 'vermelho', 'preto', 'ttdgttff.jpg');
insert into Associacao (nome, camisa1, camisa2, bandeira) values ('SalGrosso', 'vermelho', 'amarelo', 'IMG_20231224_Download.jpg');

insert into Campos (fk_endereco, fk_associacao, fk_amistoso) values ('72903-132', 1, 1);
insert into Campos (fk_endereco, fk_associacao, fk_amistoso) values ('72903-132', 2, 2);
insert into Campos (fk_endereco, fk_associacao, fk_amistoso) values ('72903-132', 2, 2);
insert into Campos (fk_endereco, fk_associacao, fk_liga) values ('87431-192', 3, 1);
insert into Campos (fk_endereco, fk_associacao, fk_copa) values ('87431-192', 3, 1);

insert into Time (nome, brasao, fk_associacao, fk_patrocinador, fk_amistoso) values ('100Sal', 'vfdvrefe.jpg', 1 ,44298763223, 1 );
insert into Time (nome, brasao, fk_associacao, fk_amistoso) values ('Liberal de Pelotas', 'hdjdbejd.jpg', 1, 1);
insert into Time (nome, brasao, fk_associacao, fk_liga) values ('Resenha de Cristal', 'IMG_20231104.jpg', 2, 1);
insert into Time (nome, brasao, fk_associacao, fk_liga) values ('Scorpion', 'IMG_20231205.jpg', 2, 1);
insert into Time (nome, brasao, fk_associacao, fk_copa) values ('PaySandu', 'PaySandu_logo.jpg', 3, 1);
insert into Time (nome, brasao, fk_associacao, fk_copa) values ('Facela F.C.', 'design_facela.jpg', 3, 1);
insert into Time (nome, brasao, fk_associacao, fk_copa) values ('M19', 'M19.jpg', 3, 1);
insert into Time (nome, brasao, fk_associacao, fk_copa) values ('Sete de Julho', 'sete_logo.jpg', 3, 1);

insert into Letra_divisao (letra) values ('A');
insert into Letra_divisao (letra) values ('B');
insert into Letra_divisao (letra) values ('C');

insert into Time_divisoes values (1, 1);
insert into Time_divisoes values (2, 1);
insert into Time_divisoes values (3, 2);
insert into Time_divisoes values (4, 2);
insert into Time_divisoes values (5, 3);
insert into Time_divisoes values (6, 3);

insert into Jogador_time values (1, 87703715370);

insert into Jogos(fk_associacao, fk_calendario, fk_evento) values (1, 1, 1);
insert into Jogos(fk_associacao, fk_calendario, fk_evento) values (1, 2, 2);
insert into Jogos(fk_associacao, fk_calendario, fk_evento) values (2, 3, 3);

insert into Jogos_time values(1, 1);
insert into Jogos_time values(1, 2);
insert into Jogos_time values(2, 3);
insert into Jogos_time values(2, 4);
insert into Jogos_time values(3, 5);
insert into Jogos_time values(3, 6);

insert into Dirigentes_ligas values(78632132451, 1);
insert into Dirigentes_ligas values(22476488890, 1);

insert into Dirigentes_copas values(22476488890, 1);
insert into Dirigentes_copas values(78632132451, 1);

insert into Pessoas_torcedoras values (98535657635, 1);
insert into Pessoas_torcedoras values (98535657635, 2);
insert into Pessoas_torcedoras values (25977741879, 1);
insert into Pessoas_torcedoras values (87703715370, 4);











