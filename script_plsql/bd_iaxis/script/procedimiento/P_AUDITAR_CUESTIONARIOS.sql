--------------------------------------------------------
--  DDL for Procedure P_AUDITAR_CUESTIONARIOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_AUDITAR_CUESTIONARIOS" 
  (  aud_sseguro  IN NUMBER
    ,aud_nriesgo     IN NUMBER
    ,aud_formulario  IN VARCHAR2
    ,aud_acceso     IN VARCHAR2
    ,aud_permiso    IN VARCHAR2
  )
IS
 aud_usuario  VARCHAR2(30);
 aud_fecha    date;
BEGIN
 INSERT INTO auditar_cuestionarios
  (  sseguro
    ,nriesgo
    ,cusuari
    ,fmodifi
    ,cform
    ,nacceso
    ,cpermis
                )
  VALUES
   ( aud_sseguro
     ,aud_nriesgo
     ,F_USER
     ,sysdate
     ,aud_formulario
     ,aud_acceso
     ,aud_permiso
   );
COMMIT;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_AUDITAR_CUESTIONARIOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_AUDITAR_CUESTIONARIOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_AUDITAR_CUESTIONARIOS" TO "PROGRAMADORESCSI";
