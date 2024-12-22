-- PROCEDURE para inserir um paciente na tabela T_PD_CH_PACIENTES
CREATE OR REPLACE PROCEDURE inserir_paciente(
    p_paciente_id     IN VARCHAR2,
    p_nome            IN VARCHAR2,
    p_data_nascimento IN DATE,
    p_email           IN VARCHAR2
) IS
BEGIN
    INSERT INTO T_PD_CH_PACIENTES (paciente_id, nome, data_nascimento, email)
    VALUES (p_paciente_id, p_nome, p_data_nascimento, p_email);
END;

-- PROCEDURE para atualizar dados de um paciente na tabela T_PD_CH_PACIENTES
CREATE OR REPLACE PROCEDURE atualizar_paciente(
    p_paciente_id     IN VARCHAR2,
    p_nome            IN VARCHAR2,
    p_data_nascimento IN DATE,
    p_email           IN VARCHAR2
) IS
BEGIN
    UPDATE T_PD_CH_PACIENTES
    SET nome = p_nome,
        data_nascimento = p_data_nascimento,
        email = p_email
    WHERE paciente_id = p_paciente_id;
END;

-- PROCEDURE para deletar um paciente da tabela T_PD_CH_PACIENTES
CREATE OR REPLACE PROCEDURE deletar_paciente(
    p_paciente_id IN VARCHAR2
) IS
BEGIN
    DELETE FROM T_PD_CH_PACIENTES
    WHERE paciente_id = p_paciente_id;
END;

-- PROCEDURE para inserir uma nova consulta na tabela T_PD_CH_CONSULTAS
CREATE OR REPLACE PROCEDURE inserir_consulta(
    p_consulta_id   IN VARCHAR2,
    p_paciente_id   IN VARCHAR2,
    p_dentista_id   IN VARCHAR2,
    p_data_consulta IN DATE,
    p_observacoes   IN VARCHAR2
) IS
BEGIN
    INSERT INTO T_PD_CH_CONSULTAS (consulta_id, paciente_id, dentista_id, data_consulta, observacoes)
    VALUES (p_consulta_id, p_paciente_id, p_dentista_id, p_data_consulta, p_observacoes);
END;


-- PROCEDURE para atualizar dados de uma consulta na tabela T_PD_CH_CONSULTAS
CREATE OR REPLACE PROCEDURE atualizar_consulta(
    p_consulta_id   IN VARCHAR2,
    p_paciente_id   IN VARCHAR2,
    p_dentista_id   IN VARCHAR2,
    p_data_consulta IN DATE,
    p_observacoes   IN VARCHAR2
) IS
BEGIN
    UPDATE T_PD_CH_CONSULTAS
    SET paciente_id = p_paciente_id,
        dentista_id = p_dentista_id,
        data_consulta = p_data_consulta,
        observacoes = p_observacoes
    WHERE consulta_id = p_consulta_id;
END;

-- PROCEDURE para deletar uma consulta da tabela T_PD_CH_CONSULTAS
CREATE OR REPLACE PROCEDURE deletar_consulta(
    p_consulta_id IN VARCHAR2
) IS
BEGIN
    DELETE FROM T_PD_CH_CONSULTAS
    WHERE consulta_id = p_consulta_id;
END;

-- PROCEDURE para inserir um novo dentista na tabela T_PD_CH_DENTISTAS
CREATE OR REPLACE PROCEDURE inserir_dentista(
    p_dentista_id IN VARCHAR2,
    p_nome        IN VARCHAR2,
    p_email       IN VARCHAR2
) IS
BEGIN
    INSERT INTO T_PD_CH_DENTISTAS (dentista_id, nome, email)
    VALUES (p_dentista_id, p_nome, p_email);
END;

-- PROCEDURE para atualizar dados de um dentista na tabela T_PD_CH_DENTISTAS
CREATE OR REPLACE PROCEDURE atualizar_dentista(
    p_dentista_id IN VARCHAR2,
    p_nome        IN VARCHAR2,
    p_email       IN VARCHAR2
) IS
BEGIN
    UPDATE T_PD_CH_DENTISTAS
    SET nome = p_nome,
        email = p_email
    WHERE dentista_id = p_dentista_id;
END;

