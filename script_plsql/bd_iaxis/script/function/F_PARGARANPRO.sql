--------------------------------------------------------
--  DDL for Function F_PARGARANPRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_PARGARANPRO" (
   pcramo IN NUMBER,
   pcmodali IN NUMBER,
   pctipseg IN NUMBER,
   pccolect IN NUMBER,
   pcactivi IN NUMBER,
   pcgarant IN NUMBER,
   pcpargar IN VARCHAR2,
   pcvalpar OUT NUMBER)
   RETURN NUMBER AUTHID CURRENT_USER IS
   /*************************************************************************
      FUNCTION F_PARGARANPRO
      Retorna el valor del par�metro PCPARGAR para una garant�a
        param in pcramo    : c�digo del ramo
        param in pcmodali  : c�digo de la modalidad
        param in pctipseg  : c�digo del tipo de seguro
        param in pccolect  : c�digo de la colectividad
        param in pcactivi  : c�digo de la actividad
        param in pcgarant  : c�digo de la garant�a
        param in pcpargar  : c�digo del par�metro
        param out pcvalpar : valor num�rico del par�metro
        return             : 0 si todo es correcto
                             109635 en caso de error
   *************************************************************************/
   num_err        NUMBER;
   psproduc       productos.sproduc%TYPE;
BEGIN
   num_err := 0;

   BEGIN
      SELECT sproduc
        INTO psproduc
        FROM productos
       WHERE cramo = pcramo
         AND cmodali = pcmodali
         AND ctipseg = pctipseg
         AND ccolect = pccolect;

      -- BUG 8999 - 29/11/2010 - JMP - Se llama al PAC_PARAMETROS
      pcvalpar := pac_parametros.f_pargaranpro_n(psproduc, pcactivi, pcgarant, pcpargar);
   EXCEPTION
      WHEN OTHERS THEN
         num_err := 109635;
   END;

   RETURN num_err;
END f_pargaranpro;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_PARGARANPRO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_PARGARANPRO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_PARGARANPRO" TO "PROGRAMADORESCSI";
