--------------------------------------------------------
--  DDL for Package PAC_MD_TRASPASOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_TRASPASOS" AS
   /******************************************************************************
     NOMBRE:       PAC_MD_traspasos
     PROP�SITO:  Package para gestionar los traspasos

     REVISIONES:
     Ver        Fecha        Autor             Descripci�n
     ---------  ----------  ---------------  ------------------------------------
     1.0        06/11/2009   ICV                1. Creaci�n del package. (bug 10124)
     2.0        29/06/2010   PFA                2. 15197: CEM210 - La data 'Fecha antig�edad' no es recupera correctament de la taula
     3.0        14/07/2010   SRA                3. 0015372: CEM210 - Errores en grabaci�n y gesti�n de traspasos de salida
     4.0        20/10/2010   SRA                4. 0016259: HABILITAR CAMPOS DE TEXTO ESP0EC�FICOS PARA TRASPASOS DERECHOS ECON�MICOS
   ******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;

      /*************************************************************************
      FUNCTION F_GET_TRASPASOS
      Funci�n que sirve para recuperar una colecci�n de traspasos.
           PSPRODUC: Tipo num�rico. Par�metro de entrada. C�digo de producto.
           PFILTROPROD: Tipo car�cter. Par�metro de entrada. Valor 'TRASPASO'.
           NPOLIZA: Tipo num�rico. Par�metro de entrada. Id. de p�liza.
           NCERTIF: Tipo num�rico. Par�metro de entrada. Id. de certificado
           PNNUMNIDE: Tipo car�cter. Par�metro de entrada. Documento.
           PBUSCAR: Tipo car�cter. Par�metro de entrada. Nombre de la persona.
           PTIPOPERSONA: Tipo num�rico. Par�metro de entrada. Indica si buscamos por Tomador o Asegurado
           PSNIP: Tipo car�cter. Par�metro de entrada. N�mero d'identificador.
           PCINOUT: Tipo num�rico. Par�metro de entrada. Traspasos de entrada o salida
           PCESTADO: Tipo num�rico. Par�metro de entrada. Indica el estado.
           PFSOLICI: Tipo fecha. Par�metro de entrada. Fecha solicitud.
           PCTIPTRAS: Tipo num�rico. Par�metro de entrada. Total o Parcial
           PCTIPTRASSOL: Tipo num�rico. Par�metro de entrada. Tipo importe Potser sobra o millor algun altre par�metre com PCTIPDER.
           MENSAJES: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.
   Retorna una colecci�n T_IAX_TRASPASOS.
       *************************************************************************/
   FUNCTION f_get_traspasos(
      psproduc IN NUMBER,   -- C�digo de producto
      cramo IN NUMBER,   -- C�digo de ramo
      pfiltroprod IN VARCHAR2,   -- Valor �TRASPASO�
      npoliza IN NUMBER,   -- Id  de p�liza
      ncertif IN NUMBER,   -- Id  de certificado
      pnnumnide IN VARCHAR2,   -- Documento
      pbuscar IN VARCHAR2,   -- Nombre de la persona
      ptipopersona IN NUMBER,   -- Indica si buscamos por Tomador o Asegurado
      psnip IN VARCHAR2,   -- N�mero d�identificador
      pcinout IN NUMBER,   -- Traspasos de entrada o salida
      pcestado IN NUMBER,   -- Indica el estado
      pfsolici IN DATE,   -- Fecha solicitud
      pctiptras IN NUMBER,   -- Total o Parcial
      pctiptrassol IN NUMBER,   -- Tipo importe
      pmodo IN VARCHAR2,   -- Mode amb que es entra a fer traspasos (Anulacio, revocaci�, solicitud...)
      mensajes IN OUT t_iax_mensajes   -- Mensaje de error
                                    )
      RETURN t_iax_traspasos;

   /*************************************************************************
   FUNCTION F_GET_TRASPASO
   Funci�n que sirve para recuperar una colecci�n de un traspaso.
        PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
        MENSAJES: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.
   Retorna una colecci�n T_IAX_TRASPASOS con UN SOLO TRAPASO
    *************************************************************************/
   FUNCTION f_get_traspaso(pstras IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN ob_iax_traspasos;

/*************************************************************************
       FUNCTION 4.3.1.6.1.3   F_SET_TRASPASO
Funci�n que sirve para insertar o actualizar datos del traspaso. S�lo se puede utilizar si el traspaso esta en estado Sin confirmar o Confirmado.
Par�metros

1. (obl) PSSEGURO:Tipo num�rico. Par�metro de entrada. Identificador de p�liza.
2. (obl) PSPRODUC: Tipo num�rico. Par�metro de entrada. Identificador de producto.
3. (obl) PCAGRPRO: Tipo num�rico. Par�metro de entrada. C�digo agrupaci�n de producto.
4. (obl) PFSOLICI:Tipo fecha. Par�metro de entrada. Fecha de solicitud.
5. (obl) PCINOUT: Tipo num�rico. Par�metro de entrada. Entrada / Salida
6. (obl) PCTIPTRAS: Tipo num�rico. Par�metro de entrada. Total / Parcial
7. (obl) PCEXTERN: Tipo num�rico. Par�metro de entrada. Interno / Externo
8. (obl) PCTIPDER: Tipo num�rico. Par�metro de entrada. Traspaso prestaciones (derechos econ�micos) o derechos consolidados.
9. (obl) PCESTADO: Tipo num�rico. Par�metro de entrada. Sin Confirmar / Confirmado / �..
10.   (obl) PCTIPTRASSOL: Tipo num�rico. Par�metro de entrada. Tipo de importe del traspaso solicitado.

(obligatorio al menos uno de los 3 siguientes)

11.   PIIMPTEMP: Tipo num�rico. Par�metro de entrada. Importe Solicitado
12.   NPORCEN: Tipo num�rico. Par�metro de entrada. Porcentaje solicitado.
13.   NPARPLA: Tipo num�rico. Par�metro de entrada. Participaciones solicitadas.

(obligatorio CCOPLA o bien CCOMPANI)

14.   CCOPLA: Tipo num�rico. Par�metro de entrada. C�digo de Plan del o al que se traspasa.
15.   TCCODPLA:Tipo Car�cter. Par�metro de entrada. Nombre del plan del o al que se traspasa.
16.   CCOMPANI: Tipo Num�rico. Par�metro de entrada. C�digo de compa��a del o al que se traspasa
17.   TCOMPANI: Tipo Car�cter. Par�metro de entrada. Nombre de compa��a del o al que se traspasa
18.   CTIPBAN:Tipo de cuenta. Par�metro de entrada. Tipo de cuenta del plan al que se traspasa
19.   CBANCAR: Tipo Car�cter. Par�metro de entrada. Cuenta del plan al que se traspasa
20.   TPOLEXT: Tipo Car�cter. Par�metro de entrada. C�digo identificativo de la p�liza (o plan) del o al que se traspasa,
21.   NCERTEXT: Tipo num�rico. Par�metro de entrada. N�m. de certificado cuando el traspaso es interno, entre planes o p�lizas de planes de pensiones.
22.   FANTIGI:Tipo fecha. Par�metro de entrada. Fecha de antig�edad de las aportaciones del plan origen.
23.   IIMPANU: Tipo num�rico. Par�metro de entrada. Aportaciones del a�o de traspaso en el plan origen.
24.   NPARRET: Tipo num�rico. Par�metro de entrada. Participaciones retenidas para contingencias posteriores.
25.   IIMPRET: Tipo num�rico. Par�metro de entrada. Importe retenido para contingencias posteriores a la primera contingencia.
26.   NPARPOS2006: Tipo num�rico. Par�metro de entrada. Participaciones posteriores al a�o 2006.
27.   PORCPOS2006: Tipo num�rico. Par�metro de entrada. Porcentaje de las participaciones posteriroes al a�o 2006.
28.   NPARANT2007: Tipo num�rico. Par�metro de entrada. Participaciones anteriores al a�o 2007.
29.   PORCANT2007: Tipo num�rico. Par�metro de entrada. Porcentaje de participaciones anteriores al a�o 2007.
30.   TMEMO:Tipo Car�cter. Par�metro de entrada. Comentarios / observaciones relacionadas con el traspaso.
31.   NREF:Tipo Car�cter. Par�metro de entrada. Referencia del traspaso enviado o que se env�a en la Norma234
32.   PCTIPCONT: tipo de contingencia acaecida
33.   PFCONTIG: fecha de contingencia acaecida
34.   PCTIPCAP: forma de tipo de cobro
35.   PIMPORTE: importe
36.   PFPROPAG: fecha de pr�ximo pago
37.   PSTRAS: Tipo num�rico. Par�metro de salida. C�digo de traspaso.
38.   MENSAJES: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.

Retorna un valor num�rico: 0 si ha grabado el traspaso y 1 si se ha producido alg�n error.
   *************************************************************************/
   FUNCTION f_set_traspaso(
      psseguro IN NUMBER,
      psproduc IN NUMBER,
      pcagrpro IN NUMBER,
      pfsolici IN DATE,
      pcinout IN NUMBER,
      pctiptras IN NUMBER,
      pcextern IN NUMBER,
      pctipder IN NUMBER,
      pcestado IN NUMBER,
      pctiptrassol IN NUMBER,
      piimptemp IN NUMBER,
      nporcen IN NUMBER,
      nparpla IN NUMBER,
      ccodpla IN NUMBER,
      tccodpla IN VARCHAR2,
      ccompani IN NUMBER,
      tcompani IN VARCHAR2,
      ctipban IN NUMBER,
      cbancar IN VARCHAR2,
      tpolext IN VARCHAR2,
      ncertext IN NUMBER,
      fantigi IN DATE,
      iimpanu IN NUMBER,
      nparret IN NUMBER,
      iimpret IN NUMBER,
      nparpos2006 IN NUMBER,
      porcpos2006 IN NUMBER,
      nparant2007 IN NUMBER,
      porcant2007 IN NUMBER,
      tmemo IN VARCHAR2,
      nref IN VARCHAR2,
      cmotivo IN NUMBER,
      fefecto IN DATE,
      fvalor IN DATE,
-- Ini Bug 16259 - SRA - 20/10/2010: nuevos campos en la pantalla axisctr093
      pctipcont IN NUMBER,
      pfcontig IN DATE,
      pctipcap IN NUMBER,
      pimporte IN NUMBER,
      pfpropag IN DATE,
-- Fin Bug 16259 - SRA - 20/10/2010
      pstras IN OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

      /*************************************************************************
      FUNCTION F_DEL_TRASPASO
       Funci�n que sirve para borrar los datos del traspaso. S�lo se puede utilizar
       si el traspaso esta en estado Sin confirmar. Y s�lo se permite a un perfil de seguridad

       1.   PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
       2.   MENSAJES: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.

   Retorna un valor num�rico: 0 si ha borrado el traspaso y 1 si se ha producido alg�n error.
       *************************************************************************/
   FUNCTION f_del_traspaso(pstras IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

      /*************************************************************************
      FUNCTION F_CONFIRMAR_TRASPASO
          Funci�n que sirve para confirmar traspaso. S�lo se puede utilizar si el traspaso est� en estado Sin confirmar.

           1.  PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
           2.  MENSAJES: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.

   Retorna un valor num�rico: 0 si ha confirmado el traspaso y 1 si se ha producido alg�n error.
       *************************************************************************/
   FUNCTION f_confirmar_traspaso(
      pstras IN NUMBER,
      pinout IN NUMBER,
      pextern IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
   FUNCTION F_DESCONFIRMAR_TRASPASO
    Funci�n que sirve para confirmar traspaso. S�lo se puede utilizar si el traspaso est� en estado Confirmado.

        1.  PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
        2.  MENSAJES: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.

    Retorna un valor num�rico: 0 si ha desconfirmado el traspaso y 1 si se ha producido alg�n error
    *************************************************************************/
   FUNCTION f_desconfirmar_traspaso(pstras IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

      /*************************************************************************
      FUNCTION F_DEMORAR_TRASPASO
       Funci�n que sirve para demorar un traspaso. S�lo se puede utilizar si el traspaso est� en estado Sin confirmar.

           1.  PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
           2.  MENSAJES: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.

   Retorna un valor num�rico: 0 si ha demorado el traspaso y 1 si se ha producido alg�n error.
       *************************************************************************/
   FUNCTION f_demorar_traspaso(
      pstras IN NUMBER,
      pinout IN NUMBER,
      pextern IN NUMBER,
      cmotivo IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
   FUNCTION F_ENVIAR_TRASPASO
       Funci�n que sirve para enviar un traspaso con la norma 234.

         1. PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.

    Retorna un valor num�rico: 0 si ha grabado el traspaso y un c�digo identificativo de error si se ha producido alg�n problema.
    *************************************************************************/
   FUNCTION f_enviar_traspaso(pstras IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

      /*************************************************************************
      FUNCTION F_RECHAZAR_TRASPASO
       Funci�n que sirve para rechazar un traspaso. S�lo se puede utilizar si el traspaso est� en estado Sin confirmar, Confirmado o en Demora.

       1.   PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
       2.   MENSAJES: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.

   Retorna un valor num�rico: 0 si ha rechazado el traspaso y 1 si se ha producido alg�n error.
       *************************************************************************/
   FUNCTION f_rechazar_traspaso(
      pstras IN NUMBER,
      pinout IN NUMBER,
      pextern IN NUMBER,
      cmotivo IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
   FUNCTION F_ANULAR_TRASPASO
    Funci�n que sirve para anular un traspaso. S�lo se puede utilizar si el traspaso est� en estado Sin confirmar, Confirmado o en Demora

    1.   PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
    2.   MENSAJES: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.

    Retorna un valor num�rico: 0 si ha borrado el traspaso y 1 si se ha producido alg�n error

    *************************************************************************/
   FUNCTION f_anular_traspaso(
      pstras IN NUMBER,
      cmotivo IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

      /*************************************************************************
      FUNCTION F_INFORMAR_TRASPASO
       Funci�n que sirve para informar los datos fiscales (aportaciones del a�o, porcentaje aportaciones 2007, fecha de antig�edad �). S�lo se puede utilizar si el traspaso est� en estado 3-Pendientes de informar.

       1.  PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
       2.  FANTIGI: Tipo fecha. Par�metro de entrada. Fecha de antig�edad.
       3.  IIMPANU: Tipo num�rico. Par�metro de entrada. Aportaciones del a�o de traspaso en el plan origen.
       4.  NPARRET: Tipo num�rico. Par�metro de entrada. Participaciones retenidas para contingencias posteriores.
       5.  TMEMO:   Tipo varchar. Parametro de entrada. Observaciones.
       6.  IIMPRET: Tipo num�rico. Par�metro de entrada. Importe retenido para contingencias posteriores a la primera contingencia.
       7.  NPARPOS2006: Tipo num�rico. Par�metro de entrada. Participaciones posteriores al a�o 2006.
       8.  PORCPOS2006: Tipo num�rico. Par�metro de entrada. Porcentaje de las participaciones posteriroes al a�o 2006.
       9.  NPARANT2007: Tipo num�rico. Par�metro de entrada. Participaciones anteriores al a�o 2007.
      10.  PORCANT2007: Tipo num�rico. Par�metro de entrada. Porcentaje de participaciones anteriores al a�o 2007.
      11.  MENSAJES: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.

   Retorna un valor num�rico: 0 si ha informado el traspaso y 1 si se ha producido alg�n error.
       *************************************************************************/
   FUNCTION f_informar_traspaso(
      pstras IN NUMBER,
      fantigi IN DATE,
      iimpanu IN NUMBER,
      nparret IN NUMBER,
      iimpret IN NUMBER,
      tmemo IN VARCHAR2,   -- BUG 15197 - PFA - Afegir camp observacions
      nparpos2006 IN NUMBER,
      porcpos2006 IN NUMBER,
      nparant2007 IN NUMBER,
      porcant2007 IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

         /*************************************************************************
         FUNCTION F_EJECUTAR_TRASPASO
       Funci�n que sirve para ejecutar un traspaso. S�lo se puede utilizar si el traspaso est� en estado Confirmado.

       1.   PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
       2.   PSSEGURO: Tipo num�rico. Par�metro de entrada. C�digo de p�liza.
       3.   PNRIESGO: Tipo num�rico. Par�metro de entrada. N�mero del riesgo.
       4.   PCAGRPRO: Tipo num�rico. Par�metro de entrada. C�digo agrupaci�n de producto
       5.   PCINOUT: Tipo num�rico. Par�metro de entrada. Entrada / Salida
       6.   PCTIPTRAS: Tipo num�rico. Par�metro de entrada. Total / Parcial
       7.   PCEXTERN: Tipo num�rico. Par�metro de entrada. Interno / Externo
       8.   PCTIPDER: Tipo num�rico. Par�metro de entrada. Traspaso de derechos econ�micos o consolidados.
       9.   PCTIPTRASSOL: Tipo num�rico. Par�metro de entrada. Tipo de traspaso solictado.
       10.  PIIMPTEMP: Tipo num�rico. Par�metro de entrada. Importe Solicitado
       11.  NPORCEN: Tipo num�rico. Par�metro de entrada. Porcentaje solicitado.
       12.  NPARPLA: Tipo num�rico. Par�metro de entrada. Participaciones solicitadas.
       13.  CCOPLA: Tipo num�rico. Par�metro de entrada. C�digo de Plan del o al que se traspasa.
       14.  CCOMPANI: Tipo Num�rico. Par�metro de entrada. C�digo de compa��a del o al que se traspasa
       15.  CTIPBAN:Tipo de cuenta. Par�metro de entrada. Tipo de cuenta del plan al que se traspasa
       16.  CBANCAR: Tipo Car�cter. Par�metro de entrada. Cuenta del plan al que se traspasa
       17.  TPOLEXT: Tipo Car�cter. Par�metro de entrada. C�digo identificativo de la p�liza (o plan) del o al que se traspasa,
       18.  NCERTEXT: Tipo num�rico. Par�metro de entrada. N�m. de certificado cuando el traspaso es interno, entre planes o p�lizas de planes de pensiones.
       19.  PFEFECTO: Tipo fecha. Par�metro de entrada. Fecha de efecto del traspaso.
       20.  PFVALMOV: Tipo fecha. Par�metro de etnrada. Fecha de valor del traspaso.
       21.  MENSAJES: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.

   Retorna un valor num�rico: 0 si ha ejecutado el traspaso y 1 si se ha producido alg�n error.
          *************************************************************************/
   FUNCTION f_ejecutar_traspaso(
      pstras IN NUMBER,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pcagrpro IN NUMBER,
      pcinout IN NUMBER,
      pctiptras IN NUMBER,
      pcextern IN NUMBER,
      pctipder IN NUMBER,
      pctiptrassol IN NUMBER,
      piimptemp IN NUMBER,
      nporcen IN NUMBER,
      nparpla IN NUMBER,
      ccodpla IN NUMBER,
      ccompani IN NUMBER,
      ctipban IN NUMBER,
      cbancar IN VARCHAR2,
      tpolext IN VARCHAR2,
      ncertext IN NUMBER,
      pfefecto IN DATE,
      pfvalmov IN DATE,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
   FUNCTION F_GET_COMPA�IA
   Funci�n que sirve para recuperar un nombre de compania a traves de DGS
        PCCOMPANI: Tipo varchar2. Par�metro de entrada. C�digo de DGS compa��a
        PTCOMPANI: Tipo varchar2. Par�metro de salida. Nombre de la compa��a
        MENSAJES: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.
   Retorna un NUMBER 0 OK, 1 KO
    *************************************************************************/
   FUNCTION f_get_tcompani(
      pccompani_dgs IN VARCHAR2,
      pccompani IN OUT VARCHAR2,
      ptcompani IN OUT VARCHAR2,
      pctipban IN OUT NUMBER,
      pcbancar IN OUT VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
   FUNCTION f_get_ccodpla
   Funci�n que sirve para recuperar el codigo del plan a traves del codigo DGS
        PCCODPLA_DGS: Tipo varchar2. Par�metro de salida. C�digo de DGS plan
        PCCODPLA: Tipo num�rico. Par�metro de entrada. C�digo de compa��a
        MENSAJES: Tipo t_iax_mensajes. Par�metro de Salida. Mensaje de error.
   Retorna un NUMBER 0 OK, 1 KO
    *************************************************************************/
   FUNCTION f_get_ccodpla(
      pccodpla_dgs IN VARCHAR2,
      pccodpla IN OUT NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

/* BUG 15372 - 14/07/2010 - SRA - se crea la nueva transacci�n f_get_traspasos_pol para que informe el bloque Traspasos en axisctr097 */
   FUNCTION f_get_traspasos_pol(
      psseguro IN seguros.sseguro%TYPE,
      pmodo IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN t_iax_traspasos;
END pac_md_traspasos;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_TRASPASOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_TRASPASOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_TRASPASOS" TO "PROGRAMADORESCSI";