-- PROCEDURE para deletar um dentista da tabela T_PD_CH_DENTISTAS
CREATE OR REPLACE PROCEDURE deletar_dentista(
    p_dentista_id IN VARCHAR2
) IS
BEGIN
    DELETE FROM T_PD_CH_DENTISTAS
    WHERE dentista_id = p_dentista_id;
END;


-- PROCEDURE para inserir uma nova especialidade na tabela T_PD_CH_ESPECIALIDADES
CREATE OR REPLACE PROCEDURE inserir_especialidade(
    p_especialidade_id IN VARCHAR2,
    p_nome             IN VARCHAR2
) IS
BEGIN
    INSERT INTO T_PD_CH_ESPECIALIDADES (especialidade_id, nome)
    VALUES (p_especialidade_id, p_nome);
END;


-- PROCEDURE para atualizar dados de uma especialidade na tabela T_PD_CH_ESPECIALIDADES
CREATE OR REPLACE PROCEDURE atualizar_especialidade(
    p_especialidade_id IN VARCHAR2,
    p_nome             IN VARCHAR2
) IS
BEGIN
    UPDATE T_PD_CH_ESPECIALIDADES
    SET nome = p_nome
    WHERE especialidade_id = p_especialidade_id;
END;


-- PROCEDURE para deletar uma especialidade da tabela T_PD_CH_ESPECIALIDADES
CREATE OR REPLACE PROCEDURE deletar_especialidade(
    p_especialidade_id IN VARCHAR2
) IS
BEGIN
    DELETE FROM T_PD_CH_ESPECIALIDADES
    WHERE especialidade_id = p_especialidade_id;
END;


-- PROCEDURE para inserir um novo paciente na tabela T_PD_CH_PACIENTES
CREATE OR REPLACE PROCEDURE inserir_paciente(
    p_paciente_id     IN VARCHAR2,
    p_nome            IN VARCHAR2,
    p_data_nascimento IN DATE,
    p_email           IN VARCHAR2
) IS
BEGIN
    INSERT INTO T_PD_CH_PACIENTES (paciente_id, nome, data_nascimento, email)
    VALUES (p_paciente_id, p_nome, p_data_nascimento, p_email);
END;

-- PROCEDURE para atualizar dados de um paciente na tabela T_PD_CH_PACIENTES
CREATE OR REPLACE PROCEDURE atualizar_paciente(
    p_paciente_id     IN VARCHAR2,
    p_nome            IN VARCHAR2,
    p_data_nascimento IN DATE,
    p_email           IN VARCHAR2
) IS
BEGIN
    UPDATE T_PD_CH_PACIENTES
    SET nome = p_nome,
        data_nascimento = p_data_nascimento,
        email = p_email
    WHERE paciente_id = p_paciente_id;
END;


-- PROCEDURE para deletar um paciente da tabela T_PD_CH_PACIENTES
CREATE OR REPLACE PROCEDURE deletar_paciente(
    p_paciente_id IN VARCHAR2
) IS
BEGIN
    DELETE FROM T_PD_CH_PACIENTES
    WHERE paciente_id = p_paciente_id;
END;


-- PROCEDURE para inserir um novo plano de saúde na tabela T_PD_CH_PLANOS_SAUDE
CREATE OR REPLACE PROCEDURE inserir_plano_saude(
    p_plano_id     IN VARCHAR2,
    p_nome_plano   IN VARCHAR2,
    p_cobertura    IN VARCHAR2,
    p_custo_mensal IN NUMBER
) IS
BEGIN
    INSERT INTO T_PD_CH_PLANOS_SAUDE (plano_id, nome_plano, cobertura, custo_mensal)
    VALUES (p_plano_id, p_nome_plano, p_cobertura, p_custo_mensal);
END;


-- PROCEDURE para atualizar dados de um plano de saúde na tabela T_PD_CH_PLANOS_SAUDE
CREATE OR REPLACE PROCEDURE atualizar_plano_saude(
    p_plano_id     IN VARCHAR2,
    p_nome_plano   IN VARCHAR2,
    p_cobertura    IN VARCHAR2,
    p_custo_mensal IN NUMBER
) IS
BEGIN
    UPDATE T_PD_CH_PLANOS_SAUDE
    SET nome_plano = p_nome_plano,
        cobertura = p_cobertura,
        custo_mensal = p_custo_mensal
    WHERE plano_id = p_plano_id;
