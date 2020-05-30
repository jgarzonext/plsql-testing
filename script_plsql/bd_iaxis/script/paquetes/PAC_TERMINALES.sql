--------------------------------------------------------
--  DDL for Package PAC_TERMINALES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_TERMINALES" AS
/******************************************************************************
   NOMBRE:      PAC_TERMINALES
   PROP�SITO:   Funciones para la gesti�n de los terminales

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        05/11/2008   AMC                1. Creaci�n del package.
******************************************************************************/


   /*************************************************************************
       Inserta o Modifica un terminal.
       param in pcempres   : c�digo de la empresa
       param in pcmaqfisi  : M�quina f�sica
       param in pcterminal : Terminal Axis
       return           : 0 indica cambio realizado correctamente
                          <> 0 indica error
    *************************************************************************/
    FUNCTION F_SET_TERMINAL ( pcempres	    NUMBER,
                              pcmaqfisi	    VARCHAR2,
                              pcterminal    VARCHAR2 ) return number;


   /*************************************************************************
       Borra un terminal.
       param in pcempres   : c�digo de la empresa
       param in pcmaqfisi  : M�quina f�sica
       param in pcterminal : Terminal Axis
       return           : 0 indica cambio realizado correctamente
                          <> 0 indica error
    *************************************************************************/
    FUNCTION F_DEL_TERMINAL ( pcempres	    NUMBER,
                              pcmaqfisi	    VARCHAR2,
                              pcterminal    VARCHAR2 ) return number;

   /*************************************************************************
       Modifica un terminal.
       param in pcempres   : c�digo de la empresa
       param in pcmaqfisi  : M�quina f�sica
       param in pcterminal : Terminal Axis
       param in pnewcmaqfisi  : Nueva M�quina f�sica
       param in pnewcterminal : Nuevo Terminal Axis
       return           : 0 indica cambio realizado correctamente
                          <> 0 indica error
    *************************************************************************/
    FUNCTION F_UPDATE_TERMINAL ( pcempres	    NUMBER,
                                 pcmaqfisi	    VARCHAR2,
                                 pcterminal     VARCHAR2,
                                 pnewcmaqfisi   VARCHAR2,
                                 pnewcterminal  VARCHAR2 ) return number;

   /*************************************************************************
       Consulta terminales.
       param in pcempres   : c�digo de la empresa
       param in pcmaqfisi  : M�quina f�sica
       param in pcterminal : Terminal Axis
       return           : retorna la cadena con la b�squeda
    *************************************************************************/
    FUNCTION FF_CONSULTA_TERMINALES ( pcempres	    NUMBER,
                              pcmaqfisi	    VARCHAR2,
                              pcterminal    VARCHAR2 ) return VARCHAR2;


END PAC_TERMINALES;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_TERMINALES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_TERMINALES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_TERMINALES" TO "PROGRAMADORESCSI";
