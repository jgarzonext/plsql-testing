--------------------------------------------------------
--  DDL for Package PAC_VAL_FINV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_VAL_FINV" AUTHID CURRENT_USER IS
    /******************************************************************************
      NOMBRE:       Pac_Val_Finv
      PROP�SITO:
      REVISIONES:

      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
       1.0       -            -               1. Creaci�n de package
       2.0       17/03/2009  RSC              2. An�lisis adaptaci�n productos indexados
   ******************************************************************************/

   /******************************************************************************
        RSC 12-07-2007
        Valida que el modelo de inversi�n configurado por el usuario �s valido.
        Si Pmodinv es diferente de NULL nos indica que el usuario ha escogido el
        modelo de inversi�n Libre, y que por tanto debemos verificar su validez.

        La funci�n retorna:
         0.- Si todo es correcto
         codigo error: - Si hay error o no cumple alguna validaci�n
    ******************************************************************************/
   FUNCTION f_valida_cartera(
      psproduc IN NUMBER,
      pcperfil IN NUMBER,
      pcartera IN pac_ref_contrata_ulk.cartera,
      pcidioma IN NUMBER,
      ocoderror OUT NUMBER,
      omsgerror OUT VARCHAR2)
      RETURN NUMBER;

   /******************************************************************************
        RSC 15-10-2007
        Valida si el perfil pasado por par�metro es editable o no.

        La funci�n retorna:
         0.- Si todo es correcto
         codigo error: - Si hay error o no cumple alguna validaci�n
    ******************************************************************************/
   FUNCTION f_valida_perfil_editable(
      psproduc IN NUMBER,
      pcperfil IN NUMBER,
      pcidioma IN NUMBER,
      ocoderror OUT NUMBER,
      omsgerror OUT VARCHAR2)
      RETURN NUMBER;

   /*******************************************************************************************
        RSC 01-08-2007
        Para un cesta dada almacena en "estado" el estado de la cesta consultando
        el estado que tienen los fondos asociados a la cesta. (Cerrado, Semicerrado y Abierto)
        Esta funci�n es de uso interno del Package. (f_valida_ulk_abierto)

        La funci�n retorna:
         0.- Si todo bien.
         codigo error: - Si hay error general
    *******************************************************************************************/
   FUNCTION f_valida_estado_cesta(cesta IN NUMBER, v_fefecto IN DATE, estado OUT VARCHAR2)
      RETURN NUMBER;

     /******************************************************************************
       RSC 17-09-2007
       Valida si existen fondos de inversi�n con fecha la de efecto pasada por par�metro
       que est�n en estado CERRADO.

       La funci�n retorna:
        0.- Si no existen fondos en estado CERRADO.
        codigo error: - Si hay error o no cumple alguna validaci�n
   ******************************************************************************/
   FUNCTION f_valida_ulk_abierto(
      psseguro IN NUMBER DEFAULT NULL,
      psproduc IN NUMBER DEFAULT NULL,
      pfecha IN DATE)
      RETURN NUMBER;
END pac_val_finv;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_VAL_FINV" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_VAL_FINV" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_VAL_FINV" TO "PROGRAMADORESCSI";