END;


-- PROCEDURE para deletar um plano de saúde da tabela T_PD_CH_PLANOS_SAUDE
CREATE OR REPLACE PROCEDURE deletar_plano_saude(
    p_plano_id IN VARCHAR2
) IS
BEGIN
    DELETE FROM T_PD_CH_PLANOS_SAUDE
    WHERE plano_id = p_plano_id;
END;

-- PROCEDURE para inserir um novo sinistro na tabela T_PD_CH_SINISTROS
CREATE OR REPLACE PROCEDURE inserir_sinistro(
    p_sinistro_id   IN VARCHAR2,
    p_nome_sinistro IN VARCHAR2,
    p_custo         IN NUMBER
) IS
BEGIN
    INSERT INTO T_PD_CH_SINISTROS (sinistro_id, nome_sinistro, custo)
    VALUES (p_sinistro_id, p_nome_sinistro, p_custo);
END;


-- PROCEDURE para atualizar dados de um sinistro na tabela T_PD_CH_SINISTROS
CREATE OR REPLACE PROCEDURE atualizar_sinistro(
    p_sinistro_id   IN VARCHAR2,
    p_nome_sinistro IN VARCHAR2,
    p_custo         IN NUMBER
) IS
BEGIN
    UPDATE T_PD_CH_SINISTROS
    SET nome_sinistro = p_nome_sinistro,
        custo = p_custo
    WHERE sinistro_id = p_sinistro_id;
END;


-- PROCEDURE para deletar um sinistro da tabela T_PD_CH_SINISTROS
CREATE OR REPLACE PROCEDURE deletar_sinistro(
    p_sinistro_id IN VARCHAR2
) IS
BEGIN
    DELETE FROM T_PD_CH_SINISTROS
    WHERE sinistro_id = p_sinistro_id;
END;


-- PROCEDURE para inserir um novo registro na tabela T_PD_CH_PACIENTES_PLANOS
CREATE OR REPLACE PROCEDURE inserir_paciente_plano(
    p_paciente_id IN VARCHAR2,
    p_plano_id    IN VARCHAR2,
    p_data_inicio IN DATE,
    p_data_fim    IN DATE
) IS
BEGIN
    INSERT INTO T_PD_CH_PACIENTES_PLANOS (paciente_id, plano_id, data_inicio, data_fim)
    VALUES (p_paciente_id, p_plano_id, p_data_inicio, p_data_fim);
END;


-- PROCEDURE para atualizar dados de um registro na tabela T_PD_CH_PACIENTES_PLANOS
CREATE OR REPLACE PROCEDURE atualizar_paciente_plano(
    p_paciente_id IN VARCHAR2,
    p_plano_id    IN VARCHAR2,
    p_data_inicio IN DATE,
    p_data_fim    IN DATE
) IS
BEGIN
    UPDATE T_PD_CH_PACIENTES_PLANOS
    SET data_inicio = p_data_inicio,
        data_fim = p_data_fim
    WHERE paciente_id = p_paciente_id AND plano_id = p_plano_id;
END;


-- PROCEDURE para deletar um registro da tabela T_PD_CH_PACIENTES_PLANOS
CREATE OR REPLACE PROCEDURE deletar_paciente_plano(
    p_paciente_id IN VARCHAR2,
    p_plano_id    IN VARCHAR2
) IS
BEGIN
    DELETE FROM T_PD_CH_PACIENTES_PLANOS
    WHERE paciente_id = p_paciente_id AND plano_id = p_plano_id;
END;

-- PROCEDURE para inserir um novo diagnóstico de sinistro na tabela T_PD_CH_DIAGNOSTICOS_SINISTROS
CREATE OR REPLACE PROCEDURE inserir_diagnostico_sinistro(
    p_diagnostico_id IN VARCHAR2,
    p_sinistro_id    IN VARCHAR2
) IS
BEGIN
    INSERT INTO T_PD_CH_DIAGNOSTICOS_SINISTROS (diagnostico_id, sinistro_id)
    VALUES (p_diagnostico_id, p_sinistro_id);
END;


