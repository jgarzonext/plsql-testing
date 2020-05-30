--------------------------------------------------------
--  DDL for Package PAC_CASS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_CASS" AUTHID CURRENT_USER IS
/******************************************************************************
   NOM:    PAC_CASS
   PROP�SIT: Especificaci� del paquet de les funcions i procediments
                 per a la carga de fitxers de la CASS.

   REVISIONS:
   Ver        Data        Autor             Descripci�
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/08/2008  XVILA            1. Creaci�n del package.
   2.0        04/12/2008  SBOU             2. Modificacions + P_CARGA
******************************************************************************/

   /*************************************************************************
     Determina quins arxius de c�rrega s�n els que cal processar, els llegeix
     i els marca com a llegits.
   *************************************************************************/
   PROCEDURE p_carga;

   /*************************************************************************
     Rutina de lectura del fitxer extern que permet graba les dades en les taules
     cass i cassdet_01.
     param in P_PATH : Path fitxer
     param in P_NOMBRE : Nom fitxer
     param in PSPROCES : N� proc�s
   *************************************************************************/
   PROCEDURE p_lee(p_path IN VARCHAR2, p_nombre IN VARCHAR2, psproces IN NUMBER);

   /*************************************************************************
     Rutina per recuperar les dades d'un contracte.
     param in  pcassbene  : N�mero CASS del beneficiari.
     param in  pfacto     : Data de l�acte, format AAAAMMDD.
     param in  pnremesa   : N� remesa
     param in  psproces   : N� proc�s
     param out psseguro   : N�mero de seguro.
     param out pnriesgo   : N�mero risc.
     param out pcgarant   : C�di garantia
     param out psperson   : Id. persona
     param out pagr_salud :
   *************************************************************************/
   FUNCTION f_datos_contrato(
      pcassbene IN VARCHAR2,
      pfacto IN VARCHAR2,
      pnremesa IN VARCHAR2,
      psproces IN NUMBER,
      psseguro IN OUT NUMBER,
      pnriesgo IN OUT NUMBER,
      pcgarant IN OUT NUMBER,
      psperson IN OUT NUMBER,
      pagr_salud IN OUT VARCHAR2)
      RETURN NUMBER;

   /***********************************************************************
      Rutina de creaci� dels reemborsaments corresponents a partir de
      cass i cassdet_01.
      param in PREMESA  : N� remesa
      param in PSPROCES : N� proc�s
   ***********************************************************************/
   FUNCTION f_genera_reemb(premesa IN VARCHAR2, psproces IN NUMBER)
      RETURN NUMBER;
END;

/

  GRANT EXECUTE ON "AXIS"."PAC_CASS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_CASS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_CASS" TO "PROGRAMADORESCSI";
