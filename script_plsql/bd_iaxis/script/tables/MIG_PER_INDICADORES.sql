BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_PER_INDICADORES','TABLE');
END;
/
CREATE TABLE MIG_PER_INDICADORES(
ncarga       NUMBER not null,
cestmig      NUMBER not null,
MIG_PK       VARCHAR2(50),
MIG_FK       VARCHAR2(50),
CODVINCULO   NUMBER(1),
CTIPIND      NUMBER(4)
);
/
comment on column MIG_PER_INDICADORES.MIG_PK is 'Clave única de MIG_PER_INDICADORES';
comment on column MIG_PER_INDICADORES.MIG_FK is 'Clave externa para la persona (MIG_PER_PERSONAS)';
comment on column MIG_PER_INDICADORES.CODVINCULO is 'Ver Tabla Vinculos 16.1.1.6';
comment on column MIG_PER_INDICADORES.CTIPIND is 'Codigo del indicador';