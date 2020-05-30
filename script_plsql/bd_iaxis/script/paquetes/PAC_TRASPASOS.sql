--------------------------------------------------------
--  DDL for Package PAC_TRASPASOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_TRASPASOS" AS
   /******************************************************************************
     NOMBRE:       PAC_traspasos
     PROP�SITO:  Package para gestionar los traspasos

     REVISIONES:
     Ver        Fecha        Autor             Descripci�n
     ---------  ----------  ---------------  ------------------------------------
     1.0        06/11/2009   ICV                1. Creaci�n del package. (bug 10124)
     2.0        29/06/2010   PFA                2. 15197: CEM210 - La data 'Fecha antig�edad' no es recupera correctament de la taula
     3.0        14/07/2010   SRA                2. 0015372: CEM210 - Errores en grabaci�n y gesti�n de traspasos de salida
     4.0        22/07/2010   SRA                4. 0015489: CEM - LListat de traspassos
     5.0        18/10/2010   SRA                5. 0016259: HABILITAR CAMPOS DE TEXTO ESPEC�FICOS PARA TRASPASOS DERECHOS ECON�MICOS
   ******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;

      /*************************************************************************
      FUNCTION F_GET_TRASPASOS
      Funci�n que sirve para recuperar una colecci�n de traspasos.
        1.    PSPRODUC: Tipo num�rico. Par�metro de entrada. C�digo de producto.
        2.    PFILTROPROD: Tipo car�cter. Par�metro de entrada. Valor 'TRASPASO'.
        3.    NPOLIZA: Tipo num�rico. Par�metro de entrada. Id. de p�liza.
        4.    NCERTIF: Tipo num�rico. Par�metro de entrada. Id. de certificado
        5.  PNNUMNIDE: Tipo car�cter. Par�metro de entrada. Documento.
        6.  PBUSCAR: Tipo car�cter. Par�metro de entrada. Nombre de la persona.
        7.  PTIPOPERSONA: Tipo num�rico. Par�metro de entrada. Indica si buscamos por Tomador o Asegurado
        8.  PSNIP: Tipo car�cter. Par�metro de entrada. N�mero d'identificador.
        9.  PCINOUT: Tipo num�rico. Par�metro de entrada. Traspasos de entrada o salida
        10. PCESTADO: Tipo num�rico. Par�metro de entrada. Indica el estado.
        11. PFSOLICI: Tipo fecha. Par�metro de entrada. Fecha solicitud.
        12. PCTIPTRAS: Tipo num�rico. Par�metro de entrada. Total o Parcial
        13. PCTIPTRASSOL: Tipo num�rico. Par�metro de entrada. Tipo importe Potser sobra o millor algun altre par�metre com PCTIPDER.
        14. PCERROR: Tipo num�rico. Par�metro de Salida. 0 si todo ha ido correctamente o un c�digo identificativo si ha habido alg�n error.
   Retorna una colecci�n SYS_REF_CURSOR
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
      pcerror OUT NUMBER)
      RETURN sys_refcursor;

   /*************************************************************************
   FUNCTION F_GET_TRASPASO
   Funci�n que sirve para recuperar los datos de un traspaso.
        1.  PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
        2.  NUM_ERR: Tipo num�rico. Par�metro de Salida. 0 si todo ha ido correcto y sino c�digo identificativo de error.

   Retorna una colecci�n T_IAX_TRASPASOS con UN SOLO TRAPASO
    *************************************************************************/
   FUNCTION f_get_traspaso(pstras IN NUMBER, num_err OUT NUMBER)
      RETURN sys_refcursor;

