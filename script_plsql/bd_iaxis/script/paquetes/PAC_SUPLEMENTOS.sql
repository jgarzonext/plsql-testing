--------------------------------------------------------
--  DDL for Package PAC_SUPLEMENTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_SUPLEMENTOS" IS
/******************************************************************************
   NOMBRE:       PAC_SUPLEMENTOS
   PROP�SITO:

   REVISIONES:
   Ver        Fecha       Autor            Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        09/05/2008  SBG              1. Creaci�n del package.
******************************************************************************/

    /*************************************************************************
       Preproceso del suplemento
       param in psseguro      : c�digo del seguro
       param in pcmotmov      : c�digo motivo suplemento
       return                 : 0 = todo ha ido bien
                                1 = se ha producido un error
    *************************************************************************/
    FUNCTION F_PreprocesarSuplemento(PSSEGURO IN NUMBER, PCMOTMOV IN NUMBER) RETURN NUMBER;
END PAC_SUPLEMENTOS;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_SUPLEMENTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_SUPLEMENTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_SUPLEMENTOS" TO "PROGRAMADORESCSI";
