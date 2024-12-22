CREATE OR REPLACE TYPE t_relatorio_consultas AS OBJECT (
    paciente_id     VARCHAR2(150),
    paciente_nome   VARCHAR2(100),
    consulta_id     VARCHAR2(150),
    data_consulta   DATE,
    observacoes     VARCHAR2(255)
);

CREATE OR REPLACE TYPE t_tab_relatorio_consultas IS TABLE OF t_relatorio_consultas;

CREATE OR REPLACE FUNCTION relatorio_consultas RETURN t_tab_relatorio_consultas IS
    v_relatorio t_tab_relatorio_consultas := t_tab_relatorio_consultas(); -- Inicializando a tabela
BEGIN
    FOR rec IN (
        SELECT 
            p.paciente_id,
            p.nome AS paciente_nome,
            c.consulta_id,
            c.data_consulta,
            c.observacoes
        FROM 
            T_PD_CH_PACIENTES p
        JOIN 
            T_PD_CH_CONSULTAS c ON p.paciente_id = c.paciente_id
    ) LOOP
        v_relatorio.EXTEND; 
        v_relatorio(v_relatorio.LAST) := t_relatorio_consultas(rec.paciente_id, rec.paciente_nome, rec.consulta_id, rec.data_consulta, rec.observacoes);
    END LOOP;

    RETURN v_relatorio; 
END;


DECLARE
    v_resultado t_tab_relatorio_consultas;
BEGIN
    v_resultado := relatorio_consultas;
    
    FOR i IN 1..v_resultado.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Paciente ID: ' || v_resultado(i).paciente_id || 
                             ', Nome: ' || v_resultado(i).paciente_nome || 
                             ', Consulta ID: ' || v_resultado(i).consulta_id || 
                             ', Data: ' || TO_CHAR(v_resultado(i).data_consulta, 'DD/MM/YYYY') || 
                             ', Observações: ' || v_resultado(i).observacoes);
    END LOOP;
END;
