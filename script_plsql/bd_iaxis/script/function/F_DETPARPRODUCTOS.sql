--------------------------------------------------------
--  DDL for Function F_DETPARPRODUCTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_DETPARPRODUCTOS" (
   psproduc IN NUMBER,
   pcparpro IN VARCHAR2,
   pcidioma IN NUMBER)
   RETURN CHAR IS
   /*********************************************************************************
       FUNCTION F_DETPARPRODUCTOS
       Recupera la descripci�n del valor de un par�metro de producto
         param in psproduc : c�digo del producto
         param in pcparpro : c�digo del par�metro de producto
         param in pcidioma : c�digo del idioma
         return            : descripci�n del valor del par�metro de producto
    ********************************************************************************/
   v_cvalpar      NUMBER;
   v_tvalpar      VARCHAR2(250);   -- Bug 18945/89297 - 26/09/2011
BEGIN
   SELECT cvalpar
     INTO v_cvalpar
     FROM parproductos
    WHERE sproduc = psproduc
      AND cparpro = pcparpro;

   -- BUG 8999 - 29/11/2010 - JMP - Se llama al PAC_PARAMETROS
   v_tvalpar := pac_parametros.f_descdetparam(pcparpro, v_cvalpar, pcidioma);
   RETURN v_tvalpar;
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      RETURN NULL;
   WHEN OTHERS THEN
      RETURN NULL;
END;
 

/

  GRANT EXECUTE ON "AXIS"."F_DETPARPRODUCTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_DETPARPRODUCTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_DETPARPRODUCTOS" TO "PROGRAMADORESCSI";
