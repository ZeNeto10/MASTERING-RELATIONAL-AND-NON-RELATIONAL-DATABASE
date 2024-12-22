-- Inserindo dados na tabela T_PD_CH_PACIENTES
INSERT INTO T_PD_CH_PACIENTES (paciente_id, nome, data_nascimento, email) VALUES ('P001', 'Maria Oliveira', TO_DATE('1992-03-14', 'YYYY-MM-DD'), 'maria.oliveira@email.com');
INSERT INTO T_PD_CH_PACIENTES (paciente_id, nome, data_nascimento, email) VALUES ('P002', 'João Santos', TO_DATE('1985-07-22', 'YYYY-MM-DD'), 'joao.santos@email.com');
INSERT INTO T_PD_CH_PACIENTES (paciente_id, nome, data_nascimento, email) VALUES ('P003', 'Fernanda Costa', TO_DATE('1988-05-30', 'YYYY-MM-DD'), 'fernanda.costa@email.com');
INSERT INTO T_PD_CH_PACIENTES (paciente_id, nome, data_nascimento, email) VALUES ('P004', 'Rafael Lima', TO_DATE('1995-11-11', 'YYYY-MM-DD'), 'rafael.lima@email.com');
INSERT INTO T_PD_CH_PACIENTES (paciente_id, nome, data_nascimento, email) VALUES ('P005', 'Juliana Martins', TO_DATE('1983-02-20', 'YYYY-MM-DD'), 'juliana.martins@email.com');
INSERT INTO T_PD_CH_PACIENTES (paciente_id, nome, data_nascimento, email) VALUES ('P006', 'Lucas Ferreira', TO_DATE('1990-09-15', 'YYYY-MM-DD'), 'lucas.ferreira@email.com');
INSERT INTO T_PD_CH_PACIENTES (paciente_id, nome, data_nascimento, email) VALUES ('P007', 'Carla Rodrigues', TO_DATE('1992-06-25', 'YYYY-MM-DD'), 'carla.rodrigues@email.com');
INSERT INTO T_PD_CH_PACIENTES (paciente_id, nome, data_nascimento, email) VALUES ('P008', 'Fernando Alves', TO_DATE('1981-12-05', 'YYYY-MM-DD'), 'fernando.alves@email.com');
INSERT INTO T_PD_CH_PACIENTES (paciente_id, nome, data_nascimento, email) VALUES ('P009', 'Tatiane Nascimento', TO_DATE('1986-08-10', 'YYYY-MM-DD'), 'tatiane.nascimento@email.com');
INSERT INTO T_PD_CH_PACIENTES (paciente_id, nome, data_nascimento, email) VALUES ('P010', 'Gustavo Pereira', TO_DATE('1994-03-22', 'YYYY-MM-DD'), 'gustavo.pereira@email.com');

-- Inserindo dados na tabela T_PD_CH_DENTISTAS
INSERT INTO T_PD_CH_DENTISTAS (dentista_id, nome, email) VALUES ('D001', 'Dr. Carlos Almeida', 'carlos.almeida@email.com');
INSERT INTO T_PD_CH_DENTISTAS (dentista_id, nome, email) VALUES ('D002', 'Dra. Ana Souza', 'ana.souza@email.com');
INSERT INTO T_PD_CH_DENTISTAS (dentista_id, nome, email) VALUES ('D003', 'Dr. Pedro Rocha', 'pedro.rocha@email.com');
INSERT INTO T_PD_CH_DENTISTAS (dentista_id, nome, email) VALUES ('D004', 'Dra. Luiza Pinto', 'luiza.pinto@email.com');
INSERT INTO T_PD_CH_DENTISTAS (dentista_id, nome, email) VALUES ('D005', 'Dr. Felipe Teixeira', 'felipe.teixeira@email.com');
INSERT INTO T_PD_CH_DENTISTAS (dentista_id, nome, email) VALUES ('D006', 'Dra. Renata Martins', 'renata.martins@email.com');
INSERT INTO T_PD_CH_DENTISTAS (dentista_id, nome, email) VALUES ('D007', 'Dr. André Silva', 'andre.silva@email.com');
INSERT INTO T_PD_CH_DENTISTAS (dentista_id, nome, email) VALUES ('D008', 'Dra. Paula Castro', 'paula.castro@email.com');
INSERT INTO T_PD_CH_DENTISTAS (dentista_id, nome, email) VALUES ('D009', 'Dr. Bruno Cardoso', 'bruno.cardoso@email.com');
INSERT INTO T_PD_CH_DENTISTAS (dentista_id, nome, email) VALUES ('D010', 'Dra. Vanessa Gomes', 'vanessa.gomes@email.com');


