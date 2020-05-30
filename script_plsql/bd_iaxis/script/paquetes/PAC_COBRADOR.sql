--------------------------------------------------------
--  DDL for Package PAC_COBRADOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_COBRADOR" AUTHID CURRENT_USER IS
/******************************************************************************
   NOMBRE:       pac_cobrado
   PROP�SITO: Package para el mantenimiento de cobradores bancarios.

   REVISIONES:

   Ver        Fecha        Autor      Descripci�n
   ---------  ----------  ------      ------------------------------------
     1        29/09/2010   ICV        1. Creaci�n del package
     2        22/09/2014   CASANCHEZ  2.0032668: COLM004-Trapaso entre Bancos (cobrador bancario) manteniendo la n�mina
******************************************************************************/

   /*************************************************************************
       Nueva funci�n que actualiza la informaci�n introducida o modificada del cobrador bancario.
       param pcempres    in : C�digo de la empresa.
       param PCCOBBAN    IN : N�mero de cobrador.
       param PCTIPBAN    IN : C�digo tipo de cuenta
       param PCDOMENT    IN : C�digo de la Entidad
       param PTSUFIJO    IN : C�digo Sucursal
       param PNCUENTA    IN : N�mero de cuenta
       param PCBAJA    IN : C�digo de baja
       param PCESCRIPCION    IN : Descripci�n
       param PNNUMNIF    IN : nif
       param CCONTABAN:  C�digo contable para el cobrador bancario
       param DOM_FILLER_LN3:  Filler para las l�neas '3' del fichero de domiciliaci�n
       retorno 0-Correcto, 1-C�digo error.
   *************************************************************************/
   FUNCTION f_set_cobrador(
      pccobban IN NUMBER,
      pncuenta IN VARCHAR2,
      ptsufijo IN VARCHAR2,
      pcempres IN NUMBER,
      pcdoment IN NUMBER,
      pcdomsuc IN NUMBER,
      pnprisel IN NUMBER,
      pcbaja IN NUMBER,
      pdescrip IN VARCHAR2,
      pnnumnif IN VARCHAR2,
      ptcobban IN VARCHAR2,
      pctipban IN NUMBER,
      pccontaban IN NUMBER,
      pdomfill3 IN VARCHAR2,
      pprecimp IN NUMBER,
      pcagruprec IN NUMBER)   -- Bug 19986 - APD - 08/11/2011 - se a�ade el campo cagruprec
      RETURN NUMBER;