/*************************************************************************
       FUNCTION 4.3.1.6.1.3   F_SET_TRASPASO
Funci�n que sirve para insertar o actualizar datos del traspaso. S�lo se puede utilizar si el traspaso esta en estado Sin confirmar o Confirmado.
Par�metros

1. PSSEGURO:Tipo num�rico. Par�metro de entrada. Identificador de p�liza.
2. PSPRODUC: Tipo num�rico. Par�metro de entrada. Identificador de producto.
3. PCAGRPRO: Tipo num�rico. Par�metro de entrada. C�digo agrupaci�n de producto
4. PFSOLICI:Tipo fecha. Par�metro de entrada. Fecha de solicitud.
5. PCINOUT: Tipo num�rico. Par�metro de entrada. Entrada / Salida
6. PCTIPTRAS: Tipo num�rico. Par�metro de entrada. Total / Parcial
7. PCEXTERN: Tipo num�rico. Par�metro de entrada. Interno / Externo
8. PCTIPDER: Tipo num�rico. Par�metro de entrada. Traspasa derechos econ�micos o consolidados.
9. PCESTADO: Tipo num�rico. Par�metro de entrada. Sin Confirmar / Confirmado / �..
10.   PCTIPTRASSOL: Tipo num�rico. Par�metro de entrada. Tipo de traspaso solictado.
11.   PIIMPTEMP: Tipo num�rico. Par�metro de entrada. Importe Solicitado
12.   NPORCEN: Tipo num�rico. Par�metro de entrada. Porcentaje solicitado.
13.   NPARPLA: Tipo num�rico. Par�metro de entrada. Participaciones solicitadas.
14.   CCOPLA: Tipo num�rico. Par�metro de entrada. C�digo de Plan del o al que se traspasa.
15.   TCCODPLA:Tipo Car�cter. Par�metro de entrada. Nombre del plan del o al que se traspasa.
16.   CCOMPANI: Tipo Num�rico. Par�metro de entrada. C�digo de compa��a del o al que se traspasa
17.   TCOMPANI: Tipo Car�cter. Par�metro de entrada. Nombre de compa��a del o al que se traspasa
18.   CTIPBAN:Tipo de cuenta. Par�metro de entrada. Tipo de cuenta del plan al que se traspasa
19.   CBANCAR: Tipo Car�cter. Par�metro de entrada. Cuenta del plan al que se traspasa
20.   TPOLEXT: Tipo Car�cter. Par�metro de entrada. C�digo identificativo de la p�liza (o plan) del o al que se traspasa,
21.   NCERTEXT: Tipo num�rico. Par�metro de entrada. N�m. de certificado cuando el traspaso es interno, entre planes o p�lizas de planes de pensiones.
22.   CCODPLA: Tipo num�rico. Par�metro de entrada. C�digo del plan.
23.   TCODPLA: Tipo car�cter. Par�metro de entrada. Nombre del plan.
24.   FANTIGI:Tipo fecha. Par�metro de entrada. Fecha de antig�edad de las aportaciones del plan origen.
25.   IIMPANU: Tipo num�rico. Par�metro de entrada. Aportaciones del a�o de traspaso en el plan origen.
26.   NPARRET: Tipo num�rico. Par�metro de entrada. Participaciones retenidas para contingencias posteriores.
27.   IIMPRET: Tipo num�rico. Par�metro de entrada. Importe retenido para contingencias posteriores a la primera contingencia.
28.   NPARPOS2006: Tipo num�rico. Par�metro de entrada. Participaciones posteriores al a�o 2006.
29.   PORCPOS2006: Tipo num�rico. Par�metro de entrada. Porcentaje de las participaciones posteriroes al a�o 2006.
30.   NPARANT2007: Tipo num�rico. Par�metro de entrada. Participaciones anteriores al a�o 2007.
31.   PORCANT2007: Tipo num�rico. Par�metro de entrada. Porcentaje de participaciones anteriores al a�o 2007.
32.   TMEMO:Tipo Car�cter. Par�metro de entrada. Comentarios / observaciones relacionadas con el traspaso.
33.   NREF:Tipo Car�cter. Par�metro de entrada. Referencia del traspaso enviado o que se env�a en la Norma234
34.   PCTIPCONT: tipo de contingencia acaecida
35.   PFCONTIG: fecha de contingencia acaecida
36.   PCTIPCAP: forma de tipo de cobro
37.   PIMPORTE: importe
38.   PFPROPAG: fecha de pr�ximo pago
39.   PSTRAS: Tipo num�rico. Par�metro de entrada/salida. C�digo de traspaso.
Retorna un valor num�rico: 0 si ha grabado el traspaso y 1 si se ha producido alg�n error.
   *************************************************************************/
   FUNCTION f_set_traspaso(
      ppsseguro IN NUMBER,
      ppfsolici IN DATE,
      ppcinout IN NUMBER,
      ppctiptras IN NUMBER,
      ppcextern IN NUMBER,
      ppctipder IN NUMBER,
      ppcestado IN NUMBER,
      ppctiptrassol IN NUMBER,
      ppiimptemp IN NUMBER,
      nnporcen IN NUMBER,
      nnparpla IN NUMBER,
      cccodpla IN NUMBER,
      ttccodpla IN VARCHAR2,
      cccompani IN NUMBER,
      ttcompani IN VARCHAR2,
      cctipban IN NUMBER,
      ccbancar IN VARCHAR2,
      ttpolext IN VARCHAR2,
      nncertext IN NUMBER,
      ffantigi IN DATE,
      iiimpanu IN NUMBER,
      nnparret IN NUMBER,
      iiimpret IN NUMBER,   --es en realidad iimporte.
      nnparpos2006 IN NUMBER,
      pporcpos2006 IN NUMBER,
      nnparant2007 IN NUMBER,
      pporcant2007 IN NUMBER,
      ttmemo IN VARCHAR2,
      nnref IN VARCHAR2,
      ccmotivo IN NUMBER,
      ffefecto IN DATE,
      ffvalor IN DATE,
-- Ini Bug 16259 - SRA - 20/10/2010: nuevos campos en la pantalla axisctr093
      pctipcont IN NUMBER,
      pfcontig IN DATE,
      pctipcap IN NUMBER,
      pimporte IN NUMBER,
      pfpropag IN DATE,
-- Fin Bug 16259 - SRA - 20/10/2010
      ppstras IN OUT NUMBER)
      RETURN NUMBER;

      /*************************************************************************
      FUNCTION F_DEL_TRASPASO
       Funci�n que sirve para borrar los datos del traspaso. S�lo se puede utilizar
       si el traspaso esta en estado Sin confirmar. Y s�lo se permite a un perfil de seguridad

       1.   PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.

   Retorna un valor num�rico: 0 si ha borrado el traspaso y 1 si se ha producido alg�n error.
       *************************************************************************/
   FUNCTION f_del_traspaso(pstras IN NUMBER)
      RETURN NUMBER;

   /*************************************************************************
   FUNCTION F_ACTEST_TRASPASO
       Funci�n que sirve para actualizar el estado de un traspaso.

         1. PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
         2. PCESTADO: Tipo num�rico. Par�metro de entrada. C�digo de estado.

    Retorna un valor num�rico: 0 si ha grabado el traspaso y un c�digo identificativo de error si se ha producido alg�n problema.
    *************************************************************************/
   FUNCTION f_actest_traspaso(
      pstras IN NUMBER,
      pcestado IN NUMBER,
      pinout IN NUMBER,
      pextern IN NUMBER,
      cmotivo IN NUMBER)
      RETURN NUMBER;

   /*************************************************************************
   FUNCTION F_ENVIAR_TRASPASO
       Funci�n que sirve para enviar un traspaso con la norma 234.

         1. PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.

    Retorna un valor num�rico: 0 si ha grabado el traspaso y un c�digo identificativo de error si se ha producido alg�n problema.
    *************************************************************************/
   FUNCTION f_enviar_traspaso(pstras IN NUMBER)
      RETURN NUMBER;

      /*************************************************************************
      FUNCTION F_OUT_PARTIC
       Funci�n que realiza un traspaso de salida.
       Esta funci�n adapta y actualiza la funci�n PK_TRASPASOS.F_OUT_PARTIC.

        1.  PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
        2.  PCTIPTRAS: Tipo num�rico. Par�metro de entrada. Total / Parcial
        3.  PSSEGURO: Tipo num�rico. Par�metro de entrada. C�digo de p�liza.
        4.  PCAGRPRO: Tipo num�rico. Par�metro de entrada. C�digo agrupaci�n de producto
        5.  PFVALMOV: Tipo fecha. Par�metro de entrada. Fecha de valor del traspaso.
        6.  PFEFECTO: Tipo fecha. Par�metro de entrada. Fecha de efecto del traspaso.
        7.  PIMOVIMI: Tipo num�rico. Par�metro de entrada. Importe del traspaso en dinero
        8.  PPARTRAS: Tipo num�rico. Par�metro de entrada. Importe del traspaso en participaciones.
        9.  PNPORCEN: Tipo num�rico. Par�metro de entrada. Porcentaje a traspasar.
        10. PCTIPTRASSOL: Tipo num�rico. Par�metro de entrada. Indicador del tipo de importe a traspasar (importe, porcentaje...)
        11.  PCEXTERN: Tipo num�rico. Par�metro de entrada. Interno / Externo
        12. PSSEGURO_DS: Tipo num�rico. Par�metro de entrada. P�liza destino si es traspaso interno.
        13. PAUTOMATIC: Tipo num�rico. Par�metro de entrada. Indica si el traspaso inverso se ejecuta o no (evitar bucles infinitos en traspasos internos).
        14. PPORDCONS: Tipo num�rico. Par�metro de entrada. Porcentaje.
        15. PPORDECON: Tipo num�rico. Par�metro de entrada. Porcentaje.
        16. PSPROCES: Tipo num�rico. Par�metro de entrada. Identificador de proceso.

   Retorna un valor num�rico: 0 si ha ejecutado el traspaso y un c�digo identificativo de error si se ha producido alg�n problema.
       *************************************************************************/
   FUNCTION f_out_partic(
      pstras IN NUMBER,
      pctiptras IN NUMBER,
      psseguro IN NUMBER,
      pcagrpro IN NUMBER,
      pfvalmov IN DATE,
      pfefecto IN DATE,
      pimovimi IN OUT NUMBER,
      ppartras IN OUT NUMBER,
      pnporcen IN OUT NUMBER,
      pctiptrassol IN NUMBER,
      pcextern IN NUMBER,
      psseguro_ds IN NUMBER,
      pautomatic IN NUMBER,
      ppordcons IN NUMBER,
      ppordecon IN NUMBER,
      psproces IN NUMBER,
      ptipder IN NUMBER)
      RETURN NUMBER;

   /*************************************************************************
   FUNCTION F_IN_PARTIC
    Funci�n que realiza un traspaso de salida.

        1.  PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
        2.  PCTIPTRAS: Tipo num�rico. Par�metro de entrada. Total / Parcial
        3.  PSSEGURO: Tipo num�rico. Par�metro de entrada. C�digo de p�liza.
        4.  PCAGRPRO: Tipo num�rico. Par�metro de entrada. C�digo agrupaci�n de producto
        5.  PFVALMOV: Tipo fecha. Par�metro de entrada. Fecha de valor del traspaso.
        6.  PFEFECTO: Tipo fecha. Par�metro de entrada. Fecha de efecto del traspaso.
        7.  PIMOVIMI: Tipo num�rico. Par�metro de entrada. Importe del traspaso en dinero
        8.  PPARTRAS: Tipo num�rico. Par�metro de entrada. Importe del traspaso en participaciones.
        9.  PNPORCEN: Tipo num�rico. Par�metro de entrada. Porcentaje a traspasar.
        10. PCTIPTRASSOL: Tipo num�rico. Par�metro de entrada. Indicador del tipo de importe a traspasar (importe, porcentaje...)
        11. PCEXTERN: Tipo num�rico. Par�metro de entrada. Interno / Externo
        12. PSSEGURO_OR: Tipo num�rico. Par�metro de entrada. P�liza destino si es traspaso interno.
        13. PAUTOMATIC: Tipo num�rico. Par�metro de entrada. Indica si el traspaso inverso se ejecuta o no (evitar bucles infinitos en traspasos internos).
        14. PPORDCONS: Tipo num�rico. Par�metro de entrada. Porcentaje.
        15. PPORDECON: Tipo num�rico. Par�metro de entrada. Porcentaje.
        16. PSPROCES: Tipo num�rico. Par�metro de entrada. Identificador de proceso.


    Retorna un valor num�rico: 0 si ha ejecutado el traspaso y un c�digo identificativo de error si se ha producido alg�n problema.
    *************************************************************************/
   FUNCTION f_in_partic(
      pstras IN NUMBER,
      pctiptras IN NUMBER,
      psseguro IN NUMBER,
      pcagrpro IN NUMBER,
      pfvalmov IN DATE,
      pfefecto IN DATE,
      pimovimi IN OUT NUMBER,
      ppartras IN OUT NUMBER,
      pnporcen IN OUT NUMBER,
      pctiptrassol IN NUMBER,
      pcextern IN NUMBER,
      psseguro_or IN NUMBER,
      pautomatic IN NUMBER,
      ppordcons IN NUMBER,
      ppordecon IN NUMBER,
      psproces IN NUMBER,
      ptipder IN NUMBER)
      RETURN NUMBER;

      /*************************************************************************
      FUNCTION F_IN
        Funci�n que realiza un traspaso de salida.

        1.  PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
        2.  PSSEGURO: Tipo num�rico. Par�metro de entrada. C�digo de p�liza.
        3.  PNRIESGO: Tipo num�rico. Par�metro de entrada. N�mero de riesgo.
        4.  PCAGRPRO: Tipo num�rico. Par�metro de entrada. C�digo agrupaci�n de producto
        5.  PFVALMOV: Tipo fecha. Par�metro de entrada. Fecha de valor del traspaso.
        6.  PFEFECTO: Tipo fecha. Par�metro de entrada. Fecha de efecto del traspaso.
        7.  PIMOVIMI: Tipo num�rico. Par�metro de entrada. Importe del traspaso en dinero
        8.  PSPROCES: Tipo num�rico. Par�metro de entrada. Identificador de proceso.
        9.  PNNUMLIN: Tipo num�rico. Par�metro de salida. Clave en CTASEGURO.
        10. PFCONTAB: Tipo num�rico. Par�metro de salida. Clave en CTASEGURO.
        11. PNRECIBO: Tipo num�rico. Par�metro de salida. Recibo creado.

   Retorna un valor num�rico: 0 si ha borrado el traspaso y 1 si se ha producido alg�n error.
       *************************************************************************/
   FUNCTION f_in(
      pstras IN NUMBER,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pcagrpro IN NUMBER,
      pfvalmov IN OUT DATE,
      pfefecto IN OUT DATE,
      pimovimi IN NUMBER,
      psproces IN NUMBER,
      pnnumlin OUT NUMBER,
      pfcontab IN OUT DATE,
      pnrecibo OUT NUMBER)
      RETURN NUMBER;

      /*************************************************************************
      FUNCTION F_OUT
       Funci�n que realiza un traspaso de salida.

        1.  PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
        2.  PCTIPTRAS: Tipo num�rico. Par�metro de entrada. Tipo de traspaso Total o parcial
        3.  PSSEGURO: Tipo num�rico. Par�metro de entrada. C�digo de p�liza.
        4.  PNRIESGO: Tipo num�rico. Par�metro de entrada. N�mero de riesgo.
        5.  PCAGRPRO: Tipo num�rico. Par�metro de entrada. C�digo agrupaci�n de producto
        6.  PFVALMOV: Tipo fecha. Par�metro de entrada/salida. Fecha de valor del traspaso.
        7.  PFEFECTO: Tipo fecha. Par�metro de entrada/salida. Fecha de efecto del traspaso.
        8.  PIMOVIMI: Tipo num�rico. Par�metro de entrada/salida. Importe del traspaso en dinero.
        9.  PPARTRAS: Tipo num�rico. Par�metro de entrada/salida. Importe del traspaso en participaciones.
        10. PSPERSDESTIN: Tipo num�rico. Par�metro de entrada. Destinatario del pago.
        11. PEPAGSIN: Tipo num�rico. Par�metro de entrada. Estado del pago del siniestro aceptado o pagado
        12. PCBANCAR: Tipo car�cter. Par�metro de entrada.Cuenta bancaria destino del pago.
        13. PCTIBBAN: Tipo num�rico. Par�metro de entrada. Tipo de cuenta.
        14. PSPROCES: Tipo num�rico. Par�metro de entrada. Identificador de proceso.
        15. PNNUMLIN: Tipo num�rico. Par�metro de salida. Clave en CTASEGURO.
        16. PFCONTAB: Tipo num�rico. Par�metro de salida. Clave en CTASEGURO.

   Retorna un valor num�rico: 0 si ha demorado el traspaso y 1 si se ha producido alg�n error.
       *************************************************************************/
   FUNCTION f_out(
      pstras IN NUMBER,
      pctiptras IN NUMBER,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pcagrpro IN NUMBER,
      pfvalmov IN OUT DATE,
      pfefecto IN OUT DATE,
      pimovimi IN OUT NUMBER,
      ppartras IN OUT NUMBER,
      pspersdestin IN NUMBER,
      pepagsin IN NUMBER,
      pcbancar IN VARCHAR2,
      pctibban IN NUMBER,
      psproces IN NUMBER,
      pnnumlin OUT NUMBER,
      pfcontab OUT DATE)
      RETURN NUMBER;

      /*************************************************************************
      FUNCTION F_TRASPASO_INVERSO
       Funci�n que realiza un traspaso de salida.

        1.  PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
        2.  PSSEGURO_DS: Tipo num�rico. Par�metro de entrada. Identificador de la p�liza destino.
        3.  PNRIESGO_DS: Tipo num�rico. Par�metro de entrada. N�m. del riesgo.
        4.  PSSEGURO_OR: Tipo num�rico. Par�metro de entrada. Identificador de la p�liza origen.
        5.  PNRIESGO_OR: Tipo num�rico. Par�metro de entrada. N�m. del riesgo.
        6.  PIMOVIMI: Tipo num�rico. Par�metro de entrada/salida. Importe del traspaso en dinero.
        7.  PPARTRAS: Tipo num�rico. Par�metro de entrada/salida. Importe del traspaso en participaciones.
        8.  PCTIPTRAS: Tipo num�rico. Par�metro de entrada. Tipo de traspaso Total o parcial
        9.  PCINOUT: Tipo num�rico. Par�metro de entrada. Sentido del traspaso que se crea.
        10. PSTRASIN: Tipo num�rico. Par�metro de entrada/salida. Identificador del traspaso inverso creado.
        11. PSPROCES: Tipo num�rico. Par�metro de entrada. Identificador de proceso.

   Retorna un valor num�rico: 0 si ha insertado el traspaso inverso o un c�digo identificativo de error si se ha producido alg�n problema.
       *************************************************************************/
   FUNCTION f_traspaso_inverso(
      pstras IN NUMBER,
      psseguro_ds IN NUMBER,
      pnriesgo_ds IN NUMBER,
      psseguro_or IN NUMBER,
      pnriesgo_or IN NUMBER,
      pctipder IN NUMBER,
      pimovimi IN OUT NUMBER,
      pnporcen IN OUT NUMBER,
      ppartras IN OUT NUMBER,
      pctiptras IN NUMBER,
      pctiptrassol IN NUMBER,
      pcinout IN NUMBER,
      pstrasin IN OUT NUMBER,
      psproces IN NUMBER)
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

   Retorna un valor num�rico: 0 si ha informado el traspaso o un c�digo de error identificativo.
       *************************************************************************/
   FUNCTION f_informar_traspaso(
      pstras IN NUMBER,
      zfantigi IN DATE,
      ziimpanu IN NUMBER,
      znparret IN NUMBER,
      ziimpret IN NUMBER,
      ztmemo IN VARCHAR2,   -- BUG 15197 - PFA - Afegir camp observacions
      znparpos2006 IN NUMBER,
      zporcpos2006 IN NUMBER,
      znparant2007 IN NUMBER,
      zporcant2007 IN NUMBER)
      RETURN NUMBER;

