--------------------------------------------------------
--  DDL for Package PAC_CARGAS_ALLIANZ
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_CARGAS_ALLIANZ" IS
/******************************************************************************
   NOMBRE:      PAC_CARGAS_ALLIANZ
   PROP�SITO: Funciones para la gesti�n de la carga de procesos

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        07/06/2010   FAL              1. Creaci�n del package.
   2.0        15/10/2010   DRA              2. 0016130: CRT - Error informando el codigo de proceso en carga
   3.0        18/10/2010   FAL              3. 0016324: CRT - Configuracion de las cargas
******************************************************************************/
   k_empresaaxis CONSTANT empresas.cempres%TYPE := f_parinstalacion_n('EMPRESADEF');
   k_idiomaaaxis CONSTANT per_detper.cidioma%TYPE
              := pac_parametros.f_parempresa_n(f_parinstalacion_n('EMPRESADEF'), 'IDIOMA_DEF');
   k_paisdefaxis CONSTANT provincias.cpais%TYPE := f_parinstalacion_n('PAIS_DEF');   -- ESPA�A
   k_motivoanula CONSTANT codimotmov.cmotmov%TYPE := 324;   -- Anul�laci� inmediata
   k_motivomodif CONSTANT codimotmov.cmotmov%TYPE := 670;   -- Motiu m�ltiple (SR)
   k_agente CONSTANT agentes.cagente%TYPE
                        := pac_redcomercial.f_buscatipage(f_parinstalacion_n('EMPRESADEF'), 0);
   -- Bug 0016324. FAL. 18/10/2010
   k_para_carga   cfg_files.cpara_error%TYPE;

   -- Fi Bug 0016324

   /*************************************************************************
       procedimiento que ejecuta una carga
       param in p_nombre   : Nombre fichero
       param in p_path   : Nuombre path
       param in  out psproces   : N�mero proceso (informado para recargar proceso).
       retorna 0 si ha ido bien, 1 en casos contrario
   *************************************************************************/
   FUNCTION f_ejecutar_carga(
      p_nombre IN VARCHAR2,
      p_path IN VARCHAR2,
      p_cproces IN NUMBER,   -- BUG16130:DRA:15/10/2010
      psproces IN OUT NUMBER)
      RETURN NUMBER;

/*************************************************************************
       procedimiento que ejecuta una carga RECIBOS
       param in p_nombre   : Nombre fichero
       param in p_path   : Nuombre path
       param in  out psproces   : N�mero proceso (informado para recargar proceso).
       retorna 0 si ha ido bien, 1 en casos contrario
   *************************************************************************/
   FUNCTION f_rec_ejecutarcarga(
      p_nombre IN VARCHAR2,
      p_path IN VARCHAR2,
      p_cproces IN NUMBER,   -- BUG16130:DRA:15/10/2010
      psproces IN OUT NUMBER)
      RETURN NUMBER;

/*************************************************************************
       procedimiento que ejecuta una carga SINIESTROS
       param in p_nombre   : Nombre fichero
       param in p_path   : Nuombre path
       param in  out psproces   : N�mero proceso (informado para recargar proceso).
       retorna 0 si ha ido bien, 1 en casos contrario
   *************************************************************************/
   FUNCTION f_sin_ejecutarcarga(
      p_nombre IN VARCHAR2,
      p_path IN VARCHAR2,
      p_cproces IN NUMBER,   -- BUG16130:DRA:15/10/2010
      psproces IN OUT NUMBER)
      RETURN NUMBER;

-- Bug 14888. FAL. 11/10/2010. Informar autriesgos.triesgo
   FUNCTION f_migra_autriesgos
      RETURN NUMBER;
-- Fi Bug 14888
END pac_cargas_allianz;

/

  GRANT EXECUTE ON "AXIS"."PAC_CARGAS_ALLIANZ" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_CARGAS_ALLIANZ" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_CARGAS_ALLIANZ" TO "PROGRAMADORESCSI";
