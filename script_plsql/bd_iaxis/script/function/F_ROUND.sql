--------------------------------------------------------
--  DDL for Function F_ROUND
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_ROUND" (
   p_import   IN   NUMBER,
   p_moneda   IN   NUMBER DEFAULT NULL, -- No es pot definir DEFAULT PAC_MONEDAS.Moneda_Inst per problemes de compatibilitat amb el Reports i Forms
   p_decimal  IN NUMBER DEFAULT 0
)
   RETURN NUMBER
IS

/***********************************************************************
   F_ROUND: Redondeamos el importe pasado segun la moneda. En caso de no
            pasar moneda se usar� la de la instalaci�n.
   REVISIONS:
   Ver        Data        Autor             Descripci�
   ---------  ----------  ---------------  ----------------------------------
   1.0                                      Creaci�n del package.
   2.0        Gener 2008  MSR               Moure-ho al package PAC_MONEDAS
                                            Simplificaci� i optimitzaci�.
                                            Es deixa per compatibilitat amn el codi existent
***********************************************************************/

 --   Exemple d'�s
 --     import_arrodonit := ROUND( import, PAC_MONEDAS.DECIMALS(moneda));
 --    o per la moneda per defecte
 --     import_arrodonit := ROUND( import, PAC_MONEDAS.DECIMALS);
 --   o encara m�s curt per la moneda per defecte
 --     import_arrodonit := ROUND( import );

BEGIN
   --BUG9902-20/04/2009 Es crida la nova funci�.
   RETURN PAC_MONEDAS.F_ROUND(p_import,p_moneda,p_decimal);
END f_round;

/

  GRANT EXECUTE ON "AXIS"."F_ROUND" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_ROUND" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_ROUND" TO "PROGRAMADORESCSI";
