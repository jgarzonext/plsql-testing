--------------------------------------------------------
--  DDL for Package PAC_DOCREQUERIDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_DOCREQUERIDA" AS
   /******************************************************************************
      NOMBRE:       PAC_DOCREQUERIDA
      PROP�SITO: Funciones relacionadas con la documentaci�n requerida

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  --------  ------------------------------------
      1.0        11/05/2011   JMP      1. Creaci�n del package.
      2.0        14/10/2013   JSV      0027923: LCOL_F3BTEC-MTF3B - LCOL_TEC23 - Definici?n de condiciones en Certificado 0
      3.0        04/11/2013   RCL      3. 0028263: LCOL899-Proceso Emisi?n Vida Grupo - Desarrollo modificaciones de iAxis para BPM
   ******************************************************************************/
   /*************************************************************************
         F_GET_DIRECTORIO
      Obtiene el directorio donde se subir�n los ficheros.
      param in pparam                : c�digo de par�metro
      param out ppath                : directorio
      return                         : 0 todo correcto
                                       1 ha habido un error
   *************************************************************************/
   FUNCTION f_get_directorio(pparam IN VARCHAR2, ppath OUT VARCHAR2)
      RETURN NUMBER;

   /*************************************************************************
         F_GRABARDOCREQUERIDA
      Inserta un registro en la tabla ESTDOCREQUERIDA, ESTDOCREQUERIDA_RIESGO o
      ESTDOCREQUERIDA_INQAVAL, dependiendo de la clase de documento que estamos
      insertando.
      param in pseqdocu                : n�mero secuencial de documento
      param in psproduc                : c�digo de producto
      param in psseguro                : n�mero secuencial de seguro
      param in pcactivi                : c�digo de actividad
      param in pnmovimi                : n�mero de movimiento
      param in pnriesgo                : n�mero de riesgo
      param in pninqaval               : n�mero de inquilino/avalista
      param in pcdocume                : c�digo de documento
      param in pctipdoc                : tipo de documento
      param in pcclase                 : clase de documento
      param in pnorden                 : n�mero de orden documento
      param in ptdescrip               : descripci�n del documento
      param in ptfilename              : nombre del fichero
      param in padjuntado              : indicador de fichero adjuntado
      param in pciddocgedox            : numero de documento en GEDOX
      return                           : 0 todo correcto
                                         1 ha habido un error
   *************************************************************************/
   FUNCTION f_grabardocrequerida(
      pseqdocu IN NUMBER,
      psproduc IN NUMBER,
      psseguro IN NUMBER,
      pcactivi IN NUMBER,
      pnmovimi IN NUMBER,
      pnriesgo IN NUMBER,
      pninqaval IN NUMBER,
      pcdocume IN NUMBER,
      pctipdoc IN NUMBER,
      pcclase IN NUMBER,
      pnorden IN NUMBER,
      ptdescrip IN VARCHAR2,
      ptfilename IN VARCHAR2,
      padjuntado IN NUMBER,
      psperson IN NUMBER,
      pctipben IN NUMBER,
      pciddocgedox IN NUMBER DEFAULT NULL)
      RETURN NUMBER;

   -- Bug: 27923/155724 - JSV - 14/10/2013
   FUNCTION f_docreq_col(
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcdocume IN NUMBER,
      pctipdoc IN OUT NUMBER)
      RETURN NUMBER;

   FUNCTION f_get_docurequerida(
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN t_iax_docrequerida;

   FUNCTION f_grabardocrequeridapol(
      pseqdocu IN NUMBER,
      psproduc IN NUMBER,
      psseguro IN NUMBER,
      pcactivi IN NUMBER,
      pnmovimi IN NUMBER,
      pnriesgo IN NUMBER,
      pninqaval IN NUMBER,
      pcdocume IN NUMBER,
      pctipdoc IN NUMBER,
      pcclase IN NUMBER,
      pnorden IN NUMBER,
      ptdescrip IN VARCHAR2,
      ptfilename IN VARCHAR2,
      padjuntado IN NUMBER,
      pcrecibido IN NUMBER,
      pciddocgedox IN NUMBER DEFAULT NULL,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_docrequerida;

/

  GRANT EXECUTE ON "AXIS"."PAC_DOCREQUERIDA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_DOCREQUERIDA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_DOCREQUERIDA" TO "PROGRAMADORESCSI";
