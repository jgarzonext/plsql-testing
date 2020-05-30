--------------------------------------------------------
--  DDL for Package PAC_IAX_CIERRES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_CIERRES" AS
/******************************************************************************
   NOMBRE:       PAC_IAX_CIERRES
   PROP�SITO: Funciones para cierres contables

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/08/2008   JGM                1. Creaci�n del package.
******************************************************************************/

    e_object_error  exception;
    e_param_error   exception;


/*F_GET_CIERRES
Nueva funci�n que seleccionar� informaci�n sobre cierres dependiendo de los par�metros de entrada.

Par�metros

1.	PCEMPRES:   Entrada y num�rico.   Empresa.
2.	PCTIPO:     Entrada y num�rico.   Tipo de cierre.
3.	PCESTADO:   Entrada y num�rico.   Estado de cierre.
4.	PFCIERRE:   Entrada y fecha.      Fecha del cierre.
5.	MENSAJE: Salida y mensajes del tipo T_IAX_MENSAJES
*/
    FUNCTION F_Get_Cierres  (pcempres IN NUMBER,
                             pctipo IN NUMBER,
                             pcestado IN NUMBER,
                             pfcierre IN DATE,
                             mensajes OUT T_IAX_MENSAJES) RETURN T_IAX_CIERRES ;
/*
Nueva funci�n que seleccionar� informaci�n de un cierre dependiendo de los par�metros de entrada.
*/
    FUNCTION F_Get_Cierre   (pcempres IN NUMBER,
                             pctipo IN NUMBER,
                             pfperini IN DATE,
                             mensajes OUT T_IAX_MENSAJES) RETURN OB_IAX_CIERRES ;

/*Funci�n para grabar los datos de un cierre (programar/desprogramar o grabar nuevo registro).*/
    FUNCTION F_set_Cierres  (pcempres IN NUMBER,
                             pctipo IN NUMBER,
                             pcestado IN NUMBER,
                             pfperini IN DATE,
                             pfperfin IN DATE,
                             pfcierre IN DATE,
                             mensajes OUT T_IAX_MENSAJES) RETURN NUMBER ;

/*Funci�n para ejecutar on-line un cierre programado o un previo.*/
    FUNCTION F_ejecutar  (mensajes OUT T_IAX_MENSAJES) RETURN NUMBER ;

/*Nueva funci�n que nos dir� si un cierre es modificable o no lo es.*/
    FUNCTION F_get_modificable  (pcestado IN NUMBER, mensajes OUT T_IAX_MENSAJES) RETURN NUMBER ;

/*Nueva funci�n que har� validaciones del registro de alta y cargar� el campo de Estado de cierre seg�n valores correctos.*/
    FUNCTION F_get_Validacion (pcempres IN NUMBER,
                               pctipo IN NUMBER,
                               pfperini OUT DATE,
                               pfperfin OUT DATE,
                               pfcierre OUT DATE,
                               pmodif OUT NUMBER,
                               pprevio OUT NUMBER,
                               mensajes OUT T_IAX_MENSAJES) RETURN NUMBER;

/*F_BORRAR_CIERRE
Nueva funci�n que se utilizar� para borrar un CIERRE (s�lo se pueden borrar aquellos que esten pendientes).

Par�metros

1.	PCEMPRES: Entrada y num�rico. Empresa.
2.	PCTIPO: Entrada y num�rico. Tipo de cierre.
3.	PFPERINI: Entrada y fecha. Fecha inicio del cierre.
4.	PCESTADO: Entrada y n�merico. Estado del cierre.
5.	MENSAJE: Salida y mensajes del tipo t_iax_mensajes

*/
    FUNCTION F_BORRAR_CIERRE(pcempres IN NUMBER,
                             pctipo IN NUMBER,
                             pfperini IN DATE,
                             pcestado IN NUMBER,
                             mensajes OUT T_IAX_MENSAJES) RETURN NUMBER;

/*
F_CONFIG_CIERRE Nueva funci�n que nos devuelve la configuraci�n del cierre (Si se pueden modificar las fechas y si se permite un previo).

Par�metros

CEMPRES: Entrada y num�rico.
CTIPO: Entrada y num�rico.
PFECMODIF: Salida y num�rico.
PPREVIO: Salida y num�rico.
MENSAJES:Salida y mensajes del tipo t_iax_mensajes*/

    FUNCTION F_CONFIG_CIERRE(pcempres IN NUMBER,
                             pctipo IN NUMBER,
                             pfecmodif OUT NUMBER,
                             pprevio OUT NUMBER,
                             mensajes OUT T_IAX_MENSAJES) RETURN NUMBER;

END PAC_IAX_CIERRES;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_CIERRES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_CIERRES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_CIERRES" TO "PROGRAMADORESCSI";