-- Inserindo dados na tabela T_PD_CH_ESPECIALIDADES
INSERT INTO T_PD_CH_ESPECIALIDADES (especialidade_id, nome) VALUES ('E001', 'Ortodontia');
INSERT INTO T_PD_CH_ESPECIALIDADES (especialidade_id, nome) VALUES ('E002', 'Implantes');
INSERT INTO T_PD_CH_ESPECIALIDADES (especialidade_id, nome) VALUES ('E003', 'Odontopediatria');
INSERT INTO T_PD_CH_ESPECIALIDADES (especialidade_id, nome) VALUES ('E004', 'Endodontia');
INSERT INTO T_PD_CH_ESPECIALIDADES (especialidade_id, nome) VALUES ('E005', 'Periodontia');
INSERT INTO T_PD_CH_ESPECIALIDADES (especialidade_id, nome) VALUES ('E006', 'Cirurgia Oral');
INSERT INTO T_PD_CH_ESPECIALIDADES (especialidade_id, nome) VALUES ('E007', 'Estética Dental');
INSERT INTO T_PD_CH_ESPECIALIDADES (especialidade_id, nome) VALUES ('E008', 'Radiologia Dental');
INSERT INTO T_PD_CH_ESPECIALIDADES (especialidade_id, nome) VALUES ('E009', 'Prostodontia');
INSERT INTO T_PD_CH_ESPECIALIDADES (especialidade_id, nome) VALUES ('E010', 'Implantes Dentários');

-- Inserindo dados na tabela T_PD_CH_DENTISTAS_ESPECIALIDADES
INSERT INTO T_PD_CH_DENTISTAS_ESPECIALIDADES (dentista_id, especialidade_id) VALUES ('D001', 'E001');
INSERT INTO T_PD_CH_DENTISTAS_ESPECIALIDADES (dentista_id, especialidade_id) VALUES ('D002', 'E002');
INSERT INTO T_PD_CH_DENTISTAS_ESPECIALIDADES (dentista_id, especialidade_id) VALUES ('D003', 'E003');
INSERT INTO T_PD_CH_DENTISTAS_ESPECIALIDADES (dentista_id, especialidade_id) VALUES ('D004', 'E004');
INSERT INTO T_PD_CH_DENTISTAS_ESPECIALIDADES (dentista_id, especialidade_id) VALUES ('D005', 'E005');
INSERT INTO T_PD_CH_DENTISTAS_ESPECIALIDADES (dentista_id, especialidade_id) VALUES ('D006', 'E006');
INSERT INTO T_PD_CH_DENTISTAS_ESPECIALIDADES (dentista_id, especialidade_id) VALUES ('D007', 'E007');
INSERT INTO T_PD_CH_DENTISTAS_ESPECIALIDADES (dentista_id, especialidade_id) VALUES ('D008', 'E008');
INSERT INTO T_PD_CH_DENTISTAS_ESPECIALIDADES (dentista_id, especialidade_id) VALUES ('D009', 'E009');
INSERT INTO T_PD_CH_DENTISTAS_ESPECIALIDADES (dentista_id, especialidade_id) VALUES ('D010', 'E010');

