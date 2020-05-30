--------------------------------------------------------
--  DDL for Package PAC_ALBSGT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_ALBSGT" AUTHID CURRENT_USER IS
   /***************************************************************
       NAME:       PAC_ALBSGT
       PURPOSE:    Especificaci�n del paquete de las funciones
       utilizadas para la generaci�n de preguntas que posteriormente
       se utilizaran en el SGT
       REVISIONS:
       Ver        Date        Author           Description
       ---------  ----------  ---------------  ------------------------------------
       1.0        ??/??/????  ???              1. Created this package.
       2.0        02/05/2011  SRA              2. 0018345: LCOL003 - Validaci�n de garant�as dependientes de respuestas u otros factores
       3.0        20/05/2011  APD              3. 0018362: LCOL003 - Par�metros en cl�usulas y visualizaci�n cl�usulas autom�ticas
       4.0        22/11/2012  MDS              4. 0024657: MDP_T001-Pruebas de Suplementos
   ***************************************************************/
   cerror         NUMBER;

   FUNCTION f_tprefor(
      ptprefor IN VARCHAR2,
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      pcgarant IN NUMBER,
      resultat OUT NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER DEFAULT 1,
      picapital IN NUMBER DEFAULT 0,
      pnpoliza IN NUMBER DEFAULT NULL)
      RETURN NUMBER;

--**************************************************************************************
--Funci�n para la validaci�n de la formula para preguntas
-- BUG 7643
--**************************************************************************************
   FUNCTION f_tvalfor(
      pcrespue IN NUMBER,
      ptrespue IN VARCHAR2,
      ptvalfor IN VARCHAR2,
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pcactivi IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      pcgarant IN NUMBER,
      resultat OUT NUMBER,
      psproces IN NUMBER,
      pnmovima IN NUMBER DEFAULT 1,
      picapital IN NUMBER DEFAULT 0)
      RETURN NUMBER;

   -- FIN BUG 7643

   -- Ini bug 18345 - SRA - 02/05/2011
   /*************************************************************************
                     FUNCTION f_tvalfor
      Compone din�micamente la llamada a la funci�n que ha de realizar una validaci�n sobre la garant�a seleccionada,
      seg�n se han definido estas validaciones en GARANPROVAL
      ptvalfor in varchar2: funci�n/query que se va llamar
      ptablas  in varchar2: tipo de tablas (EST)
      psseguro in number: identificador del seguro
      pnriesgo in number: n�mero del riesgo
      pnmovimi in number: n�mero de movimiento
      pcgarant in number: c�digo de la garant�a
      pcactivi in number: c�digo de la actividad
      resultat out number: resultado de la validaci�n
      return       number: retorno de la funci�n f_tvalfor
   *************************************************************************/
   FUNCTION f_tvalgar(
      ptvalfor IN VARCHAR2,
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pnmovimi IN NUMBER,
      pcgarant IN NUMBER,
      pcactivi IN NUMBER,
      resultat OUT NUMBER)
      RETURN NUMBER;

   -- Fi bug 18345 - SRA - 02/05/2011

   --**************************************************************************************
--Funci�n para la validaci�n de la formula para parametros de clausulas
-- BUG 18362
--**************************************************************************************
   FUNCTION f_tvalclau(
      ptvalclau IN VARCHAR2,
      psclagen IN NUMBER,
      pnparame IN NUMBER,
      ptvalor IN VARCHAR2,
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pcactivi IN NUMBER,
      pnriesgo IN NUMBER,
      pfefecto IN DATE,
      pnmovimi IN NUMBER,
      resultat OUT NUMBER)
      RETURN NUMBER;

   /*************************************************************************
                         F_TVAL_DOCUREQ
       Devuelve el resultado de la ejecuci�n din�mica de una funci�n relacionada
       con la documentaci�n requerida.
       param in ptfuncio                : funci�n a ejecutar
       param in ptablas                 : tablas a consultar (temporales o definitivas)
       param in pcactivi                : c�digo de actividad
       param in psseguro                : n�mero secuencial de seguro
       param in pnmovimi                : n�mero de movimiento
       param out presult                : resultado de la ejecuci�n
       return                           : 0 todo correcto
                                          1 ha habido un error
       BUG 18351 - 11/05/2011 - JMP - Se a�ade la funci�n
    *************************************************************************/
   FUNCTION f_tval_docureq(
      ptfuncio IN VARCHAR2,
      ptablas IN VARCHAR2,
      pcactivi IN NUMBER,
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      -- Ini Bug 24657 - MDS - 22/11/2012
      pnriesgo IN NUMBER,
      psperson IN NUMBER,
      -- Fin Bug 24657 - MDS - 22/11/2012
      presult OUT NUMBER)
      RETURN NUMBER;

   /***************************************************************************************
                  -- Funci�n para la validaci�n de la formula para listas restringidas
          param in ptvalfor                : funci�n a ejecutar
          param in ptablas                 : tablas a consultar (temporales o definitivas)
          param in psseguro                : n�mero secuencial de seguro
          param in pnmovimi                : n�mero de movimiento
          param in psperson                : persona a evaluar candidata a lista restringida
          param out presult                : 0 - No se debe inclurir en lista restringida , 1 se debe incluir
          return                           : 0 todo correcto
                                             1 ha habido un error
   -- BUG 23823
   ******************************************************************************************/
   FUNCTION f_tvallre(
      ptvalfor IN VARCHAR2,
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      pnriesgo IN NUMBER,
      psperson IN NUMBER,
      pnsinies IN NUMBER,
      resultat OUT VARCHAR2)
      RETURN NUMBER;
END pac_albsgt;

/

  GRANT EXECUTE ON "AXIS"."PAC_ALBSGT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_ALBSGT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_ALBSGT" TO "PROGRAMADORESCSI";
