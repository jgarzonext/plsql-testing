--------------------------------------------------------
--  DDL for Package PAC_MD_MNTTABLAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_MNTTABLAS" AS
/******************************************************************************
   NOMBRE:       PAC_MD_MNTTABLAS
   PROP�SITO:    Contiene los metodos y funciones para realizar el mantenimiento
                 de las tablas.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/03/2008   JCA                1. Creaci�n del package.
******************************************************************************/

    /*************************************************************************
       Funci�n que recupera la lista de las tablas susceptibles de su
       mantenimiento

       param IN  pcidioma     : codigo de idioma
       param out mensajes     : colecci�n de mensajes
       return sys_refcursor   : devolucion del cursor con los datos de la tabla
    *************************************************************************/
    FUNCTION F_Get_Tablas (pcidioma IN NUMBER,
                                                 mensajes OUT T_IAX_MENSAJES)RETURN SYS_REFCURSOR;

    /*************************************************************************
       Recupera los datos de la tabla especificada como parametro de entrada
       en la funcion y devuelve un cursor con los datos

       param in ptabla        : nombre de la tabla especificada
       param in out mensajes  : colecci�n de mensajes
       return sys_refcursor   : devolucion del cursor con los datos de la tabla
    *************************************************************************/

    FUNCTION F_Get_Tabvalores(ptabla IN VARCHAR2,
                              mensajes OUT T_IAX_MENSAJES) RETURN SYS_REFCURSOR;


    /*************************************************************************
       Recupera los registros de la tabla detalle con relaci�n al registro
       identificativo de la tabla principal
       param in ptabla        : Nombre de la tabla a consultar
       param in prelacion     : Lista de campos para realizar la condici�n sobre
                                la tabla detalle separados por ;
       param in pvalores      : valores de la tabla principal que relacionan con
                                el detalle separados por ;
       param in out mensajes  : colecci�n de mensajes
       return sys_refcursor   : devolucion del cursor con los datos de la tabla
    *************************************************************************/
    FUNCTION F_Get_TabDetValores(ptabla IN VARCHAR2,
                                 prelacion IN VARCHAR2,
                                 pvalores IN VARCHAR2,
                                 mensajes OUT T_IAX_MENSAJES) RETURN SYS_REFCURSOR;

    /*************************************************************************
       Recupera el cursor con los idiomas definidos en la aplicacion
       param in out mensajes  : colecci�n de mensajes
       return sys_refcursor   : devolucion del cursor con los datos de la tabla
    *************************************************************************/
    FUNCTION F_Get_Idiomas(mensajes OUT T_IAX_MENSAJES) RETURN SYS_REFCURSOR;

  /*************************************************************************
       Funcion que proporciona los mecanismos para leer el objeto y eliminar
       el registro especificado

       param in psql          : Instruccion sql a ejecutar
       param in out mensajes  : colecci�n de mensajes
       return number          : 1 en caso de error
                              : 2 si OK
    *************************************************************************/

    FUNCTION F_eliminaregistro(psql IN VARCHAR2,
                               mensajes OUT T_IAX_MENSAJES) RETURN NUMBER;


  /*************************************************************************
       Funcion que proporciona los mecanismos para leer el objeto y modificar
       o insertar el registro especificado

       param in psql          : Instruccion sql a ejecutar
       param out mensajes     : mensajes de salida
       return number          : 1 en caso de error
                              : 2 si OK
    *************************************************************************/

    FUNCTION F_GrabaRegistros(psql IN VARCHAR2,
                              mensajes OUT T_IAX_MENSAJES) RETURN NUMBER;

END PAC_MD_MNTTABLAS;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_MNTTABLAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_MNTTABLAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_MNTTABLAS" TO "PROGRAMADORESCSI";
