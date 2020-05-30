--------------------------------------------------------
--  DDL for Package PAC_ALBSGT_GENERICO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_ALBSGT_GENERICO" AUTHID CURRENT_USER IS
/***************************************************************
   PAC_ALBSGT_SNV: Especificaci�n del paquete de las funciones
        para el c�culo de las preguntas relacionadas
        con productos de SNV

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        ??/??/????   ???               1. Creaci�n del package.
   2.0        25/02/2009   JGR               2. A�adir funci�n f_gastos_lista
   7.0        01/09/2009   JRB               7. A�adir funcion f_sobreprima_descuento_80
 2010.1       10/02/2010   MRB             2010.1 Funci� f_tipus_subscripci�
 2010.1       16/02/2010   MRB             2010.1 Funcio f_renovaciones_fetes
   8.0        20/04/2010   JGR               8. 0014186: CRE998 - Modificaciones y resoluci�n de incidencia en CV Privats
***************************************************************/
   resultado      NUMBER;

   FUNCTION f_edad_riesgo(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_edad_alta(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_tiene_prestamo(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_prueba_medica(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_aportacion(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_primaeuroplazo(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_aportacion_menoseuroplazo(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_aportextr(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,   -- No s'utilitza
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,   -- No s'utilitza
      picapital IN NUMBER   -- No s'utilitza
                         )
      RETURN NUMBER;

   FUNCTION f_primasriesgo(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,   -- No s'utilitza
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,   -- No s'utilitza
      picapital IN NUMBER   -- No s'utilitza
                         )
      RETURN NUMBER;

   FUNCTION f_intprom(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,   -- No s'utilitza
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,   -- No s'utilitza
      picapital IN NUMBER   -- No s'utilitza
                         )
      RETURN NUMBER;

--JRH 11/2007 Funci�n de apoyo para obtener los datos de un tramo a una fecha dada (la clave es vbuscar)
   FUNCTION buscatramo(pfecha IN DATE, ntramo IN NUMBER, vbuscar IN NUMBER)
      RETURN NUMBER;

--JRH 11/2007 Funci�n de apoyo para obtener las respuestas a uha pregunta
   FUNCTION f_obtvalor_preg_riesg(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pnmovimi IN NUMBER,
      ppregun IN NUMBER)
      RETURN NUMBER;

--JRH 11/2007 Obtiene los gastos (seg�n el valor de tramos de un tipo de gasto) a partir del valor de tasaci�n HI
   FUNCTION f_gastos_hi(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER,
      ptramo IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_imc(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

--JRH 07/2012 Participaci�n en beneficios (nueva cobertura tipo 12).
   FUNCTION f_partbenef(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,   -- No s'utilitza
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,   -- No s'utilitza
      picapital IN NUMBER   -- No s'utilitza
                         )
      RETURN NUMBER;

   FUNCTION f_gastos_e(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_gastos_i(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_coef_ppj(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER,
      pclave IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_nomina_domi(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

-- RSC 25/02/2009 Pruebas de Tarifa arrastrada del certificado 0
   FUNCTION f_tramo_tarifa(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

-- RSC 25/02/2009 Pruebas de Tarifa arrastrada del certificado 0
   FUNCTION f_tramo_tarifavida(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_descuento_sobreprima(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_tipocopago_riesgo(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,   -- No s'utilitza
      pnmovimi IN NUMBER,   -- No s'utilitza
      cgarant IN NUMBER,   -- No s'utilitza
      psproces IN NUMBER,   -- No s'utilitza
      pnmovima IN NUMBER,   -- No s'utilitza
      picapital IN NUMBER   -- No s'utilitza
                         )
      RETURN NUMBER;

   FUNCTION f_valorcopago_riesgo(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,   -- No s'utilitza
      pnmovimi IN NUMBER,   -- No s'utilitza
      cgarant IN NUMBER,   -- No s'utilitza
      psproces IN NUMBER,   -- No s'utilitza
      pnmovima IN NUMBER,   -- No s'utilitza
      picapital IN NUMBER   -- No s'utilitza
                         )
      RETURN NUMBER;

   FUNCTION f_gastos_lista(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,   -- No s'utilitza
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,   -- No s'utilitza
      psproces IN NUMBER,   -- No s'utilitza
      pnmovima IN NUMBER,   -- No s'utilitza
      picapital IN NUMBER)   -- No s'utilitza
      RETURN NUMBER;

   /***********************************************************************
      Funci�n que nos retornar� la edad del riesgo a la fecha de �ltima
      cartera. Esta edad ser� la que se grabr� tanto en suplementos, como en
      una tarificaci�n a una fecha. En cuanto a la tarificaci�n por cartera,
      en caso de entrarnos una fecha que sea la fecha de renovaci�n o bien
      la fecha de cumplimiento de a�os del riesgo se calcular� la edad a esa
      fecha.

      param in ptablas   : Identificador fijo de tablas
      param in psseguro  : Identificador fijo de contrato
      param in pnriesgo  : Identificador fijo de riesgo
      param in pfefecto  : Identificador fijo de fecha efecto
      param in pnmovimi  : Identificador fijo de movimiento
      param in cgarant   : Identificador fijo de garant�a
      param in psproces  : Identificador fijo de proceso
      param in pnmovima  : Identificador fijo de nmovima
      param in picapital : Identificador fijo de capital
      return             : Number (edad).
   ***********************************************************************/
   -- Bug 10539 - RSC - 29/06/2009 - P�lizas con error en el c�lculo de la edad
   -- Los productos fraccionarios deber�n calcular la edad del riesgo en todo
   -- caso a la fecha de cartera anterior.
   FUNCTION f_edad_riesgo_frac(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

      /***********************************************************************
      Funci�n que nos retornar� los gastor internos para el producto de saldo deutors

      param in ptablas   : Identificador fijo de tablas
      param in psseguro  : Identificador fijo de contrato
      param in pnriesgo  : Identificador fijo de riesgo
      param in pfefecto  : Identificador fijo de fecha efecto
      param in pnmovimi  : Identificador fijo de movimiento
      param in cgarant   : Identificador fijo de garant�a
      param in psproces  : Identificador fijo de proceso
      param in pnmovima  : Identificador fijo de nmovima
      param in picapital : Identificador fijo de capital
      return             : Number (edad).
   ***********************************************************************/
   FUNCTION f_gastos_i_saldodeutors_b(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

      /***********************************************************************
      Funci�n que nos retornar� los gastor externos para el producto de saldo deutors

      param in ptablas   : Identificador fijo de tablas
      param in psseguro  : Identificador fijo de contrato
      param in pnriesgo  : Identificador fijo de riesgo
      param in pfefecto  : Identificador fijo de fecha efecto
      param in pnmovimi  : Identificador fijo de movimiento
      param in cgarant   : Identificador fijo de garant�a
      param in psproces  : Identificador fijo de proceso
      param in pnmovima  : Identificador fijo de nmovima
      param in picapital : Identificador fijo de capital
      return             : Number (edad).
   ***********************************************************************/
   FUNCTION f_gastos_e_saldodeutors_b(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

    /***********************************************************************
      Funci�n que nos retornar� los gastor internos para el producto de saldo deutors

      param in ptablas   : Identificador fijo de tablas
      param in psseguro  : Identificador fijo de contrato
      param in pnriesgo  : Identificador fijo de riesgo
      param in pfefecto  : Identificador fijo de fecha efecto
      param in pnmovimi  : Identificador fijo de movimiento
      param in cgarant   : Identificador fijo de garant�a
      param in psproces  : Identificador fijo de proceso
      param in pnmovima  : Identificador fijo de nmovima
      param in picapital : Identificador fijo de capital
      return             : Number (edad).
   ***********************************************************************/
   FUNCTION f_gastos_i_saldodeutors_a(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

      /***********************************************************************
      Funci�n que nos retornar� los gastor externos para el producto de saldo deutors

      param in ptablas   : Identificador fijo de tablas
      param in psseguro  : Identificador fijo de contrato
      param in pnriesgo  : Identificador fijo de riesgo
      param in pfefecto  : Identificador fijo de fecha efecto
      param in pnmovimi  : Identificador fijo de movimiento
      param in cgarant   : Identificador fijo de garant�a
      param in psproces  : Identificador fijo de proceso
      param in pnmovima  : Identificador fijo de nmovima
      param in picapital : Identificador fijo de capital
      return             : Number (edad).
   ***********************************************************************/
   FUNCTION f_gastos_e_saldodeutors_a(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Funci�n que actualizar� la sobreprima o el descuento de las p�lizas
      de los productos colectivos del ramo de SALUD de CREDIT

      param in ptablas   : Identificador fijo de tablas
      param in psseguro  : Identificador fijo de contrato
      param in pnriesgo  : Identificador fijo de riesgo
      param in pfefecto  : Identificador fijo de fecha efecto
      param in pnmovimi  : Identificador fijo de movimiento
      param in cgarant   : Identificador fijo de garant�a
      param in psproces  : Identificador fijo de proceso
      param in pnmovima  : Identificador fijo de nmovima
      param in picapital : Identificador fijo de capital
      return             : Number (porcentaje sobreprima o descuento).
   ***********************************************************************/
   FUNCTION f_sobreprima_descuento_80(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   --Bug 5467 - 13/10/2009 - RSC - CRE - Modificaci�n de capital en producto PIAM Colectivo.
   /*************************************************************************
      Funci�n para obtener el capital de muerte arrastrado del certificado 0
      param in ptablas  : variable que indica si se est� en la tablas reales o no
      param in sseguro  : c�digo de seguro del certificado cero
      param in pnriesgo : n�mero de riesgo
      return            : number (Capital arrastrado)
   *************************************************************************/
   FUNCTION f_capital_muerte(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   --Bug 5467 - 13/10/2009 - RSC - CRE - Modificaci�n de capital en producto PIAM Colectivo.
   /*************************************************************************
      Funci�n para obtener el capital de enfermedad grave arrastrado del certificado 0
      param in ptablas  : variable que indica si se est� en la tablas reales o no
      param in sseguro  : c�digo de seguro del certificado cero
      param in pnriesgo : n�mero de riesgo
      return            : number (Capital arrastrado)
   *************************************************************************/
   FUNCTION f_capital_enfermedad(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   --Bug 12682 - 10/02/2010 - MRB - CRE - CVC-PRIVATS
   /*************************************************************************

      Busca el tipus de subscripci�, en base al capital de la garantia de mort
      i de si hi han preguntes a null o contestades afirmativament en el
      questionari de salut.

      param in ptablas   : Identificador fijo de tablas
      param in psseguro  : Identificador fijo de contrato
      param in pnriesgo  : Identificador fijo de riesgo
      param in pfefecto  : Identificador fijo de fecha efecto
      param in pnmovimi  : Identificador fijo de movimiento
      param in cgarant   : Identificador fijo de garant�a
      param in psproces  : Identificador fijo de proceso
      param in pnmovima  : Identificador fijo de nmovima
      param in picapital : Identificador fijo de capital
      return             : Number (Torna el valor del Tipo de Subscripci�
                                  ( 0 => Proposta sense retenci�,
                                    1 => Proposta amb telesubscripci�,
                                    2 => Proposat amb telesubscripci� i
                                         proves m�diques adicionals.)
   *************************************************************************/
   FUNCTION f_tipus_subscripcio(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   --Bug 12682 - 16/02/2010 - MRB - CRE - CVC-PRIVATS
   /*************************************************************************

      Busca les renovacions que s'han fet per poder saber l'anulaitat en la
      que estem.
      Si per exemple torna un 5, indica que s'han fet 3 carteres a m�s de la
      nova producci�, cosa que vol dir que estem dins de la cinquena anualitat.

      param in ptablas   : Identificador fijo de tablas
      param in psseguro  : Identificador fijo de contrato
      param in pnriesgo  : Identificador fijo de riesgo
      param in pfefecto  : Identificador fijo de fecha efecto
      param in pnmovimi  : Identificador fijo de movimiento
      param in cgarant   : Identificador fijo de garant�a
      param in psproces  : Identificador fijo de proceso
      param in pnmovima  : Identificador fijo de nmovima
      param in picapital : Identificador fijo de capital
      return             : Number (Torna el nombre de renovacions que s'han fet
   *************************************************************************/
   FUNCTION f_renovacions_fetes(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_ageband(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_edad_aseg(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER,
      plife IN NUMBER DEFAULT 1)
      RETURN NUMBER;

   FUNCTION f_imc2(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      cgarant IN NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER,
      picapital IN NUMBER)
      RETURN NUMBER;
END pac_albsgt_generico;

/

  GRANT EXECUTE ON "AXIS"."PAC_ALBSGT_GENERICO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_ALBSGT_GENERICO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_ALBSGT_GENERICO" TO "PROGRAMADORESCSI";
