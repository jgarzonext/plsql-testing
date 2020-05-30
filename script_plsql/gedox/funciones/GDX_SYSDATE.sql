--------------------------------------------------------
--  DDL for Function GDX_SYSDATE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "GEDOX"."GDX_SYSDATE" RETURN DATE AUTHID current_user IS
--
-- FUNCIÓN CREADA PARA SER LLAMADA DESDE LOS FORMS Y REPORTS
-- CUANDO SE DESEE OBTENER LA FECHA DEL SISTEMA DEL SERVIDOR
--
BEGIN
  RETURN SYSDATE;
END;

 

/
