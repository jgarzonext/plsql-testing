--------------------------------------------------------
--  DDL for Package PAC_CIERRES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_CIERRES" AS
/******************************************************************************
   NOMBRE:       PAC_MD_CIERRES
   PROP�SITO: Funciones para cierres contables

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/08/2008   JGM                1. Creaci�n del package.
   2.0        12/01/2010   MCA                2. Creaci�n de funci�n para obtener la fecha cierre de un tipo de cierre
   3.0        02/01/2012   JMF                3. 0020701 LCOL_F001 - UAT-FIN - La parametrizacion para programacion de cierres no funciono
******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;

/*F_SET_CIERRES
Funci�n que grabar� los datos de un nuevo cierre.

Par�metros

1. CEMPRES: : Entrada y num�rico.
2. CTIPO: : Entrada y num�rico.
3. CESTADO: Entrada y num�rico.
4. FPERINI: Entrada y fecha.
5. FPERFIN: Entrada y fecha.
6. FCIERRE: Entrada y fecha.

*/
   FUNCTION f_set_cierres(
      pcempres IN NUMBER,
      pctipo IN NUMBER,
      pcestado IN NUMBER,
      pfperini IN DATE,
      pfperfin IN DATE,
      pfcierre IN DATE)
      RETURN NUMBER;

/*F_fechas_nuevo_cierre
Retorna 0 si va todo bien.
Funci�n que ha de mirar las fechas del �ltimo cierre del mismo tipo que entra por par�metro,
para proponer las del siguiente cierren, que ser�n:
   Pfperini :=  (fecha_final_ultimo_cierre + 1);
   Pfperfin :=  last_day(to_date((fecha_final_ultimo_cierre + 1) ));
   Pfcierre :=  last_day(to_date((fecha_final_ultimo_cierre + 1) ));


Par�metros

1. CEMPRES: : Entrada y num�rico.
2. CTIPO: : Entrada y num�rico.
3. FPERINI: Salida y Fecha.
5. FPERFIN: Salida y Fecha.
5. PFCIERRE: Salida y Fecha.


*/
   FUNCTION f_fechas_nuevo_cierre(
      pcempres IN NUMBER,
      pctipo IN NUMBER,
      pfperini OUT DATE,
      pfperfin OUT DATE,
      pfcierre OUT DATE)
      RETURN NUMBER;

/*
F_config_cierre
Nueva funci�n que nos devuelve la configuraci�n del cierre.
Devolver� un num�rico. 1 si ha podido recuperar su configuraci�n y 0 si no la ha podido recuperar.

Par�metros
1. CEMPRES: Entrada y num�rico.
2. CTIPO: Entrada y num�rico.
3. PFECMODIF: Salida y num�rico.
4. PPREVIO: Salida y num�rico.

*/
   FUNCTION f_config_cierre(
      pcempres IN NUMBER,
      pctipo IN NUMBER,
      pmodif OUT NUMBER,
      pprevio OUT NUMBER)
      RETURN NUMBER;

/*F_BORRAR_CIERRE
Nueva funci�n que se utilizar� para borrar un CIERRE (s�lo se pueden borrar aquellos que esten pendientes).

Par�metros

1. PCEMPRES: Entrada y num�rico. Empresa.
2. PCTIPO: Entrada y num�rico. Tipo de cierre.
3. PFPERINI: Entrada y fecha. Fecha inicio del cierre.
4. PCESTADO: Entrada y n�merico. Estado del cierre.

*/
   FUNCTION f_borrar_cierre(
      pcempres IN NUMBER,
      pctipo IN NUMBER,
      pfperini IN DATE,
      pcestado IN NUMBER)
      RETURN NUMBER;

/*F_FECHA_ULTCIERRE
Nueva funci�n que devolver� la fecha del �ltimo cierre hecho del tipo que entra por par�metro
Param.
1. PCEMPRES: Empresa.
2. PCTIPO: Tipo de cierre
3.  PFECHA: Fecha fin del �ltimo cierre hecho
*/
   FUNCTION f_fecha_ultcierre(pcempres IN NUMBER, pctipo IN NUMBER)
      RETURN DATE;

-- BUG 0020701 - 02/01/2012 - JMF
   FUNCTION f_val_fcierre(
      pcempres IN NUMBER,
      pctipo IN NUMBER,
      pcestado IN NUMBER,
      pfperini IN DATE,
      pfperfin IN DATE,
      pfcierre IN DATE)
      RETURN NUMBER;
END pac_cierres;

/

  GRANT EXECUTE ON "AXIS"."PAC_CIERRES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_CIERRES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_CIERRES" TO "PROGRAMADORESCSI";
