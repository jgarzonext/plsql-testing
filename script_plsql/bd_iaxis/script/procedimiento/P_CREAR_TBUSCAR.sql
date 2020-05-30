--------------------------------------------------------
--  DDL for Procedure P_CREAR_TBUSCAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_CREAR_TBUSCAR" (
   ptapelli1 IN OUT VARCHAR2,
   ptapelli2 IN OUT VARCHAR2,
   ptnombre IN OUT VARCHAR2,
   ptapelli IN OUT VARCHAR2,
   ptsiglas IN OUT VARCHAR2,
   ptnomtot IN OUT VARCHAR2,
   ptbuscar OUT VARCHAR2) IS
/******************************************************************************
   NAME:       P_CREAR_TBUSCAR
   Construye el campo buscar de la tabla personas mediante la concatenación del
   nombre y los apellidos o del nombre de la empresa y las siglas
*****************************************************************************/
   format_tnombre per_detper.tnombre%TYPE;
   format_tapelli1_f per_detper.tapelli1%TYPE;
   format_tapelli2_f per_detper.tapelli2%TYPE;
   format_tapelli_nf VARCHAR2(60);
   format_tsiglas per_detper.tsiglas%TYPE;
   format_tnomtot VARCHAR2(60);
   num_err        NUMBER;
BEGIN
   num_err := f_strstd(ptnombre, format_tnombre);
   num_err := f_strstd(ptapelli1, format_tapelli1_f);
   num_err := f_strstd(ptapelli2, format_tapelli2_f);
   num_err := f_strstd(ptapelli, format_tapelli_nf);
   num_err := f_strstd(ptsiglas, format_tsiglas);
   num_err := f_strstd(ptnomtot, format_tnomtot);
   ptbuscar := LTRIM(RTRIM(format_tapelli1_f || ' ' || format_tapelli2_f || format_tapelli_nf
                           || ' ' || format_tnombre || '#' || format_tsiglas || '#'
                           || format_tnomtot));
EXCEPTION
   WHEN OTHERS THEN
      ptbuscar := NULL;
END p_crear_tbuscar;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_CREAR_TBUSCAR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_CREAR_TBUSCAR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_CREAR_TBUSCAR" TO "PROGRAMADORESCSI";