-- Inserindo dados na tabela T_PD_CH_CONSULTAS
INSERT INTO T_PD_CH_CONSULTAS (consulta_id, paciente_id, dentista_id, data_consulta, observacoes) VALUES ('C001', 'P001', 'D001', TO_DATE('2024-10-10', 'YYYY-MM-DD'), 'Consulta de rotina.');
INSERT INTO T_PD_CH_CONSULTAS (consulta_id, paciente_id, dentista_id, data_consulta, observacoes) VALUES ('C002', 'P002', 'D002', TO_DATE('2024-10-11', 'YYYY-MM-DD'), 'Avaliação inicial.');
INSERT INTO T_PD_CH_CONSULTAS (consulta_id, paciente_id, dentista_id, data_consulta, observacoes) VALUES ('C003', 'P003', 'D003', TO_DATE('2024-10-12', 'YYYY-MM-DD'), 'Consulta de emergência.');
INSERT INTO T_PD_CH_CONSULTAS (consulta_id, paciente_id, dentista_id, data_consulta, observacoes) VALUES ('C004', 'P004', 'D004', TO_DATE('2024-10-13', 'YYYY-MM-DD'), 'Avaliação de tratamento.');
INSERT INTO T_PD_CH_CONSULTAS (consulta_id, paciente_id, dentista_id, data_consulta, observacoes) VALUES ('C005', 'P005', 'D005', TO_DATE('2024-10-14', 'YYYY-MM-DD'), 'Consulta de rotina.');
INSERT INTO T_PD_CH_CONSULTAS (consulta_id, paciente_id, dentista_id, data_consulta, observacoes) VALUES ('C006', 'P006', 'D006', TO_DATE('2024-10-15', 'YYYY-MM-DD'), 'Verificação de cáries.');
INSERT INTO T_PD_CH_CONSULTAS (consulta_id, paciente_id, dentista_id, data_consulta, observacoes) VALUES ('C007', 'P007', 'D007', TO_DATE('2024-10-16', 'YYYY-MM-DD'), 'Tratamento de gengivite.');
INSERT INTO T_PD_CH_CONSULTAS (consulta_id, paciente_id, dentista_id, data_consulta, observacoes) VALUES ('C008', 'P008', 'D008', TO_DATE('2024-10-17', 'YYYY-MM-DD'), 'Consulta pré-operatória.');
INSERT INTO T_PD_CH_CONSULTAS (consulta_id, paciente_id, dentista_id, data_consulta, observacoes) VALUES ('C009', 'P009', 'D009', TO_DATE('2024-10-18', 'YYYY-MM-DD'), 'Consulta de estética dental.');
INSERT INTO T_PD_CH_CONSULTAS (consulta_id, paciente_id, dentista_id, data_consulta, observacoes) VALUES ('C010', 'P010', 'D010', TO_DATE('2024-10-19', 'YYYY-MM-DD'), 'Consulta de urgência.');

-- Inserindo dados na tabela T_PD_CH_DIAGNOSTICOS
INSERT INTO T_PD_CH_DIAGNOSTICOS (diagnostico_id, consulta_id, descricao) VALUES ('DIAG001', 'C001', 'Sem problemas dentários.');
INSERT INTO T_PD_CH_DIAGNOSTICOS (diagnostico_id, consulta_id, descricao) VALUES ('DIAG002', 'C002', 'Necessário tratamento ortodontia.');
INSERT INTO T_PD_CH_DIAGNOSTICOS (diagnostico_id, consulta_id, descricao) VALUES ('DIAG003', 'C003', 'Necessário tratamento de canal.');
INSERT INTO T_PD_CH_DIAGNOSTICOS (diagnostico_id, consulta_id, descricao) VALUES ('DIAG004', 'C004', 'Tratamento de cárie.');
INSERT INTO T_PD_CH_DIAGNOSTICOS (diagnostico_id, consulta_id, descricao) VALUES ('DIAG005', 'C005', 'Consulta sem anomalias.');
INSERT INTO T_PD_CH_DIAGNOSTICOS (diagnostico_id, consulta_id, descricao) VALUES ('DIAG006', 'C006', 'Necessário limpeza dental.');
INSERT INTO T_PD_CH_DIAGNOSTICOS (diagnostico_id, consulta_id, descricao) VALUES ('DIAG007', 'C007', 'Diagnóstico de gengivite leve.');
INSERT INTO T_PD_CH_DIAGNOSTICOS (diagnostico_id, consulta_id, descricao) VALUES ('DIAG008', 'C008', 'Exame radiológico necessário.');
INSERT INTO T_PD_CH_DIAGNOSTICOS (diagnostico_id, consulta_id, descricao) VALUES ('DIAG009', 'C009', 'Necessário tratamento estético.');
INSERT INTO T_PD_CH_DIAGNOSTICOS (diagnostico_id, consulta_id, descricao) VALUES ('DIAG010', 'C010', 'Urgência de extração dentária.');

