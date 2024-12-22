-- Validando Paciente:
CREATE OR REPLACE FUNCTION validar_paciente(v_paciente_id VARCHAR2) RETURN BOOLEAN IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM T_PD_CH_PACIENTES
    WHERE paciente_id = v_paciente_id;

    RETURN v_count > 0;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN FALSE;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro ao validar paciente: ' || SQLERRM);
        RETURN FALSE;
END;

-- Validando Dentista:
CREATE OR REPLACE FUNCTION validar_dentista(v_dentista_id VARCHAR2) RETURN BOOLEAN IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM T_PD_CH_DENTISTAS
    WHERE dentista_id = v_dentista_id;

    RETURN v_count > 0;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN FALSE;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro ao validar dentista: ' || SQLERRM);
        RETURN FALSE;
END;

-- Validando E-mail:
CREATE OR REPLACE FUNCTION validar_email(p_email IN VARCHAR2) RETURN BOOLEAN IS
BEGIN
    IF REGEXP_LIKE(p_email, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$') THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;