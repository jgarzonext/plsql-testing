--------------------------------------------------------
--  DDL for Package PAC_GFI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_GFI" AUTHID CURRENT_USER IS
      /******************************************************************************
      NOMBRE:      PAC_GFI
      PROP�SITO:   Funciones para el mantenimiento de las Formulas

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0                                       1. Creaci�n del package.
      2.0        18/06/2009   DCT               2. A�adir nuevos m�todos y nuevas funciones
                                                   para gestionar las formulas.
      3.0        17/07/2009   AMC               3. Bug 10716 - A�adir nuevos m�todos y nuevas funciones
                                                   para gestionar los terminos.
   ******************************************************************************/
   TYPE terr IS TABLE OF VARCHAR2(50)
      INDEX BY BINARY_INTEGER;

   terrs          terr;
   errs           NUMBER := 1;
   sinonim        VARCHAR2(30);
   comenta        VARCHAR2(2);

   FUNCTION busca_token(s IN OUT VARCHAR2, pdeclare IN OUT VARCHAR2, pselec IN OUT VARCHAR2)
      RETURN NUMBER;

   FUNCTION f_crea_func(pformula IN VARCHAR2, pcomenta IN NUMBER DEFAULT 1)
      RETURN NUMBER;

   FUNCTION f_sgt_parms(pnom VARCHAR2, psesio NUMBER)
      RETURN NUMBER;

   FUNCTION comprobar_token(ptoken IN VARCHAR2, pformula IN VARCHAR2)
      RETURN NUMBER;

   PROCEDURE p_grabar_rastro(
      psesion IN NUMBER,
      pparametro IN VARCHAR2,
      pvalor IN NUMBER,
      prastro IN NUMBER);

   FUNCTION f_eval_clave(pclave NUMBER, psesio NUMBER)
      RETURN NUMBER;

   /***********************************************************************
       Recupera la lista de tipos para los t�rminos.
       param in pcidioma : C�digo idioma
       return             : ref cursor

       Bug 10716 - 16/07/2009 - AMC
    ***********************************************************************/
   FUNCTION f_get_lsttipoterm(pcidioma IN NUMBER)
      RETURN sys_refcursor;

   /***********************************************************************
      Recupera la lista del origen del t�rmino.
      return             : ref cursor

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_get_lstorigen
      RETURN sys_refcursor;

   /***********************************************************************
      Recupera la lista de operadores.
      param in pcidioma : C�digo idioma
      return             : ref cursor

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_get_lstoperador(pcidioma IN NUMBER)
      RETURN sys_refcursor;

   /***********************************************************************
      Recupera la informaci�n de los t�rminos.
      param in ptermino : C�digo identificativo del t�rmino
      param in ptipo : Tipo de t�rmino (T=Tabla, P=Par�metro, F=F�rmula)
      param in porigen : Origen del t�rmino
      param in ptdesc : Descripci�n del t�rmino
      param in poperador : Indica si el termino es un operador o funci�n (0= No, 1= S�)
      param in pcidioma : C�digo idioma
      return             : ref cursor

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_get_terminos(
      ptermino IN VARCHAR2,
      ptipo IN VARCHAR2,
      porigen IN NUMBER,
      ptdesc IN VARCHAR2,
      poperador IN NUMBER,
      pcidioma IN NUMBER)
      RETURN sys_refcursor;

   /***********************************************************************
       Recupera la informaci�n del t�rmino.
       param in ptermino : C�digo identificativo del t�rmino
       return             : ref cursor

       Bug 10716 - 16/07/2009 - AMC
    ***********************************************************************/
   FUNCTION f_get_termino(ptermino IN VARCHAR2)
      RETURN sys_refcursor;

   /***********************************************************************
      Grava la informaci�n de los t�rminos.
      param in ptermino : C�digo identificativo del t�rmino
      param in ptipo    : Tipo de t�rmino (T=Tabla, P=Par�metro, F=F�rmula)
      param in porigen  : Origen del t�rmino
      param in ptdesc   : Descripci�n del t�rmino
      param in poperador : Indica si el termino es un operador o funci�n (0= No, 1= S�)
      param in pisnew   : 1 es un nuevo termino 0 ja exist�a
      return            : 0 ha ido correctamente o bien el c�digo de literal

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_grabartermino(
      ptermino IN VARCHAR2,
      ptipo IN VARCHAR2,
      porigen IN NUMBER,
      ptdesc IN VARCHAR2,
      poperador IN NUMBER,
      pisnew IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Elimina el t�rmino.
      param in ptermino : C�digo identificativo del t�rmino
      return            : 0 ha ido correctamente o bien el c�digo de literal

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_eliminartermino(ptermino IN VARCHAR2)
      RETURN NUMBER;

   /***********************************************************************
      Comprueba que el termino indicado no se este usando en alguna formula.
      param in ptermino : C�digo identificativo del t�rmino
      return            : 0 ha ido correctamente o bien el c�digo de literal

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   FUNCTION trobar_terme(ptermino IN VARCHAR)
      RETURN NUMBER;

   /***********************************************************************
      Elimina el par�metro pasado por par�metro.
      param in ptermino : C�digo identificativo del t�rmino

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   PROCEDURE borrar_parametros(ptermino IN VARCHAR2);

   /***********************************************************************
      Elimina el sin�nimo .
      param in ptermino : C�digo identificativo del t�rmino
      return            : 0 ha ido correctamente o bien el c�digo de literal
      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   FUNCTION borrar_sinonimos(ptermino IN VARCHAR2)
      RETURN NUMBER;

    /***********************************************************************
      Elimina las vigencias.
      param in ptermino : C�digo identificativo del t�rmino

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   PROCEDURE borrar_vigencias(ptermino IN VARCHAR2);

   /***********************************************************************
      Recupera la informaci�n de las vigencias del t�rmino.
      param in ptermino : C�digo identificativo del t�rmino
      return            : sys_refcursor

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_get_termvigencias(ptermino IN VARCHAR2)
      RETURN sys_refcursor;

   /***********************************************************************
      Elimina la vigencia del t�rmino.
      param in ptermino : C�digo identificativo del t�rmino
      param in pclave   : C�digo de la vigencia
      return            : 0 ha ido correctamente o bien el c�digo de literal

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_eliminartermvigen(ptermino IN VARCHAR2, pclave IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Recupera la informaci�n de la vigencia del t�rmino.
      param in ptermino : C�digo identificativo del t�rmino
      param in pclave   : C�digo de la vigencia
      return            : sys_refcursor

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_get_termvigencia(ptermino IN VARCHAR2, pclave IN NUMBER)
      RETURN sys_refcursor;

   /***********************************************************************
      Grabar la vigencia del t�rmino.
      param in ptermino : C�digo identificativo del t�rmino
      param in pclave   : C�digo de la vigencia
      param in pfechaefe : Fecha efecto
      param in pcvalor : Valor de la vigencia
      param in isNew : Indica si Nuevo 1 o 0 edici�n
      return            : 0 ha ido correctamente o bien el c�digo de literal

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   FUNCTION f_grabartermvig(
      ptermino IN VARCHAR2,
      pclave IN NUMBER,
      pfechaefe IN DATE,
      pcvalor IN FLOAT,
      isnew IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Comprueba que no exista ja una vigencia de t�rmino con esta fecha efecto.
      param in pfecha_efecto : Fecha efecto
      param in pcodigo  : C�digo identificativo del t�rmino
      return            : numero re registros encontrados

      Bug 10716 - 16/07/2009 - AMC
   ***********************************************************************/
   FUNCTION countsameefect(pfecha_efecto DATE, pcodigo VARCHAR2)
      RETURN NUMBER;

   /* Funci�n que recupera la lista de los tramos
        param in ptramo: C�digo de tramo
                 pconcepto: Concepto al que se aplica el tramo
        return:  ref cursor     */
   FUNCTION f_consultram(ptramo IN NUMBER, pconcepto IN VARCHAR2)
      RETURN sys_refcursor;

   /* Funci�n que elimna un tramo.
      param in ptramo: c�digo de tramo
      return : NUMBER   :  1 indicando se ha producido un error
                                        0 ha ido correctamente  */
   FUNCTION f_eliminartramo(ptramo IN NUMBER)
      RETURN NUMBER;

   /* Funci�n que recupera la informaci�n de los tramos
      param in ptramo: c�digo de tramo
     return:  ref cursor  */
   FUNCTION f_get_tramo(ptramo IN NUMBER)
      RETURN sys_refcursor;

   /* Funci�n que grava la informaci�n de los tramos.
       param in ptramo: c�digo de tramo
                pconcepto: Concepto al que se aplica el tramo
                pcptfranja: Concepto Franja
                pcptvalor: Concepto Valor
       return : NUMBER   :  1 indicando se ha producido un error
                            0 ha ido correctamente  */
   FUNCTION f_grabartramo(
      ptramo IN NUMBER,
      pconcepto IN VARCHAR2,
      pcptfranja IN VARCHAR2,
      pcptvalor IN VARCHAR2,
      pisnuevo IN NUMBER)
      RETURN NUMBER;

   /* Funci�n que recupera la informaci�n de los tramos
      param in ptramo: c�digo de tramo
      return:  ref cursor  */
   FUNCTION f_get_vigtramos(ptramo IN NUMBER)
      RETURN sys_refcursor;

   /* Funci�n que recupera la informaci�n del detalle del tramo
      param in pdetalletramo: c�digo detalle tramo
      return:  ref cursor  */
   FUNCTION f_get_detvigtramos(pdetalletramo IN NUMBER)
      RETURN sys_refcursor;

   /* Funci�n que grava la informaci�n de los tramos.
     param in ptramo: c�digo de tramo
              pfechaefecto: Fecha efecto tramo
              pdetalletramo: Detalle tramo
     return : NUMBER   :  1 indicando se ha producido un error
                          0 ha ido correctamente  */
   FUNCTION f_grabarvigtram(ptramo IN NUMBER, pfechaefecto IN DATE, pdetalletramo IN NUMBER)
      RETURN NUMBER;

   /* Funci�n que graba la informaci�n de la vigencia de los tramos
    param in pdetalletramo: C�digo detalle tramo
             porden:        N�mero de orden
             pdesde:        Valor desde
             phasta:        Valor hasta
             pvalor:        Valor
    return   : NUMBER   :  1 indicando se ha producido un error
                           0 ha ido correctamente  */
   FUNCTION f_grabardetvigtram(
      pdetalletramo IN NUMBER,
      porden IN NUMBER,
      pdesde IN NUMBER,
      phasta IN NUMBER,
      pvalor IN NUMBER)
      RETURN NUMBER;

   /* Funci�n que elimna la vigencia de un tramo.
     param in ptramo: C�digo de tramo
              pdetalletramo: C�digo del detalle tramo
     return              : NUMBER   :  1 indicando se ha producido un error
                                       0 ha ido correctamente  */
   FUNCTION f_eliminarvigencia(ptramo IN NUMBER, pdetalletramo IN NUMBER)
      RETURN NUMBER;

   /* Funci�n que elimna la vigencia de un tramo.
     param in pdetalletramo: C�digo del detalle tramo
              porden: N�mero de orden de secuencia
     return              : NUMBER   :  Error c�digo literal
                                       0 ha ido correctamente  */
   FUNCTION f_eliminardetvigencia(pdetalletramo IN NUMBER, porden IN NUMBER)
      RETURN NUMBER;

   ----------
   --BUCLES--
   ----------
   /* Funci�n que recupera la lista de bucles
     param in ptermino: Nombre del t�rmino
           in pniterac: F�rmula que nos dir� el n�mero de iteraciones
           in poperacion: Tipo de operaci�n (+, *)
     return:  ref cursor  */
   FUNCTION f_consultbucle(ptermino IN VARCHAR2, pniterac IN VARCHAR2, poperacion IN VARCHAR2)
      RETURN sys_refcursor;

   /* Funci�n que elimna un bucle
     param in ptermino: Nombre del t�rmino
     return              : NUMBER   :  1 indicando se ha producido un error
                                       0 ha ido correctamente  */
   FUNCTION f_eliminarbucle(ptermino IN VARCHAR2)
      RETURN NUMBER;

   /* Funci�n que recupera la lista de operaci�n para el bucle
     return:  ref cursor  */
   FUNCTION f_get_lstoperacion
      RETURN sys_refcursor;

   /* Funci�n que grava la informaci�n del bucle.
    param in ptermino: Nombre del t�rmino
             pniterac: F�rmula que nos dir� el n�mero de iteraciones
             poperacion: Tipo de operaci�n (+, *)
             isnew: 1 Indica que es nuevo y 0 Modificaci�n
    param out:  mensajes de salida
    return              : NUMBER   :  1 indicando se ha producido un error
                                      0 ha ido correctamente  */
   FUNCTION f_grabarbucle(
      ptermino IN VARCHAR2,
      pniterac IN VARCHAR2,
      poperacion IN VARCHAR2,
      isnew IN NUMBER)
      RETURN NUMBER;

