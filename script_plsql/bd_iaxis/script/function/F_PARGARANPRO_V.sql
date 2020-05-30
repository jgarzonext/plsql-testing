--------------------------------------------------------
--  DDL for Function F_PARGARANPRO_V
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_PARGARANPRO_V" (
   pcramo IN NUMBER,
   pcmodali IN NUMBER,
   pctipseg IN NUMBER,
   pccolect IN NUMBER,
   pcactivi IN NUMBER,
   pcgarant IN NUMBER,
   pcpargar IN VARCHAR2)
   RETURN NUMBER AUTHID CURRENT_USER IS
   /*************************************************************************
      FUNCTION F_PARGARANPRO_V
      Retorna el valor num�rico del par�metro PCPARGAR para una garant�a.
        param in pcramo    : c�digo del ramo
        param in pcmodali  : c�digo de la modalidad
        param in pctipseg  : c�digo del tipo de seguro
        param in pccolect  : c�digo de la colectividad
        param in pcactivi  : c�digo de la actividad
        param in pcgarant  : c�digo de la garant�a
        param in pcpargar  : c�digo del par�metro
        return             : el valor num�rico del par�metro
   *************************************************************************/
   psproduc       productos.sproduc%TYPE;
BEGIN
   SELECT sproduc
     INTO psproduc
     FROM productos
    WHERE cramo = pcramo
      AND cmodali = pcmodali
      AND ctipseg = pctipseg
      AND ccolect = pccolect;

   -- BUG 8999 - 29/11/2010 - JMP - Se llama al PAC_PARAMETROS
   RETURN pac_parametros.f_pargaranpro_n(psproduc, pcactivi, pcgarant, pcpargar);
END f_pargaranpro_v;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_PARGARANPRO_V" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_PARGARANPRO_V" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_PARGARANPRO_V" TO "PROGRAMADORESCSI";
