--------------------------------------------------------
--  DDL for Table CASSDET_01
--------------------------------------------------------

  CREATE TABLE "AXIS"."CASSDET_01" 
   (	"NREMESA" VARCHAR2(20 BYTE), 
	"NLINEA" NUMBER(8,0), 
	"NCASS_ASE" VARCHAR2(20 BYTE), 
	"NCASS_BENE" VARCHAR2(20 BYTE), 
	"NOM_BENE" VARCHAR2(80 BYTE), 
	"NPAGO" VARCHAR2(20 BYTE), 
	"NHOJA" VARCHAR2(20 BYTE), 
	"NLIN" VARCHAR2(20 BYTE), 
	"CIDENTI" VARCHAR2(30 BYTE), 
	"NLINDET" VARCHAR2(20 BYTE), 
	"CACTO" VARCHAR2(20 BYTE), 
	"TACTO" VARCHAR2(80 BYTE), 
	"FACTO" VARCHAR2(20 BYTE), 
	"NACTO" VARCHAR2(20 BYTE), 
	"ITARCASS" VARCHAR2(20 BYTE), 
	"PREEMB" VARCHAR2(20 BYTE), 
	"IMPCASS" VARCHAR2(20 BYTE), 
	"CONVENC" VARCHAR2(20 BYTE), 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CGARANT" NUMBER(6,0), 
	"AGR_SALUD" VARCHAR2(20 BYTE), 
	"SPERSON" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CASSDET_01"."NREMESA" IS 'N�mero de remesa, any + comptador de 6, exemple 2005000356. Dato tipo registro 2';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."NLINEA" IS 'N� linea Dato tipo registro 2';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."NCASS_ASE" IS 'N�mero CASS de l�assegurat. Dato tipo registro 2';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."NCASS_BENE" IS 'N�mero CASS del beneficiari. Dato tipo registro 2';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."NOM_BENE" IS 'Nom del beneficiari. Dato tipo registro 2';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."NPAGO" IS 'N�mero del pagament. Dato tipo registro 2';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."NHOJA" IS 'N�mero del full. Dato tipo registro 2';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."NLIN" IS 'Quantitat de l�nies de detall del pagament de tipus de registre ''3''. Dato tipo registro 2';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."CIDENTI" IS 'Identificaci� del full electr�nic:
                                            Format:ppppppp/ttt/aaaammdd/sss/fffff
                                            ppppppp �s el n�mero del prestador
                                            ttt �s el n�mero del tramitador
                                            aaaammdd �s la data
                                            sss �s el n�mero de seq��ncia
                                            fffff �s el n�mero del full.
                                            Dato tipo registro 2';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."NLINDET" IS 'N�mero de l�nia de detall del pagament. Dato tipo registro 3A';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."CACTO" IS 'Codi naturalesa de l�acte. Dato tipo registro 3A';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."TACTO" IS 'Descripci� naturalesa de l�acte. Dato tipo registro 3A';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."FACTO" IS 'Data de l�acte, format AAAAMMDD. Dato tipo registro 3A';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."NACTO" IS 'Quantitat, exemple 0000100 per 1,00. Dato tipo registro 3A';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."ITARCASS" IS 'Tarifa CASS, exemple 00000002535 per 25,35. Dato tipo registro 3A';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."PREEMB" IS 'Percentatge reembossament, exemple 07500 per 75,00 %. Dato tipo registro 3A';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."IMPCASS" IS 'Import pagament, exemple 00000001901 per 19,01. Dato tipo registro 3A';
   COMMENT ON COLUMN "AXIS"."CASSDET_01"."CONVENC" IS 'Indicador metge convencionat ''S'' � Si, ''N'' � No. Dato tipo registro 3A';
  GRANT UPDATE ON "AXIS"."CASSDET_01" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CASSDET_01" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CASSDET_01" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CASSDET_01" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CASSDET_01" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CASSDET_01" TO "PROGRAMADORESCSI";
