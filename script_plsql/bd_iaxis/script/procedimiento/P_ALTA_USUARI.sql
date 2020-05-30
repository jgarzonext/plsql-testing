--------------------------------------------------------
--  DDL for Procedure P_ALTA_USUARI
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_ALTA_USUARI" (pcodi IN VARCHAR2, ppwd IN VARCHAR2) AUTHID  CURRENT_USER IS

   str_sql 		  		VARCHAR2(500);
   vs_tbsdefault        VARCHAR2(30);
   vs_tbstemp           VARCHAR2(30);

BEGIN

   -- 1. Carregam parametres per defecte
   vs_tbsdefault   := NVL(f_parinstalacion_t('USTF_TSDEF'),'users');
   vs_tbstemp      := NVL(f_parinstalacion_t('USTF_TSTMP'),'temp');

   -- 2. Ejecutamos la instruccion de CREATE USER
   str_sql := 'CREATE USER ' || pcodi || ' IDENTIFIED BY ' || ppwd||CHR(10);
   str_sql := str_sql||' DEFAULT   TABLESPACE '||vs_tbsdefault||CHR(10);
   str_sql := str_sql||' TEMPORARY TABLESPACE '||vs_tbstemp   ||CHR(10);
   str_sql := str_sql||' QUOTA 0M ON SYSTEM';
   EXECUTE IMMEDIATE str_sql ;

   -- 3. Assignam Roles.
   str_sql   := 'GRANT R_AXIS_USER, R_AXIS_TF_USER TO '|| pcodi;
   EXECUTE IMMEDIATE str_sql ;

   DBMS_OUTPUT.PUT_LINE('Usuari:['||pcodi||'] creat correctament.');

EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('ERROR creant Usuari:['||pcodi||'], SQLCODE='||SQLCODE||'-'||SQLERRM);

END P_ALTA_USUARI;

 
 

/

  GRANT EXECUTE ON "AXIS"."P_ALTA_USUARI" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_ALTA_USUARI" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_ALTA_USUARI" TO "PROGRAMADORESCSI";
