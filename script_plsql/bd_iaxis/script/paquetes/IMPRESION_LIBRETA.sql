--------------------------------------------------------
--  DDL for Package IMPRESION_LIBRETA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."IMPRESION_LIBRETA" AUTHID CURRENT_USER AS
   -- NOTA : Te un PRAGMA Autonomous_Transaction;
   --
   --  Generar
   --    Omple les taules temporals amb les dades per la impressi�
   --
   FUNCTION generar(psseguro IN NUMBER, pfreimp IN DATE DEFAULT NULL, psesion OUT NUMBER)
      RETURN NUMBER;

   --
   --  Guardar
   --    Desa les dades de les p�gines impreses, a l'hora que neteja les taules temporals
   --
   FUNCTION guardar(
      psseguro IN NUMBER,
      psesion IN NUMBER,
      pcodlin IN NUMBER,
      ppagina IN NUMBER,
      plinea IN NUMBER)
      RETURN NUMBER;

   --
   --  Visualizar
   --    Per cridar des de TF. Torna un cursor per mostrar la p�gina d'una llibreta
   --    Retorna 0 si tot �s correcte o NULL si hi ha hagut un error
   --
   --  Par�metres
   --    psSeguro  Identificador de la p�lissa
   --    pLibreta  N�mero de llibreta a mostrar
   --    pPagina   N�mero de p�gina a mostrar
   --    pCursor   Cursor amb les dades a mostrar
   --        Tipo    'CAB' o 'DAT' segons �s la cap�alera o les linies
   --        Linia   N�mero de linia dins de la cap o les linies
   --        Color   0: N/A, 1: Impresa, 2:Pendent imprimir
   --        Text    Text de la linia
   --        Nnumlin N�mero de linia respecte a tota la p�lissa
   --

   -- Nota : Es defineix aquest TYPE enlloc d'utilitzar el SYS_REFCURSOR per problemes de compatibilitat amb el Forms 6i
   TYPE t_cursor IS REF CURSOR;

   FUNCTION visualizar(
      psseguro IN seguros.sseguro%TYPE,
      plibreta IN NUMBER,
      ppagina IN NUMBER,
      pcursor OUT t_cursor)
      RETURN NUMBER;

   --
   --  Visualizar_BorrarTablas
   --    Per cridar des de TF per esborrar les taules temporals.
   --    Retorna 0 si tot �s correcte o NULL si hi ha hagut un error
   --
   --  Par�metres
   --    psSeguro  Identificador de la p�lissa
   --
   FUNCTION visualizar_borrartablas(psseguro IN seguros.sseguro%TYPE)
      RETURN NUMBER;

   --
   --  Lineas_Pendientes
   --    Torna el nombre de l�nies pendent d'imprimir d'una llibreta
   --    En cas d'error torna NULL
   --
   FUNCTION f_lineas_pendientes(psseguro IN seguros.sseguro%TYPE)
      RETURN NUMBER;
END impresion_libreta;
 
 

/

  GRANT EXECUTE ON "AXIS"."IMPRESION_LIBRETA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."IMPRESION_LIBRETA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."IMPRESION_LIBRETA" TO "PROGRAMADORESCSI";