-- Inserindo dados na tabela T_PD_CH_SINISTROS
INSERT INTO T_PD_CH_SINISTROS (sinistro_id, nome_sinistro, custo) VALUES ('S001', 'Tratamento de cárie', 150.00);
INSERT INTO T_PD_CH_SINISTROS (sinistro_id, nome_sinistro, custo) VALUES ('S002', 'Limpeza dental', 100.00);
INSERT INTO T_PD_CH_SINISTROS (sinistro_id, paciente_id, data_sinistro, descricao) VALUES ('S003', 'P003', TO_DATE('2024-09-10', 'YYYY-MM-DD'), 'Acidente em atividade esportiva.');
INSERT INTO T_PD_CH_SINISTROS (sinistro_id, paciente_id, data_sinistro, descricao) VALUES ('S004', 'P004', TO_DATE('2024-09-12', 'YYYY-MM-DD'), 'Lesão em acidente de carro.');
INSERT INTO T_PD_CH_SINISTROS (sinistro_id, paciente_id, data_sinistro, descricao) VALUES ('S005', 'P005', TO_DATE('2024-09-14', 'YYYY-MM-DD'), 'Acidente doméstico.');
INSERT INTO T_PD_CH_SINISTROS (sinistro_id, paciente_id, data_sinistro, descricao) VALUES ('S006', 'P006', TO_DATE('2024-09-16', 'YYYY-MM-DD'), 'Queimadura leve durante cozimento.');
INSERT INTO T_PD_CH_SINISTROS (sinistro_id, paciente_id, data_sinistro, descricao) VALUES ('S007', 'P007', TO_DATE('2024-09-18', 'YYYY-MM-DD'), 'Lesão em atividade física.');
INSERT INTO T_PD_CH_SINISTROS (sinistro_id, paciente_id, data_sinistro, descricao) VALUES ('S008', 'P008', TO_DATE('2024-09-20', 'YYYY-MM-DD'), 'Acidente com bicicleta.');
INSERT INTO T_PD_CH_SINISTROS (sinistro_id, paciente_id, data_sinistro, descricao) VALUES ('S009', 'P009', TO_DATE('2024-09-22', 'YYYY-MM-DD'), 'Queda em escada.');
INSERT INTO T_PD_CH_SINISTROS (sinistro_id, paciente_id, data_sinistro, descricao) VALUES ('S010', 'P010', TO_DATE('2024-09-24', 'YYYY-MM-DD'), 'Incidente em trabalho.');

-- Inserindo dados na tabela T_PD_CH_DIAGNOSTICOS_SINISTROS
INSERT INTO T_PD_CH_DIAGNOSTICOS_SINISTROS (diagnostico_id, sinistro_id) VALUES ('DIAG001', 'S001');
INSERT INTO T_PD_CH_DIAGNOSTICOS_SINISTROS (diagnostico_id, sinistro_id) VALUES ('DIAG002', 'S002');
INSERT INTO T_PD_CH_DIAGNOSTICOS_SINISTROS (diagnostico_id, sinistro_id) VALUES ('DIAG003', 'S003');
INSERT INTO T_PD_CH_DIAGNOSTICOS_SINISTROS (diagnostico_id, sinistro_id) VALUES ('DIAG004', 'S004');
INSERT INTO T_PD_CH_DIAGNOSTICOS_SINISTROS (diagnostico_id, sinistro_id) VALUES ('DIAG005', 'S005');
INSERT INTO T_PD_CH_DIAGNOSTICOS_SINISTROS (diagnostico_id, sinistro_id) VALUES ('DIAG006', 'S006');
INSERT INTO T_PD_CH_DIAGNOSTICOS_SINISTROS (diagnostico_id, sinistro_id) VALUES ('DIAG007', 'S007');
INSERT INTO T_PD_CH_DIAGNOSTICOS_SINISTROS (diagnostico_id, sinistro_id) VALUES ('DIAG008', 'S008');
INSERT INTO T_PD_CH_DIAGNOSTICOS_SINISTROS (diagnostico_id, sinistro_id) VALUES ('DIAG009', 'S009');
INSERT INTO T_PD_CH_DIAGNOSTICOS_SINISTROS (diagnostico_id, sinistro_id) VALUES ('DIAG010', 'S010');

