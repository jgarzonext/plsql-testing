--------------------------------------------------------
--  DDL for Package PAC_CARGA_SPL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_CARGA_SPL" AUTHID CURRENT_USER AS
      /*******************************************************************************
      FUNCION f_set_carga_archivo_spl
      Descripcion:guardar los datos en la tabla INT_CARGA_ARCHIVO_SPL.
      Par�metros:
         cdarchi: C�digo del archivo - Obligatorio
         carcest: Estructura del archivo - Obligatorio
         ctiparc: C�digo para Standing Order = 1; para cheques = 2 - Obligatorio
         sperson: Secuencia �nica de identificaci�n de una persona - Obligatorio

      Retorna un valor num�rico:
   */
   FUNCTION f_set_carga_archivo_spl(
      pcdarchi IN VARCHAR2,
      pcarcest IN NUMBER,
      pctiparc IN NUMBER,
      pcsepara IN VARCHAR2,
      pdsproces IN NUMBER)
      RETURN NUMBER;

      /*******************************************************************************
        FUNCION f_set_campo_spl
        Descripcion:define los campos que contendr�n los archivos que se cargan en iAxis
        Par�metros:
           cdarchi:   C�digo del archivo - Obligatorio
           NORDEN:    Secuencia de orden de los campos
           CCAMPO:    Nombre del campo - Obligatorio
           CTIPCAM:   Tipo de campo ( HEADER 1, CONTENT 2, FOOTER 3) - Obligatorio
           NPOSICI:   Posici�n d�nde se encuentra el campo
           NLONGITUD: Longitud del campo
        Retorna un valor num�rico:
   */
   FUNCTION f_set_campo_spl(
      pcdarchi IN VARCHAR2,
      pnorden IN NUMBER,
      pccampo IN VARCHAR2,
      pctipcam IN VARCHAR2,
      pnordennew IN NUMBER,
      pccamponew IN VARCHAR2,
      pctipcamnew IN VARCHAR2,
      pnposici IN NUMBER,
      pnlongitud IN NUMBER,
      pntipo IN NUMBER,
      pndecimal IN NUMBER,   --RACS
      pcmask IN VARCHAR2,   --RACS
      pcmodo IN VARCHAR2,
      pcedit IN NUMBER)
      RETURN NUMBER;

    /*******************************************************************************
      FUNCION f_set_carga_valida_spl
      Descripcion:las validaciones que se realizan despu�s del volcado del archivo
      Par�metros:
         cdarchi:   C�digo del archivo - Obligatorio
         ccampo1:   Campo 1 (tendr� que ser del tipo header o footer)
         ctipcam1:   Tipo de campo ( HEADER 1 o FOOTER 3)
         ccampo2:   Campo 2(tendr� que ser del tipo content)
         ctipcam2:  Tipo de campo ( CONTENT 2)
         coperador: Operador (COUNT 1, SUM 2)
      Retorna un valor num�rico:
   */
   FUNCTION f_set_carga_valida_spl(
      pcdarchi IN VARCHAR2,
      pccampo1 IN VARCHAR2,
      pctipcam1 IN NUMBER,
      pccampo2 IN VARCHAR2,
      pctipcam2 IN NUMBER,
      pcoperador IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_get_campo_spl(cdarchiv IN VARCHAR2)
      RETURN sys_refcursor;

   FUNCTION f_get_valida_spl(cdarchiv IN VARCHAR2)
      RETURN sys_refcursor;

     /*******************************************************************************
      FUNCION f_del_campo_spl
      Descripcion: Encargada de borrar los registros de la tabla int_carga_campo_spl.
      Par�metros:
         cdarchi:   C�digo del archivo - Obligatorio
         norden:    Secuencia de orden de los campos
         ccampo:    Nombre del campo - Obligatorio
         ctipcam:   Tipo de campo ( HEADER 1, CONTENT 2, FOOTER 3) - Obligatorio
         nposici:   Posici�n d�nde se encuentra el campo
         nlongitud: Longitud del campo
       sperson:   Secuencia �nica de identificaci�n de una persona - Obligatorio
      Retorna un valor num�rico:
      .
   */
   FUNCTION f_get_cabecera_spl(cdarchiv IN VARCHAR2)
      RETURN sys_refcursor;

   FUNCTION f_del_campo_spl(
      pcdarchi IN int_carga_campo_spl.cdarchi%TYPE,
      pnorden IN int_carga_campo_spl.norden%TYPE,
      pccampo IN int_carga_campo_spl.ccampo%TYPE,
      pctipcam IN int_carga_campo_spl.ctipcam%TYPE)
      RETURN NUMBER;

    /*******************************************************************************
      FUNCION f_del_valida_spl
      Descripcion: Encargada de borrar un registro de la tabla int_carga_valida_spl.
      Par�metros:
         cdarchi:   C�digo del archivo - Obligatorio
         ccampo1:   Campo 1 (tendr� que ser del tipo header o footer)
        ctipcam1:  Tipo de campo ( HEADER 1 o FOOTER 3)
       ccampo2:   Campo 2(tendr� que ser del tipo content)
       ctipcam2:  Tipo de campo ( CONTENT 2)
      Retorna un valor num�rico:
      .
   */
   FUNCTION f_del_valida_spl(pcdarchi IN VARCHAR2)
      RETURN NUMBER;

   FUNCTION f_get_int_campo_spl(
      pcdarchi IN int_carga_campo_spl.cdarchi%TYPE,
      pnorden IN int_carga_campo_spl.norden%TYPE,
      pccampo IN int_carga_campo_spl.ccampo%TYPE,
      pctipcam IN int_carga_campo_spl.ctipcam%TYPE,
      obccampo OUT ob_iax_cargacampo_spl,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_carga_spl;

/

  GRANT EXECUTE ON "AXIS"."PAC_CARGA_SPL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_CARGA_SPL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_CARGA_SPL" TO "PROGRAMADORESCSI";