/* BUG 15372 - 14/07/2010 - SRA - se crea la nueva transacci�n f_get_traspasos_pol para que informe el bloque Traspasos en axisctr097 */
   FUNCTION f_get_traspasos_pol(
      psseguro IN seguros.sseguro%TYPE,
      pmodo IN VARCHAR2,
      pcerror OUT NUMBER)
      RETURN sys_refcursor;

   -- BUG 15296 - 06/07/2010 - SRA: funci�n para obtener el listado de traspasos
   FUNCTION f_obtener_traspasos(
      pfdesde IN DATE,
      pfhasta IN DATE,
      pcempres IN NUMBER,
      pfichero OUT VARCHAR2)
      RETURN NUMBER;

-- Bug 16259 - SRA - 18/10/2010: recuperamos en la consulta los campos de "contingencia acaecida" y "fecha de contingencia"
   /*************************************************************************
   FUNCTION F_GET_TRASPLAPRESTA
   Funci�n que sirve para recuperar informaci�n de la prestaci�n en caso de traspaso de derechos econ�micos.
        1.  PSTRAS: Tipo num�rico. Par�metro de entrada. C�digo de traspaso.
        2.  NUM_ERR: Tipo num�rico. Par�metro de Salida. 0 si todo ha ido correcto y sino c�digo identificativo de error.
    *************************************************************************/
   FUNCTION f_get_trasplapresta(pstras IN NUMBER, num_err OUT NUMBER)
      RETURN sys_refcursor;

   /********* ALBERTO ****************
   Llena la talba de aportaciones TRASPLAAPORTACIONES de un traspaso destino "ptrasout"
   a partir de la tabla PRIMAS_CONSUMIDAS del siniestro de su traspaso origen "ptrasfin"
   **********************************************/
   FUNCTION f_llenar_primas ( ptrasfin IN NUMBER, ptrasout IN NUMBER )
      RETURN NUMBER;

   /********* ALBERTO ****************
   Informa los campos de TRASPLAINOUT del nuevo traspaso creado "ptrasout" con los campos
   asociados al registro 228 para la p�liza del traspaso Origen "ptrasfin"
   **********************************************/
   FUNCTION f_llenar_datos_228 ( ptrasfin IN NUMBER, ptrasout IN NUMBER )
      RETURN NUMBER;



END pac_traspasos;

/

  GRANT EXECUTE ON "AXIS"."PAC_TRASPASOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_TRASPASOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_TRASPASOS" TO "PROGRAMADORESCSI";
