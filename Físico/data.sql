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

insert into Calendario(data_calendario) values ('24-12-2004 15:30:00'); <--! YYYY-MM-DD HH:MI:SS. -->
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

insert into Pessoas_telefone(44298763223, 56970323690);
insert into Pessoas_telefone(78632132451, 11966432569);
insert into Pessoas_telefone(98535657635, 11955418761);
insert into Pessoas_telefone(98535657635, 11988101847);
insert into Pessoas_telefone(22476488890, 21933279064);
insert into Pessoas_telefone(25977741879, 36988772254);
insert into Pessoas_telefone(25977741879, 36967900054);
insert into Pessoas_telefone(87703715370, 1191040-1846);

insert into Pessoas_email(44298763223, 'augustinhoferreira32@outlook.com');
insert into Pessoas_email(44298763223, 'ferreiraaugustinho34@outlook.com');
insert into Pessoas_email(78632132451, 'matheuszin542@gmail.com');
insert into Pessoas_email(78632132451, 'barros.erica45@gmail.com');
insert into Pessoas_email(22476488890, 'josesantospinto5597@gmail.com');
insert into Pessoas_email(25977741879, 'bruninhoramos34@outlook.com');
insert into Pessoas_email(87703715370, 'yuriGutsLover@hotmail.com');

insert into Evento ('24-12-2004 15:30:00', 3);
insert into Evento ('12-09-2023 19:30:00', 3);
insert into Evento ('10-10-2024 09:30:00', 2);
insert into Evento ('25-11-2025 12:30:00', 1);

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

insert into Patrocinador values(44298763223);

insert into Empresa values (39752873000590, '05138-120', 'Bar da Peixada', 'IMG_2023.jpg', 25977741879, 44298763223);




/*
Avenida Edgar Facó, 100
1197431-6789
2298743-7980
Avenida Raimundo Pereira de Magalhães, 3386
Avenida Mutinga, 951
Rua Doutor Joy Arruda 246
Rua Doutor Manuel D'Elboux 91
Associação RalaPoeira, hgitjtir.jpg, azul-claro, amarelo-escuro
Associação ColinaSuperior, ttdgttff.jpg, vermelho, preto
Associação SalGrosso, jgytef.jpg, branca, preta
Time 100Sal, vfdvrefe.jpg

Jogo- A e B, 24/10/2024 15:00
Jogo B e C 25/10 1700
Jogo D e E 29/11 10:00
Jogo E e A 22/01/2024 09:00
Liberal de Pelotas, hdjdbejd.jpg
Resenha de Cristal, IMG_20231104.jpg
Scorpion, IMG_20231205.jpg
PaySandu, PaySandu_logo.jpg
Facela F.C., design_facela.jpg
M19, M19.jpg
Sete de Julho, sete_logo.jpg
*/