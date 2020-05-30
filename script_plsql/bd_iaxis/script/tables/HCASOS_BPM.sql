--------------------------------------------------------
--  DDL for Table HCASOS_BPM
--------------------------------------------------------

  CREATE TABLE "AXIS"."HCASOS_BPM" 
   (	"CEMPRES" NUMBER(5,0), 
	"NNUMCASO" NUMBER, 
	"FHIST" DATE, 
	"CUSUASIGNADO" VARCHAR2(32 BYTE), 
	"CTIPOPROCESO" NUMBER(3,0), 
	"CESTADO" NUMBER(3,0), 
	"CESTADOENVIO" NUMBER(3,0), 
	"FALTA" DATE, 
	"FBAJA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE), 
	"SPRODUC" NUMBER, 
	"CMOTMOV" NUMBER(5,0), 
	"CTIPIDE" NUMBER(3,0), 
	"NNUMIDE" VARCHAR2(50 BYTE), 
	"TNOMCOM" VARCHAR2(300 BYTE), 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"NNUMCASOP" NUMBER, 
	"NCASO_BPM" NUMBER, 
	"NSOLICI_BPM" NUMBER, 
	"CTIPMOV_BPM" NUMBER(3,0), 
	"CAPROBADA_BPM" NUMBER(3,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."CEMPRES" IS 'Código de empresa';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."NNUMCASO" IS 'Número de caso';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."FHIST" IS 'Fecha de paso a histórico';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."CUSUASIGNADO" IS 'Usuario asignado al caso';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."CTIPOPROCESO" IS 'Tipo de proceso VF 960';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."CESTADO" IS 'Código de estado del caso VF 961';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."CESTADOENVIO" IS 'Código de estado envío del caso VF 962';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."FBAJA" IS 'Fecha de baja';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."FMODIFI" IS 'Fecha de modificación';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."CUSUMOD" IS 'Usuario de modificación';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."SPRODUC" IS 'Código de producto';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."CMOTMOV" IS 'Código de motivo de movimiento';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."CTIPIDE" IS 'Tipo de identificación persona VF 672';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."NNUMIDE" IS 'Número de identificación persona';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."TNOMCOM" IS 'Nombre completo';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."NPOLIZA" IS 'Número de póliza';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."NCERTIF" IS 'Número de certificado para pólizas colectivas';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."NMOVIMI" IS 'Número de movimiento';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."NNUMCASOP" IS 'Número de caso padre de este caso';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."NCASO_BPM" IS 'Número de caso BPM externo a iAxis. En productos colectivos corresponde a un movimiento del colectivo';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."NSOLICI_BPM" IS 'Número de solicitud BPM externo a iAxis, asociado al caso BPM. Corresponde a un movimiento del asegurado del colectivo';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."CTIPMOV_BPM" IS 'Código de tipo de movimiento BPM VF 964';
   COMMENT ON COLUMN "AXIS"."HCASOS_BPM"."CAPROBADA_BPM" IS 'Indica si la solicitud correspondiente al asegurado se aprobó o no en el BPM y por tanto se tiene que procesar o no en iAxis. (1-Si, 0-No)';
   COMMENT ON TABLE "AXIS"."HCASOS_BPM"  IS 'Tabla histórica para registrar los cambios en los registros de la tabla CASOS_BPM';
  GRANT UPDATE ON "AXIS"."HCASOS_BPM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HCASOS_BPM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HCASOS_BPM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HCASOS_BPM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HCASOS_BPM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HCASOS_BPM" TO "PROGRAMADORESCSI";
