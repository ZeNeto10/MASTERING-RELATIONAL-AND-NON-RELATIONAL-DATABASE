SET SERVEROUTPUT ON;
SET VERIFY OFF;

-- Bloco INNER JOIN

DECLARE
    CURSOR c_consultas_dentistas IS
        SELECT d.nome AS dentista_nome, COUNT(c.consulta_id) AS total_consultas
        FROM T_PD_CH_CONSULTAS c
        INNER JOIN T_PD_CH_DENTISTAS d
        ON c.dentista_id = d.dentista_id
        GROUP BY d.nome
        ORDER BY d.nome;
BEGIN
    FOR consulta_rec IN c_consultas_dentistas LOOP
        DBMS_OUTPUT.PUT_LINE('Dentista: ' || consulta_rec.dentista_nome || ' - Total de Consultas: ' || consulta_rec.total_consultas);
    END LOOP;
END;

-- Bloco LEFT JOIN

DECLARE
    CURSOR c_diagnosticos_consultas IS
        SELECT c.data_consulta, COUNT(d.diagnostico_id) AS total_diagnosticos
        FROM T_PD_CH_CONSULTAS c
        LEFT JOIN T_PD_CH_DIAGNOSTICOS d
        ON c.consulta_id = d.consulta_id
        GROUP BY c.data_consulta
        ORDER BY c.data_consulta DESC;
BEGIN
    FOR consulta_rec IN c_diagnosticos_consultas LOOP
        DBMS_OUTPUT.PUT_LINE('Data da Consulta: ' || TO_CHAR(consulta_rec.data_consulta, 'YYYY-MM-DD') || ' - Total de Diagnósticos: ' || consulta_rec.total_diagnosticos);
    END LOOP;
END;

-- Bloco RIGHT JOIN

DECLARE
    CURSOR c_sinistros_diagnosticos IS
        SELECT s.nome_sinistro, COUNT(d.diagnostico_id) AS total_diagnosticos
        FROM T_PD_CH_SINISTROS s
        RIGHT JOIN T_PD_CH_DIAGNOSTICOS_SINISTROS ds
        ON s.sinistro_id = ds.sinistro_id
        RIGHT JOIN T_PD_CH_DIAGNOSTICOS d
        ON ds.diagnostico_id = d.diagnostico_id
        GROUP BY s.nome_sinistro
        ORDER BY s.nome_sinistro;
BEGIN
    FOR sinistro_rec IN c_sinistros_diagnosticos LOOP
        DBMS_OUTPUT.PUT_LINE('Sinistro: ' || sinistro_rec.nome_sinistro || ' - Total de Diagnósticos: ' || sinistro_rec.total_diagnosticos);
    END LOOP;
END;

-- Bloco UPDATE
DECLARE
    v_paciente_id VARCHAR2(150) := (SELECT paciente_id FROM T_PD_CH_PACIENTES WHERE ROWNUM = 1); 
    v_novo_email  VARCHAR2(100) := 'novo_email@email.com'; 
    v_count       NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM T_PD_CH_PACIENTES
    WHERE paciente_id = v_paciente_id;

    IF v_count > 0 THEN
        UPDATE T_PD_CH_PACIENTES
        SET email = v_novo_email
        WHERE paciente_id = v_paciente_id;

        DBMS_OUTPUT.PUT_LINE('Email atualizado com sucesso para o paciente ID: ' || v_paciente_id);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Paciente não encontrado para o ID: ' || v_paciente_id);
    END IF;
END;

-- Bloco DELETE
DECLARE
    v_paciente_id VARCHAR2(150) := (SELECT paciente_id FROM T_PD_CH_PACIENTES WHERE ROWNUM = 1); 
    v_count       NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM T_PD_CH_PACIENTES
    WHERE paciente_id = v_paciente_id;

    IF v_count > 0 THEN
        DELETE FROM T_PD_CH_PACIENTES
        WHERE paciente_id = v_paciente_id;

        DBMS_OUTPUT.PUT_LINE('Paciente com ID: ' || v_paciente_id || ' foi deletado com sucesso.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Paciente não encontrado para o ID: ' || v_paciente_id);
    END IF;
END;