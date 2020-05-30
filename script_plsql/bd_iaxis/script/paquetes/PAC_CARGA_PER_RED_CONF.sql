--------------------------------------------------------
--  DDL for Package PAC_CARGA_PER_RED_CONF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_CARGA_PER_RED_CONF" IS
   /***************************************************************************
      NOMBRE:       pac_carga_per_red_conf
      PROP�SITO:    Proceso de traspaso de informacion de las tablas MIG_ a las
                    distintas tablas de AXIS (Cap�tulo Personas y Red Comercial)
      Ver        Fecha       Autor       Descripci�n
      ---------  ----------  ----------  --------------------------------------
       1.0        11/10/2017  HAG         Creacion package de carga
   --
   --
   /***************************************************************************
      PROCEDURE p_asigna_user
      Procedimiento que asigna usuario de carga
         param in  puser:     Descripci�n del usuario.
   ***************************************************************************/
   PROCEDURE p_asigna_user(puser VARCHAR2);
   --
   /**************************************************************************
      PROCEDURE p_borra_personas
      Procedimiento que borra los registros grabados en MIG_PERSONAS y relacionados en MIG
   ***************************************************************************/
   PROCEDURE p_borra_personas(p_all NUMBER);
   /***************************************************************************
      PROCEDURE p_carga_person
      Procedimiento que ejecuta el cargue de un fichero particular
         param in  ptab_des:     Descripci�n de la tabla.
   ***************************************************************************/
   PROCEDURE p_carga_person(ptab_des VARCHAR2);
END pac_carga_per_red_conf;

/

  GRANT EXECUTE ON "AXIS"."PAC_CARGA_PER_RED_CONF" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_CARGA_PER_RED_CONF" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_CARGA_PER_RED_CONF" TO "PROGRAMADORESCSI";