-- Inserindo dados na tabela T_PD_CH_PLANOS_SAUDE
INSERT INTO T_PD_CH_PLANOS_SAUDE (plano_id, nome_plano, cobertura, custo_mensal) VALUES ('PL001', 'Plano Dental Básico', 'Cobertura completa', 200.00);
INSERT INTO T_PD_CH_PLANOS_SAUDE (plano_id, nome_plano, cobertura, custo_mensal) VALUES ('PL002', 'Plano Dental Avançado', 'Cobertura total + Ortodontia', 300.00);
INSERT INTO T_PD_CH_PLANOS_SAUDE (plano_id, nome_plano, cobertura, custo_mensal) VALUES ('PL001', 'Plano Dental Básico', 'Cobertura completa', 200.00);
INSERT INTO T_PD_CH_PLANOS_SAUDE (plano_id, nome_plano, cobertura, custo_mensal) VALUES ('PL002', 'Plano Dental Avançado', 'Cobertura total + Ortodontia', 300.00);
INSERT INTO T_PD_CH_PLANOS_SAUDE (plano_id, nome_plano, cobertura, custo_mensal) VALUES ('PL003', 'Plano Odontológico Familiar', 'Cobertura completa para a família', 450.00);
INSERT INTO T_PD_CH_PLANOS_SAUDE (plano_id, nome_plano, cobertura, custo_mensal) VALUES ('PL004', 'Plano Infantil', 'Cobertura total para crianças', 250.00);
INSERT INTO T_PD_CH_PLANOS_SAUDE (plano_id, nome_plano, cobertura, custo_mensal) VALUES ('PL005', 'Plano Sênior', 'Cobertura total para idosos', 350.00);
INSERT INTO T_PD_CH_PLANOS_SAUDE (plano_id, nome_plano, cobertura, custo_mensal) VALUES ('PL006', 'Plano Ortodontia', 'Cobertura para tratamentos ortodônticos', 400.00);
INSERT INTO T_PD_CH_PLANOS_SAUDE (plano_id, nome_plano, cobertura, custo_mensal) VALUES ('PL007', 'Plano Emergencial', 'Cobertura para emergências', 150.00);
INSERT INTO T_PD_CH_PLANOS_SAUDE (plano_id, nome_plano, cobertura, custo_mensal) VALUES ('PL008', 'Plano Preventivo', 'Cobertura para consultas preventivas', 220.00);

-- Inserindo dados na tabela T_PD_CH_PACIENTES_PLANOS
INSERT INTO T_PD_CH_PACIENTES_PLANOS (paciente_id, plano_id, data_inicio, data_fim) VALUES ('P001', 'PL001', TO_DATE('2024-01-01', 'YYYY-MM-DD'), NULL);
INSERT INTO T_PD_CH_PACIENTES_PLANOS (paciente_id, plano_id, data_inicio, data_fim) VALUES ('P002', 'PL002', TO_DATE('2024-01-15', 'YYYY-MM-DD'), NULL);
INSERT INTO T_PD_CH_PACIENTES_PLANOS (paciente_id, plano_id, data_inicio, data_fim) VALUES ('P001', 'PL001', TO_DATE('2024-01-01', 'YYYY-MM-DD'), NULL);
INSERT INTO T_PD_CH_PACIENTES_PLANOS (paciente_id, plano_id, data_inicio, data_fim) VALUES ('P002', 'PL002', TO_DATE('2024-01-15', 'YYYY-MM-DD'), NULL);
INSERT INTO T_PD_CH_PACIENTES_PLANOS (paciente_id, plano_id, data_inicio, data_fim) VALUES ('P003', 'PL003', TO_DATE('2024-02-01', 'YYYY-MM-DD'), NULL);
INSERT INTO T_PD_CH_PACIENTES_PLANOS (paciente_id, plano_id, data_inicio, data_fim) VALUES ('P004', 'PL004', TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL);
INSERT INTO T_PD_CH_PACIENTES_PLANOS (paciente_id, plano_id, data_inicio, data_fim) VALUES ('P005', 'PL005', TO_DATE('2024-03-01', 'YYYY-MM-DD'), NULL);
INSERT INTO T_PD_CH_PACIENTES_PLANOS (paciente_id, plano_id, data_inicio, data_fim) VALUES ('P006', 'PL006', TO_DATE('2024-03-15', 'YYYY-MM-DD'), NULL);
INSERT INTO T_PD_CH_PACIENTES_PLANOS (paciente_id, plano_id, data_inicio, data_fim) VALUES ('P007', 'PL007', TO_DATE('2024-04-01', 'YYYY-MM-DD'), NULL);
INSERT INTO T_PD_CH_PACIENTES_PLANOS (paciente_id, plano_id, data_inicio, data_fim) VALUES ('P008', 'PL008', TO_DATE('2024-04-15', 'YYYY-MM-DD'), NULL);
