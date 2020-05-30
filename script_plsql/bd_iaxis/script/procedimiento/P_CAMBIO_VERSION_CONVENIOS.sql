--------------------------------------------------------
--  DDL for Procedure P_CAMBIO_VERSION_CONVENIOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_CAMBIO_VERSION_CONVENIOS" AUTHID CURRENT_USER IS
   empresa        VARCHAR2(10);
   verror         NUMBER := 0;
   pliteral       NUMBER := 0;
   psproces       NUMBER;
BEGIN
   empresa := f_parinstalacion_n('EMPRESADEF');
   verror := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(empresa, 'USER_BBDD'));
   pliteral :=
      pac_convenios_emp.f_proceso_camb_verscon
                                   (null,
                                    NVL(pac_contexto.f_contextovalorparametro('IAX_IDIOMA'),
                                        2),
                                    psproces);
END p_cambio_version_convenios;

/

  GRANT EXECUTE ON "AXIS"."P_CAMBIO_VERSION_CONVENIOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_CAMBIO_VERSION_CONVENIOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_CAMBIO_VERSION_CONVENIOS" TO "PROGRAMADORESCSI";
