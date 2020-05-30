--------------------------------------------------------
--  DDL for Package PAC_CARGA_REASEGUROS_CONF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_CARGA_REASEGUROS_CONF" IS
   --
   /***************************************************************************
      PROCEDURE p_asigna_user
      Procedimiento que asigna usuario de carga
         param in  puser:     Descripción del usuario.
   ***************************************************************************/
   PROCEDURE p_asigna_user(puser VARCHAR2);
   --
   /***************************************************************************
      PROCEDURE p_carga_reaseg
      Procedimiento que ejecuta el cargue de un fichero particular
         param in  ptab_des:     Descripción de la tabla.
   ***************************************************************************/
   PROCEDURE p_carga_reaseg(ptab_des VARCHAR2);
   --
END pac_carga_reaseguros_conf;

/

  GRANT EXECUTE ON "AXIS"."PAC_CARGA_REASEGUROS_CONF" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_CARGA_REASEGUROS_CONF" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_CARGA_REASEGUROS_CONF" TO "PROGRAMADORESCSI";