--------------
--EVALUACI�N--
--------------
 /* Funci�n que recupera los par�metros para poder evaluar una f�rmula.
 param in pclave: Clave f�rmula
 param out:  psession: C�digo �nico de sesi�n
 return:  ref cursor  */
   FUNCTION f_get_paramtrans(pclave IN NUMBER, psession OUT NUMBER)
      RETURN sys_refcursor;

   /* Funci�n que grava la informaci�n de los par�metros
    param in psession: N�mero de sesi�n
             pparamact: Nombre par�metro actual
             pparampos: Nombre par�metro nuevo
             pvalor: Valor del par�metro

    return              : NUMBER   :  1 indicando se ha producido un error
                                      0 ha ido correctamente  */
   FUNCTION f_grabarparamtrans(
      psession IN NUMBER,
      pparamact IN VARCHAR2,
      pparampos IN VARCHAR2,
      pvalor IN NUMBER)
      RETURN NUMBER;

   /* Funci�n que elimina la informaci�n de los par�metros
    param in psession: N�mero de sesi�n
             pparam: Nombre par�metro
    return              : NUMBER   :  1 indicando se ha producido un error
                                      0 ha ido correctamente  */
   FUNCTION f_eliminarparamtrans(psession IN NUMBER, pparam IN VARCHAR2)
      RETURN NUMBER;

   /* Funci�n que Eval�a el resultado de la f�rmula.
    param in psession: C�digo �nico de sesi�n
             pclave: Clave f�rmula.
             pdebug: Modo de debug
    param out:  pformula: C�digo de la f�rmula
    return              : NUMBER   :  Valor devuelto por la f�rmula  */
   FUNCTION f_evaluar(
      psession IN NUMBER,
      pclave IN NUMBER,
      pdebug IN NUMBER,
      pformula OUT VARCHAR2)
      RETURN NUMBER;