-- PROCEDURE para atualizar um diagnóstico de sinistro na tabela T_PD_CH_DIAGNOSTICOS_SINISTROS
CREATE OR REPLACE PROCEDURE atualizar_diagnostico_sinistro(
    p_diagnostico_id IN VARCHAR2,
    p_sinistro_id    IN VARCHAR2
) IS
BEGIN
    UPDATE T_PD_CH_DIAGNOSTICOS_SINISTROS
    SET sinistro_id = p_sinistro_id
    WHERE diagnostico_id = p_diagnostico_id;
END;


-- PROCEDURE para deletar um diagnóstico de sinistro da tabela T_PD_CH_DIAGNOSTICOS_SINISTROS
CREATE OR REPLACE PROCEDURE deletar_diagnostico_sinistro(
    p_diagnostico_id IN VARCHAR2,
    p_sinistro_id    IN VARCHAR2
) IS
BEGIN
    DELETE FROM T_PD_CH_DIAGNOSTICOS_SINISTROS
    WHERE diagnostico_id = p_diagnostico_id AND sinistro_id = p_sinistro_id;
END;


-- PROCEDURE para inserir um novo diagnóstico na tabela T_PD_CH_DIAGNOSTICOS
CREATE OR REPLACE PROCEDURE inserir_diagnostico(
    p_diagnostico_id IN VARCHAR2,
    p_consulta_id    IN VARCHAR2,
    p_descricao      IN VARCHAR2
) IS
BEGIN
    INSERT INTO T_PD_CH_DIAGNOSTICOS (diagnostico_id, consulta_id, descricao)
    VALUES (p_diagnostico_id, p_consulta_id, p_descricao);
END;

-- PROCEDURE para atualizar um diagnóstico na tabela T_PD_CH_DIAGNOSTICOS
CREATE OR REPLACE PROCEDURE atualizar_diagnostico(
    p_diagnostico_id IN VARCHAR2,
    p_consulta_id    IN VARCHAR2,
    p_descricao      IN VARCHAR2
) IS
BEGIN
    UPDATE T_PD_CH_DIAGNOSTICOS
    SET consulta_id = p_consulta_id,
        descricao = p_descricao
    WHERE diagnostico_id = p_diagnostico_id;
END;


-- PROCEDURE para deletar um diagnóstico da tabela T_PD_CH_DIAGNOSTICOS
CREATE OR REPLACE PROCEDURE deletar_diagnostico(
    p_diagnostico_id IN VARCHAR2
) IS
BEGIN
    DELETE FROM T_PD_CH_DIAGNOSTICOS
    WHERE diagnostico_id = p_diagnostico_id;
END;


-- PROCEDURE para inserir uma nova especialidade de dentista na tabela T_PD_CH_DENTISTAS_ESPECIALIDADES
CREATE OR REPLACE PROCEDURE inserir_dentista_especialidade(
    p_dentista_id      IN VARCHAR2,
    p_especialidade_id IN VARCHAR2
) IS
BEGIN
    INSERT INTO T_PD_CH_DENTISTAS_ESPECIALIDADES (dentista_id, especialidade_id)
    VALUES (p_dentista_id, p_especialidade_id);
END;


-- PROCEDURE para atualizar a especialidade de um dentista na tabela T_PD_CH_DENTISTAS_ESPECIALIDADES
CREATE OR REPLACE PROCEDURE atualizar_dentista_especialidade(
    p_dentista_id      IN VARCHAR2,
    p_especialidade_id IN VARCHAR2
) IS
BEGIN
    UPDATE T_PD_CH_DENTISTAS_ESPECIALIDADES
    SET especialidade_id = p_especialidade_id
    WHERE dentista_id = p_dentista_id;
END;


-- PROCEDURE para deletar uma especialidade de dentista da tabela T_PD_CH_DENTISTAS_ESPECIALIDADES
CREATE OR REPLACE PROCEDURE deletar_dentista_especialidade(
    p_dentista_id      IN VARCHAR2,
    p_especialidade_id IN VARCHAR2
) IS
BEGIN
    DELETE FROM T_PD_CH_DENTISTAS_ESPECIALIDADES
    WHERE dentista_id = p_dentista_id AND especialidade_id = p_especialidade_id;
END;