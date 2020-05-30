--------------------------------------------------------
--  DDL for Package PAC_GESTIONBPM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_GESTIONBPM" IS
/******************************************************************************
   NOMBRE:       PAC_GESTIONBPM
   PROP�SITO: Funciones para integracion de BPM con AXIS

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        27/11/2012   FPG              1. Creaci�n del package.
   2.0        23/09/2013   JDS              2. 0028263: LCOL899-Proceso Emisi?n Vida Grupo - Desarrollo modificaciones de iAxis para BPM
   3.0        30/09/2013   JDS              3. Desarrollo PL interfases 2-Notificar movimiento car�tula y 9-Notificar riesgos asegurables
   4.0        26/11/2013   FPG              4. 0028129: LCOL899-Desarrollo interfases BPM-iAXIS .
                                               a. En la interfase 'Notificar riesgos asegurables' el BPM enviar�
                                                 el c�digo de suplemento de iAxis en vez de INCLUSION / MODIFICACION / EXCLUSION
                                               b. Modificar el tipo del campo idgestordocbpm a VARCHAR2

******************************************************************************/

   /*********************************************************************************************************************
    * Funcion f_set_mov_colectivo
    * Esta funci�n se utiliza para grabar el caso en la tabla CASOS_BPM con los datos que llegan en la interfase 2 - Notificar movimiento car�tula
    *
    * Parametros:    pcempres_in NUMBER,
                     pidcasobpm_in NUMBER,
                     pcramo_in NUMBER,
                     psproduc_in NUMBER,
                     pnpoliza_in NUMBER,
                     pcmotmov_in NUMBER,
                     pcusuasignado_in VARCHAR2,
                     pctipide_in NUMBER,
                     pnnumide_in VARCHAR2,
                     pnombre_in VARCHAR2

     Par�metros de salida:
                  pnnumcaso_out NUMBER

    * Return: 0 si no hay error o el c�digo de error
    **********************************************************************************************************************/
   FUNCTION f_set_mov_colectivo(
      pcempres_in NUMBER,
      pidcasobpm_in NUMBER,
      pcramo_in NUMBER,
      psproduc_in NUMBER,
      pnpoliza_in NUMBER,
      pcmotmov_in NUMBER,
      pcusuasignado_in VARCHAR2,
      pctipide_in NUMBER,
      pnnumide_in VARCHAR2,
      pnombre_in VARCHAR2,
      pnnumcaso_out OUT NUMBER)
      RETURN NUMBER;

   /*********************************************************************************************************************
    * Funcion f_set_docreq
    * Esta funci�n se utiliza para grabar los datos de los documentos requeridos que llegan en la interfase
    * "2 - Notificar movimiento car�tula" o en la interfase "9 - Notificar riesgos asegurables".
    *
    Bug 28129 - FPG - 26-11-2013 Modificar el tipo del campo idgestordocbpm de NUMBER a VARCHAR2
    * Parametros:    pcempres_in NUMBER
                   pnnumcaso_in NUMBER
                    pcdocume_in NUMBER
                    --pidgestordocbpm_in NUMBER
                    pidgestordocbpm_in VARCHAR2

    * Return: 0 si no hay error o el c�digo de error
    **********************************************************************************************************************/
   FUNCTION f_set_docreq(
      pcempres_in IN NUMBER,
      pnnumcaso_in IN NUMBER,
      pcdocume_in IN NUMBER,
      pidgestordocbpm_in IN VARCHAR2)
      RETURN NUMBER;

   /*********************************************************************************************************************
    * Funcion f_valida_caso_BPM
    * Esta funci�n valida si el n� de caso BPM recibido existe en iAxis en la tabla CASOS_BPM y si est� en un estado que permite modificaciones
    *
    * Parametros:  pcempres_in NUMBER: Empresa
                   pncaso_bpm_in NUMBER: n�mero del caso en el BPM
                   pnsolici_bpm_in NUMBER: n�mero de la solicitud en el BPM
                   pnnumcaso_in NUMBER: n�mero del caso interno de iAxis
                   pnpoliza_in NUMBER: n�mero de p�liza
                   psproduc_in NUMBER: c�digo del producto

      Par�metros de salida:
                   pncaso_bpm_out NUMBER: n�mero del caso en el BPM
                   pnsolici_bpm_out NUMBER: n�mero de la solicitud en el BPM
                   pnnumcaso_out NUMBER: n�mero del caso interno de iAxis

    * Return: 0 si no hay error o el c�digo de error
    **********************************************************************************************************************/
   FUNCTION f_valida_caso_bpm(
      pcempres_in NUMBER,
      pncaso_bpm_in NUMBER,
      pnsolici_bpm_in NUMBER,
      pnnumcaso_in NUMBER,
      pnpoliza_in NUMBER,
      psproduc_in NUMBER,
      pncaso_bpm_out OUT NUMBER,
      pnsolici_bpm_out OUT NUMBER,
      pnnumcaso_out OUT NUMBER)
      RETURN NUMBER;

   /*********************************************************************************************************************
    * Funcion f_set_riesgo_asegurables
    *
    * Esta funci�n se utiliza  cuando desde BPM se llama a iAxis con la interfase 9 - Notificar riesgos asegurables.
      Bug 28129 - FPG - 26-11-2013. En la interfase 'Notificar riesgos asegurables' el BPM enviar�
      el c�digo de suplemento de iAxis en vez de INCLUSION / MODIFICACION / EXCLUSION.
      Se cambia el par�metro pctipmov_bpm_in por pcmotmov_in.

        Par�metros de entrada:
           pcempres_in NUMBER
           pnnumcasop_in NUMBER
           pncaso_bpm_in NUMBER
           pnpoliza_in NUMBER
           psproduc_in NUMBER
           pnsolici_bpm_in NUMBER
         --  pctipmov_bpm_in NUMBER
           pcmotmov_in NUMBER
           pcaprobada_bpm_in NUMBER
           pcusuasignado_in VARCHAR2
           pctipide_in NUMBER
           pnnumide_in VARCHAR2

        Par�metros de salida:
           pnnumcaso_out NUMBER

    Retorno: 0 si resultado correcto, 1 si error
    **********************************************************************************************************************/
   FUNCTION f_set_riesgo_asegurable(
      pcempres_in NUMBER,
      pnnumcasop_in NUMBER,
      pncaso_bpm_in NUMBER,
      pnpoliza_in NUMBER,
      psproduc_in NUMBER,
      pnsolici_bpm_in NUMBER,
      pcmotmov_in NUMBER,
      pcaprobada_bpm_in NUMBER,
      pcusuasignado_in VARCHAR2,
      pctipide_in NUMBER,
      pnnumide_in VARCHAR2,
      pnnumcaso_out OUT NUMBER)
      RETURN NUMBER;

   /*********************************************************************************************************************
    * Funcion f_upd_casos_bpm_doc
    *
    * Esta funci�n se utiliza  cuando desde BPM se llama a iAxis con la interfase 13 - Notificar actualizaci�n documental o
        cuando desde iAxis se tiene que actualizar el estado de un documento
     Bug 28129 - FPG - 26-11-2013 Modificar el tipo del campo idgestordocbpm de NUMBER a VARCHAR2
    Par�metros de entrada:
       pcempres_in NUMBER - Empresa
       pnnumcaso_in NUMBER: n�mero del caso interno de iAxis
       --pidgestordocbpm_in NUMBER: Id del documento en el gestor documental del BPM
       pidgestordocbpm_in VARCHAR2: Id del documento en el gestor documental del BPM
       pcdocume_in NUMBER: C�digo de documento
       pcestadodoc_in NUMBER: Estado del documento VF 965
       piddoc_In NUMBER: Id del documento en Gedox

    Retorno: 0 si resultado correcto, c�digo del error en caso contrario

    **********************************************************************************************************************/
   FUNCTION f_upd_casos_bpm_doc(
      pcempres_in IN NUMBER,
      pnnumcaso_in IN NUMBER,
      pidgestordocbpm_in IN VARCHAR2,
      pcdocume_in IN NUMBER,
      pcestadodoc_in IN NUMBER,
      piddoc_in IN NUMBER)
      RETURN NUMBER;

   /*********************************************************************************************************************
    * Funcion f_reasignar_caso
    *
    * Esta funci�n se utiliza  cuando desde BPM se llama a iAxis con la interfase 16 - Reasignar caso.
        Par�metros de entrada:
         Pcempres_in NUMBER - Empresa
             Pnnumcaso_in NUMBER - n�mero del caso interno de iAxis
         Pcusuasginado_in VARCHAR2 - Usuario al que se asigna el caso

        Retorno: 0 si resultado correcto, c�digo del error en caso contrario

    **********************************************************************************************************************/
   FUNCTION f_reasignar_caso(
      pcempres_in NUMBER,
      pnnumcaso_in NUMBER,
      pcusuasginado_in VARCHAR2)
      RETURN NUMBER;

   /*********************************************************************************************************************
      * Funcion f_upd_mov_colectivo
      *
      * updatear la tabla CASOS_BPM

      Par�metros de entrada:
         pcempres_in  NUMBER - Empresa
         pnnumcaso_in NUMBER: n�mero del caso interno de iAxis
         psproduc_in  NUMBER: Id del producto
         pnpoliza_in NUMBER: num poliza
         pcmotmov_in NUMBER: motivo movimiento

      Retorno: 0 si resultado correcto, c�digo del error en caso contrario
    **********************************************************************************************************************/
   FUNCTION f_upd_mov_colectivo(
      pcempres_in NUMBER,
      pnnumcaso_in NUMBER,
      psproduc_in NUMBER,
      pnpoliza_in NUMBER,
      pcmotmov_in NUMBER)
      RETURN NUMBER;

   /*************************************************************************
      Valida los datos del caso bpm segun el parametro operacion (si es una anulaci�n, suplemento, rehabilitacion,..)
      param in pncaso_bpm: Numero de caso BPM
               pnsolici_bpm: Numero de solicitud BPM
               psproduc: C�digo del producto
               pnpoliza: N�mero de p�liza
               pncertif: NN�mero de certificado
               pcempres: cod empresa.
               poperacion : Tipo de operacion.
      return : 0 todo correcto
               <> 0 ha habido un error
   *************************************************************************/
   FUNCTION f_valida_datosbpm(
      pncaso_bpm IN NUMBER,
      pnsolici_bpm IN NUMBER,
      psproduc IN NUMBER,
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,
      pcempres IN NUMBER,
      poperacion IN VARCHAR2)
      RETURN NUMBER;

   /***************************************************************************************
    * Funcion f_get_tomcaso
    * Funcion que devuelve el nombre del tomador del cso BPM
    *
    * Parametros: pnnumcaso: Numero de caso
    *             pncaso_bpm: Numero de caso BPM
    *             pnsolici_bpm: Numero de solicitud BPM
    *             pcempres: C�digo de la empresa
    *             ptnomcom: Nombre completo del tomador
    *
    * Return: 0 OK, otro valor error.
    ****************************************************************************************/
   FUNCTION f_get_tomcaso(
      pnnumcaso IN NUMBER,
      pncaso_bpm IN NUMBER,
      pnsolici_bpm IN NUMBER,
      pcempres IN NUMBER,
      ptnomcom OUT VARCHAR2,
      pnnumcaso_out OUT NUMBER)
      RETURN NUMBER;

   /*************************************************************************
       Valida los datos del caso bpm para certificados
       param in pncaso_bpm: Numero de caso BPM
                pnsolici_bpm: Numero de solicitud BPM
                psproduc: C�digo del producto
                pnpoliza: N�mero de p�liza
       return : 0 todo correcto
                <> 0 ha habido un error

       Bug 28263/153355 - 07/10/2013 - AMC
    *************************************************************************/
   FUNCTION f_valida_datosbpmcertif(
      pcempres IN NUMBER,
      pncaso_bpm IN NUMBER,
      pnsolici_bpm IN NUMBER,
      psproduc IN NUMBER,
      pnpoliza IN NUMBER)
      RETURN NUMBER;

   /*************************************************************************
       grabar registro en la tabla CASOS_BPMSEG
       param in pcempres_in
                psseguro:     identificador del seguro
                pnmovimi:     n�mero de movimiento de seguro
                pncaso_bpm:   n�mero del caso en el BPM
                pnsolici_bpm: n�mero de la solicitud en el BPM
                pnnumcaso:    n�mero del caso interno de iAxis
       return : 0 todo correcto
                <> 0 ha habido un error
    *************************************************************************/
   FUNCTION f_set_caso_bpmseg(
      pcempres_in IN NUMBER,
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      pncaso_bpm IN NUMBER,
      pnsolici_bpm IN NUMBER,
      pnnumcaso IN NUMBER)
      RETURN NUMBER;

    /*************************************************************************
      Valida los datos del caso bpm para cargas
      param in pncaso_bpm: Numero de caso BPM
               pnnumcaso: Numero de caso
               pfichero: nombre del fichero

      return : 0 todo correcto
               <> 0 ha habido un error

      Bug 28263/155558 - 14/10/2013 - AMC
   *************************************************************************/
   FUNCTION f_valida_datosbpmcarga(
      pncaso_bpm IN NUMBER,
      pnnumcaso IN NUMBER,
      pfichero IN VARCHAR2,
      pusuario IN VARCHAR2)
      RETURN NUMBER;
END pac_gestionbpm;

/

  GRANT EXECUTE ON "AXIS"."PAC_GESTIONBPM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_GESTIONBPM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_GESTIONBPM" TO "PROGRAMADORESCSI";
