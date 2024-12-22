CREATE TABLE T_PD_CH_CONSULTAS
(
    consulta_id   VARCHAR2(150) NOT NULL,
    paciente_id   VARCHAR2(150) NOT NULL,      
    dentista_id   VARCHAR2(150) NOT NULL,
    data_consulta DATE NOT NULL,
    observacoes   VARCHAR2(255),
    CONSTRAINT t_pd_ch_consultas_pk PRIMARY KEY (consulta_id)
);

CREATE TABLE T_PD_CH_DENTISTAS
(
    dentista_id VARCHAR2(150) NOT NULL,
    nome        VARCHAR2(100) NOT NULL,
    email       VARCHAR2(100),
    CONSTRAINT t_pd_ch_dentistas_pk PRIMARY KEY (dentista_id)
);

CREATE TABLE T_PD_CH_DENTISTAS_ESPECIALIDADES
(
    dentista_id      VARCHAR2(150) NOT NULL,
    especialidade_id VARCHAR2(150) NOT NULL,
    CONSTRAINT t_pd_ch_dentistas_especialidades_pk PRIMARY KEY (dentista_id, especialidade_id)
);

CREATE TABLE T_PD_CH_DIAGNOSTICOS
(
    diagnostico_id VARCHAR2(150) NOT NULL,
    consulta_id    VARCHAR2(150) NOT NULL,
    descricao      VARCHAR2(255) NOT NULL,
    CONSTRAINT t_pd_ch_diagnosticos_pk PRIMARY KEY (diagnostico_id)
);

CREATE TABLE T_PD_CH_DIAGNOSTICOS_SINISTROS
(
    diagnostico_id VARCHAR2(150) NOT NULL,
    sinistro_id    VARCHAR2(150) NOT NULL,
    CONSTRAINT t_pd_ch_diagnosticos_sinistros_pk PRIMARY KEY (diagnostico_id, sinistro_id)
);

CREATE TABLE T_PD_CH_ESPECIALIDADES
(
    especialidade_id VARCHAR2(150) NOT NULL,
    nome             VARCHAR2(100) NOT NULL,
    CONSTRAINT t_pd_ch_especialidades_pk PRIMARY KEY (especialidade_id)
);

CREATE TABLE T_PD_CH_PACIENTES
(
    paciente_id     VARCHAR2(150) NOT NULL,
    nome            VARCHAR2(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    email           VARCHAR2(100),
    CONSTRAINT t_pd_ch_pacientes_pk PRIMARY KEY (paciente_id)
);

CREATE TABLE T_PD_CH_PACIENTES_PLANOS
(
    paciente_id VARCHAR2(150) NOT NULL,
    plano_id    VARCHAR2(150) NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim    DATE,
    CONSTRAINT t_pd_ch_pacientes_planos_pk PRIMARY KEY (paciente_id, plano_id)
);

CREATE TABLE T_PD_CH_PLANOS_SAUDE
(
    plano_id     VARCHAR2(150) NOT NULL,
    nome_plano   VARCHAR2(100) NOT NULL,
    cobertura    VARCHAR2(255),
    custo_mensal NUMBER(10, 2),
    CONSTRAINT t_pd_ch_planos_saude_pk PRIMARY KEY (plano_id)
);

CREATE TABLE T_PD_CH_SINISTROS
(
    sinistro_id   VARCHAR2(150) NOT NULL,
    nome_sinistro VARCHAR2(100) NOT NULL,
    custo         NUMBER(10, 2) NOT NULL,
    CONSTRAINT t_pd_ch_sinistros_pk PRIMARY KEY (sinistro_id)
);

ALTER TABLE T_PD_CH_CONSULTAS
    ADD CONSTRAINT t_pd_ch_consultas_dentistas_fk FOREIGN KEY (dentista_id) REFERENCES T_PD_CH_DENTISTAS (dentista_id) NOT DEFERRABLE;

ALTER TABLE T_PD_CH_CONSULTAS
    ADD CONSTRAINT t_pd_ch_consultas_pacientes_fk FOREIGN KEY (paciente_id) REFERENCES T_PD_CH_PACIENTES (paciente_id) NOT DEFERRABLE;

ALTER TABLE T_PD_CH_DENTISTAS_ESPECIALIDADES
    ADD CONSTRAINT t_pd_ch_dentistas_especialidades_dentistas_fk FOREIGN KEY (dentista_id) REFERENCES T_PD_CH_DENTISTAS (dentista_id) NOT DEFERRABLE;

ALTER TABLE T_PD_CH_DENTISTAS_ESPECIALIDADES
    ADD CONSTRAINT t_pd_ch_dentistas_especialidades_especialidades_fk FOREIGN KEY (especialidade_id) REFERENCES T_PD_CH_ESPECIALIDADES (especialidade_id) NOT DEFERRABLE;

ALTER TABLE T_PD_CH_DIAGNOSTICOS
    ADD CONSTRAINT t_pd_ch_diagnosticos_consultas_fk FOREIGN KEY (consulta_id) REFERENCES T_PD_CH_CONSULTAS (consulta_id) NOT DEFERRABLE;

ALTER TABLE T_PD_CH_DIAGNOSTICOS_SINISTROS
    ADD CONSTRAINT t_pd_ch_diagnosticos_sinistros_diagnosticos_fk FOREIGN KEY (diagnostico_id) REFERENCES T_PD_CH_DIAGNOSTICOS (diagnostico_id) NOT DEFERRABLE;

ALTER TABLE T_PD_CH_DIAGNOSTICOS_SINISTROS
    ADD CONSTRAINT t_pd_ch_diagnosticos_sinistros_sinistros_fk FOREIGN KEY (sinistro_id) REFERENCES T_PD_CH_SINISTROS (sinistro_id) NOT DEFERRABLE;

ALTER TABLE T_PD_CH_PACIENTES_PLANOS
    ADD CONSTRAINT t_pd_ch_pacientes_planos_pacientes_fk FOREIGN KEY (paciente_id) REFERENCES T_PD_CH_PACIENTES (paciente_id) NOT DEFERRABLE;

ALTER TABLE T_PD_CH_PACIENTES_PLANOS
    ADD CONSTRAINT t_pd_ch_pacientes_planos_planos_fk FOREIGN KEY (plano_id) REFERENCES T_PD_CH_PLANOS_SAUDE (plano_id) NOT DEFERRABLE;