------------------
--C�DIGO FUNCI�N--
------------------
/* Funci�n que recupera el c�digo de una f�rmula.
  param in pclave: Clave f�rmula
  return:  ref cursor  */
   FUNCTION f_get_source(pclave IN NUMBER)
      RETURN sys_refcursor;

-------------
--FUNCIONES--
-------------
/* Funci�n que recupera la lista de procesos
  param in:  pcidioma: N�mero de idioma
  return:  ref cursor  */
   FUNCTION f_get_lstfprocesos(pcidioma IN NUMBER)
      RETURN sys_refcursor;

   /* Funci�n que recupera la lista de refresco
     param in:  pcidioma: N�mero de idioma
     return:  ref cursor  */
   FUNCTION f_get_lstfrefrescar(pcidioma IN NUMBER)
      RETURN sys_refcursor;

   /* Funci�n que recupera la informaci�n de las funciones
     param in pclave: Clave f�rmula
              pformula: C�digo f�rmula
              ptproceso: Proceso que utiliza esta f�rmula
              prefresca: Indica que la f�rmula se tendr�a que refrescar
     param out:  mensajes: mensajes de error
     return:  ref cursor  */
   FUNCTION f_get_funciones(
      pclave IN NUMBER,
      pformula IN VARCHAR2,
      ptproceso IN VARCHAR2,
      prefresca IN NUMBER)
      RETURN sys_refcursor;

   /* Funci�n que grava la informaci�n de la funci�n
      param in pclave: Clave de la f�rmula
               pcformula: C�digo de la f�rmula
               ptproceso: Proceso que utiliza esta f�rmula
               prefrescar: Indica que la f�rmula se tendr�a que refrescar
      return              : NUMBER   :  X Error C�digo de literal
                                        0 ha ido correctamente  */
   FUNCTION f_grabarfuncion(
      pcclave IN NUMBER,
      pcformula IN VARCHAR2,
      ptproceso IN VARCHAR2,
      prefrescar IN NUMBER)
      RETURN NUMBER;

    /*************************************************************************
    FUNCTION f_tramo
         Funci� que retorna valor tram
         param in pnsesion  : Sesio
         param in pfecha  : Data
         param in pntramo  : Tram
         param in pbuscar : Valor a trobar

         return             : 0 -> Tot correcte
   *************************************************************************/
   FUNCTION f_tramo(pnsesion IN NUMBER, pfecha IN NUMBER, pntramo IN NUMBER, pbuscar IN NUMBER)
      RETURN NUMBER;
END pac_gfi;

/

  GRANT EXECUTE ON "AXIS"."PAC_GFI" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_GFI" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_GFI" TO "PROGRAMADORESCSI";
