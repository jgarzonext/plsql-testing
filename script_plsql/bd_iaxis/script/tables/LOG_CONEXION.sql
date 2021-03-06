--------------------------------------------------------
--  DDL for Table LOG_CONEXION
--------------------------------------------------------

  CREATE TABLE "AXIS"."LOG_CONEXION" 
   (	"CUSUARI" VARCHAR2(20 BYTE), 
	"SESSION_ID" NUMBER, 
	"FCONEXION" DATE, 
	"COFICINA" NUMBER, 
	"MSG" VARCHAR2(500 BYTE), 
	"NIPUSU" VARCHAR2(50 BYTE), 
	"CESTCON" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."LOG_CONEXION"."CUSUARI" IS 'Usuario que se conecta';
   COMMENT ON COLUMN "AXIS"."LOG_CONEXION"."SESSION_ID" IS 'Sesion Oracle';
   COMMENT ON COLUMN "AXIS"."LOG_CONEXION"."FCONEXION" IS 'Fecha y hora de conexi�n';
   COMMENT ON COLUMN "AXIS"."LOG_CONEXION"."COFICINA" IS 'Oficina que devuelve el Host';
   COMMENT ON COLUMN "AXIS"."LOG_CONEXION"."MSG" IS 'Mensaje de error del host';
   COMMENT ON COLUMN "AXIS"."LOG_CONEXION"."NIPUSU" IS 'N�mero IP Usuario';
   COMMENT ON COLUMN "AXIS"."LOG_CONEXION"."CESTCON" IS 'Estado conexi�n (0,(usu/pasw incorrecto),1(OK),2(Aviso intentos),3(Bloqueo usuario m�x. intentos),4(Bloqueo usu),5(Contrase�a caducada)) ';
   COMMENT ON TABLE "AXIS"."LOG_CONEXION"  IS 'Registro de conexiones y validacion de usuarios de MARCH VIDA';
  GRANT UPDATE ON "AXIS"."LOG_CONEXION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LOG_CONEXION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LOG_CONEXION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LOG_CONEXION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LOG_CONEXION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LOG_CONEXION" TO "PROGRAMADORESCSI";