/*************************************************************************
       Nueva funci�n que actualiza la informaci�n introducida o modificada del cobrador bancario.
       param PCCOBBAN    IN : N�mero de cobrador.
       param PNORDEN    in : Orden prioridad de selecci�n
       param pcempres    in : C�digo de la empresa.
       param PCRAMO    IN : Ramo
       param PCMODALI    IN : Modalidad
       param PCTIPSEG    IN : Tipo de seguro
       param PCCOLECT    IN : Colectividad
       param PCBANCO    IN : C�digo Banco
       param PCTIPAGE    IN : Tipo mediador
       param PCAGENTE    IN :  Mediador
       retorno 0-Correcto, 1-C�digo error.
   *************************************************************************/
   FUNCTION f_set_cobrador_sel(
      pccobban IN NUMBER,
      pnorden IN NUMBER,
      pcramo IN NUMBER,
      psproduc IN NUMBER,
      pcempres IN NUMBER,
      pcbanco IN NUMBER,
      pcagente IN NUMBER,
      pctipage IN NUMBER)
      RETURN NUMBER;

   /*************************************************************************
       Nueva funci�n que valida la informaci�n introducida o modificada del cobrador bancario.
       param pcempres    in : C�digo de la empresa.
       param PCCOBBAN    IN : N�mero de cobrador.
       param PCTIPBAN    IN : C�digo tipo de cuenta
       param PCDOMENT    IN : C�digo de la Entidad
       param PTSUFIJO    IN : C�digo Sucursal
       param PNCUENTA    IN : N�mero de cuenta
       param PCBAJA    IN : C�digo de baja
       param PCESCRIPCION    IN : Descripci�n
       param PNNUMNIF    IN : nif
       param CCONTABAN:  C�digo contable para el cobrador bancario
       param DOM_FILLER_LN3:  Filler para las l�neas '3' del fichero de domiciliaci�n
       retorno 0-Correcto, 1-C�digo error.
   *************************************************************************/
   FUNCTION f_valida_cobrador(
      pccobban IN NUMBER,
      pncuenta IN VARCHAR2,
      ptsufijo IN VARCHAR2,
      pcempres IN NUMBER,
      pcdoment IN NUMBER,
      pcdomsuc IN NUMBER,
      pnprisel IN NUMBER,
      pcbaja IN NUMBER,
      pdescrip IN VARCHAR2,
      pnnumnif IN VARCHAR2,
      ptcobban IN VARCHAR2,
      pctipban IN NUMBER,
      pccontaban IN NUMBER,
      pdomfill3 IN VARCHAR2,
      pprecimp IN NUMBER,
      pcmodo IN VARCHAR2,
      pcagruprec IN NUMBER)   -- Bug 19986 - APD - 08/11/2011 - se a�ade el campo cagruprec
      RETURN NUMBER;

   /*************************************************************************
       Nueva funci�n que valida la informaci�n introducida o modificada del cobrador bancario.
       param PCCOBBAN    IN : N�mero de cobrador.
       param PNORDEN    in : Orden prioridad de selecci�n
       param pcempres    in : C�digo de la empresa.
       param PCRAMO    IN : Ramo
       param PCMODALI    IN : Modalidad
       param PCTIPSEG    IN : Tipo de seguro
       param PCCOLECT    IN : Colectividad
       param PCBANCO    IN : C�digo Banco
       param PCTIPAGE    IN : Tipo mediador
       param PCAGENTE    IN :  Mediador
       retorno 0-Correcto, 1-C�digo error.
   *************************************************************************/
   FUNCTION f_valida_cobrador_sel(
      pccobban IN NUMBER,
      pnorden IN NUMBER,
      pcramo IN NUMBER,
      psproduc IN NUMBER,
      pcempres IN NUMBER,
      pcbanco IN NUMBER,
      pcagente IN NUMBER,
      pctipage IN NUMBER,
      pcmodo IN VARCHAR2)
      RETURN NUMBER;

   /*************************************************************************
     Nueva funci�n que reasliza el traspaso de bancos
     param pcempresa      IN  codigo de la empresa
     param pcobbanorigen  IN  cobrador bancario origen
     param pcbanco        IN  codigo de banco a trapasar
     param pcobbandestino IN  cobrador destino
     retorno 0-Correcto, 1-C�digo error.
    *************************************************************************/
   FUNCTION f_traspaso_cobradores(
      pcempresa IN empresas.cempres%TYPE,
      pcobbanorigen IN cobbancario.ccobban%TYPE,
      pcbanco IN bancos.cbanco%TYPE,
      pcobbandestino IN cobbancario.ccobban%TYPE)
      RETURN NUMBER;

--
      -- Bug 0035181 - 200356 - JMF - 08/04/2015 - llamada funci�n sin param salida
   FUNCTION ff_buscacobban(
      pcramo IN NUMBER,
      pcmodali IN NUMBER,
      pctipseg IN NUMBER,
      pccolect IN NUMBER,
      pcagente IN NUMBER,
      pcbancar IN VARCHAR2,
      pctipban IN NUMBER,
      pgenerr IN NUMBER DEFAULT 1)
      RETURN NUMBER;
END pac_cobrador;

/

  GRANT EXECUTE ON "AXIS"."PAC_COBRADOR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_COBRADOR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_COBRADOR" TO "PROGRAMADORESCSI";
