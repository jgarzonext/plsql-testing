BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_PERSONAS_REL','TABLE');
END;
/
create table MIG_PERSONAS_REL
(
  ncarga         NUMBER not null,
  cestmig        NUMBER not null,
  mig_pk         VARCHAR2(50) not null,
  mig_fk         VARCHAR2(50) not null,
  fkrel          VARCHAR2(50) not null,
  ctiprel        NUMBER(2) not null,
  pparticipacion NUMBER(7,3),
  islider        NUMBER(1),
  cagrupa        NUMBER not null,
  fagrupa        DATE
);
/
COMMENT ON COLUMN "MIG_PERSONAS_REL"."NCARGA" IS 'Número de carga';
COMMENT ON COLUMN "MIG_PERSONAS_REL"."CESTMIG" IS 'Estado del registro';
COMMENT ON COLUMN "MIG_PERSONAS_REL"."MIG_PK" IS 'Clave única de MIG_PERSONAS_REL';
COMMENT ON COLUMN "MIG_PERSONAS_REL"."MIG_FK" IS 'Clave externa para la persona (MIG_PERSONAS)';
COMMENT ON COLUMN "MIG_PERSONAS_REL"."FKREL" IS 'Clave externa para la persona relacionada (MIG_PERSONAS)';
COMMENT ON COLUMN "MIG_PERSONAS_REL"."CTIPREL" IS 'Tipo de persona relacionada (V.F. 1037)';
COMMENT ON COLUMN "MIG_PERSONAS_REL"."PPARTICIPACION" IS 'Porcentaje de participaci¿n';
COMMENT ON COLUMN "MIG_PERSONAS_REL"."ISLIDER" IS '1 - L¿der consorcio';
COMMENT ON TABLE  "MIG_PERSONAS_REL"  IS 'Tabla Intermedia migración de relaciones de personas';