CREATE OR REPLACE TYPE t_relatorio_consultas_por_paciente AS OBJECT (
    paciente_id     VARCHAR2(150),
    paciente_nome   VARCHAR2(100),
    total_consultas NUMBER,
    custo_total     NUMBER
);

CREATE OR REPLACE TYPE t_tab_relatorio_consultas_por_paciente IS TABLE OF t_relatorio_consultas_por_paciente;

CREATE OR REPLACE FUNCTION relatorio_consultas_por_paciente RETURN t_tab_relatorio_consultas_por_paciente IS
    v_relatorio t_tab_relatorio_consultas_por_paciente := t_tab_relatorio_consultas_por_paciente(); 
BEGIN
    FOR rec IN (
        SELECT 
            p.paciente_id,
            p.nome AS paciente_nome,
            COUNT(c.consulta_id) AS total_consultas,
            SUM(s.custo) AS custo_total
        FROM 
            T_PD_CH_PACIENTES p
        LEFT JOIN 
            T_PD_CH_CONSULTAS c ON p.paciente_id = c.paciente_id
        LEFT JOIN 
            T_PD_CH_SINISTROS s ON c.consulta_id = s.sinistro_id
        GROUP BY 
            p.paciente_id, p.nome
        ORDER BY 
            total_consultas DESC
    ) LOOP
        
        v_relatorio.EXTEND; 
        v_relatorio(v_relatorio.LAST) := t_relatorio_consultas_por_paciente(rec.paciente_id, rec.paciente_nome, rec.total_consultas, NVL(rec.custo_total, 0));
    END LOOP;

END;

DECLARE
    v_resultado t_tab_relatorio_consultas_por_paciente;
BEGIN
    v_resultado := relatorio_consultas_por_paciente;
    
    FOR i IN 1..v_resultado.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Paciente ID: ' || v_resultado(i).paciente_id || 
                             ', Nome: ' || v_resultado(i).paciente_nome || 
                             ', Total de Consultas: ' || v_resultado(i).total_consultas || 
                             ', Custo Total: R$ ' || TO_CHAR(v_resultado(i).custo_total, 'FM9999999990.00'));
    END LOOP;
END;
