--------------------------------------------------------
--  DDL for Package PAC_FIC_PROCESOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_FIC_PROCESOS" AUTHID CURRENT_USER IS
        /******************************************************************************
          NOMBRE:       PAC_FIC_PROCESOS
     PROP�SITO: Nuevo paquete de la capa Negocio que tendr� las funciones para la gesti�n de procesos del gestor de informes.
                Controlar todos posibles errores con PAC_IOBJ_MNSAJES.P_TRATARMENSAJE


     REVISIONES:
     Ver        Fecha        Autor             Descripci�n
     ---------  ----------  ---------------  ------------------------------------
     1.0        16/06/2009   JMG                1. Creaci�n del package.
   ******************************************************************************/

   /*
   Nueva funci�n de la capa l�gica que devolver� los productos parametrizados con prestaci�n rentas.


   Par�metros

   1. pcempres IN NUMBER
   2. psproces IN NUMBER
   3. ptgestor IN VARCHAR2
   4. ptformat IN VARCHAR2
   5. ptanio   IN VARCHAR2
   6. ptmes    IN VARCHAR2
   7. ptdiasem IN VARCHAR2
   8. pcusuari IN VARCHAR2
   9. pfproini IN DATE
   10. pidioma IN NUMBER
   11. psquery OUT VARCHAR2*/
   FUNCTION f_get_ficprocesos(
      pcempres IN NUMBER,
      psproces IN NUMBER,
      ptgestor IN VARCHAR2,
      ptformat IN VARCHAR2,
      ptanio IN VARCHAR2,
      ptmes IN VARCHAR2,
      ptdiasem IN VARCHAR2,
      pnerror IN NUMBER,
      pcusuari IN VARCHAR2,
      pfproini IN DATE,
      pcidioma IN NUMBER,   -- Idioma
      psquery OUT VARCHAR2)
      RETURN NUMBER;

      /*
   Nueva funci�n de la capa l�gica que devolver� numero de procesos activos.


   Par�metros

   1. pcempres IN NUMBER
   2. psproces IN NUMBER
   3. ptgestor IN VARCHAR2
   4. ptformat IN VARCHAR2
   5. ptanio   IN VARCHAR2
   6. ptmes    IN VARCHAR2
   7. ptdiasem IN VARCHAR2
   8. pnumpro  OUT NUMBER
  */
   FUNCTION f_get_numficprocesos(
      pcempres IN NUMBER,
      ptgestor IN VARCHAR2,
      ptformat IN VARCHAR2,
      ptanio IN VARCHAR2,
      ptmes IN VARCHAR2,
      ptdiasem IN VARCHAR2,
      pnumpro OUT NUMBER)
      RETURN NUMBER;

    /*   f_get_ficprocesosdet
     Nueva funci�n de la capa l�gica que devolver� los detalles de proceso.

     Par�metros

     1. psproces IN NUMBER
     2. mensajes OUT psquery*/
   FUNCTION f_get_ficprocesosdet(psproces IN NUMBER, psquery OUT VARCHAR2)
      RETURN NUMBER ;

   /*  f_alta_proceso
      Nueva funci�n de la capa l�gica que dar� de alta el proceso registrado.

      Par�metros

      1. pcusuari IN VARCHAR2
      2. pcempres IN NUMBER
      3. pcproces IN VARCHAR2
      4. ptproces IN VARCHAR2
      5. psproces OUT NUMBER
     */
   FUNCTION f_alta_procesoini(
      pcusuari IN VARCHAR2,   /* Usuario de la ejecuci�n */
      pcempres IN NUMBER,   /* Empresa asociada */
      ptgestor IN VARCHAR2,   /* Gestor asociado */
      ptformat IN VARCHAR2,   /* Formato asociado */
      ptanio IN VARCHAR2,   /* a�o asociado */
      ptmes IN VARCHAR2,   /* mes asociado */
      ptdiasem IN VARCHAR2,   /* dia semana asociado */
      pcproces IN VARCHAR2,   /* C�digo de proceso */
      ptproces IN VARCHAR2,   /* Texto del proceso */
      psproces IN OUT NUMBER)   /* N�mero de proceso */
      RETURN NUMBER;

/*  f_alta_proceso_detalle
   Nueva funci�n de la capa l�gica que dar� de alta el detalle del proceso registrado.

   Par�metros

   1. psproces IN VARCHAR2
   2. par_tprolin IN NUMBER
   3. pnpronum IN VARCHAR2
   4. pnprolin IN VARCHAR2
   5. pctiplin OUT NUMBER
  */
   FUNCTION f_alta_proceso_detalle(
      psproces IN NUMBER,
      par_tprolin IN VARCHAR2,
      ptpathfi IN VARCHAR2,
      pnprolin IN OUT NUMBER,
      pctiplin IN NUMBER DEFAULT NULL)
      RETURN NUMBER;

    /*  f_update_procesofin
   Nueva funci�n de la capa l�gica que dar� de alta el detalle del proceso registrado.

   Par�metros

   1. psproces IN VARCHAR2
   2. pnerror IN NUMBER
    */
   FUNCTION f_update_procesofin(psproces IN NUMBER, pnerror IN NUMBER)
      RETURN NUMBER;
END pac_fic_procesos;

/

  GRANT EXECUTE ON "AXIS"."PAC_FIC_PROCESOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_FIC_PROCESOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_FIC_PROCESOS" TO "PROGRAMADORESCSI";
