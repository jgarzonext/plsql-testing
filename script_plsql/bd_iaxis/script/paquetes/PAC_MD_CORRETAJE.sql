--------------------------------------------------------
--  DDL for Package PAC_MD_CORRETAJE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "AXIS"."PAC_MD_CORRETAJE" AS
   /******************************************************************************
      NOMBRE:      PAC_MD_CORRETAJE
      PROP�SITO:   Contiene las funciones de gesti�n del Co-corretaje

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        28/09/2011   DRA               1. 0019069: LCOL_C001 - Co-corretaje
      2.0        17/07/2019   DFR               2. IAXIS-3591: Visualizar los importes del recibo de manera ordenada 
                                                   y sin repetir conceptos.
   ******************************************************************************/
   FUNCTION f_calcular_comision_corretaje(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pnmovimi IN NUMBER,
      pfefecto IN DATE,
      pcramo IN NUMBER,
      pcmodali IN NUMBER,
      pctipseg IN NUMBER,
      pccolect IN NUMBER,
      pcactivi IN NUMBER,
      pcagente IN NUMBER,
      ptablas IN VARCHAR2,
      ppartici IN NUMBER,
      ppcomisi OUT NUMBER,
      ppretenc OUT NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;
  --
  -- Inicio IAXIS-3591 17/07/2019       
  --
  /*******************************************************************************
  FUNCION f_leecorretaje
  Funci�n que obtiene los importes de comisi�n del recibo inclusive si existe Co-corretaje
  param in psseguro   -> N�mero de seguro
  param in pnrecibo   -> N�mero de recibo
  return              -> Cursor con importes de comisi�n aplicados por agente
  ********************************************************************************/  
  FUNCTION f_leecorretaje(psseguro IN NUMBER,
                          pnrecibo IN NUMBER, 
                          mensajes OUT t_iax_mensajes )
    RETURN SYS_REFCURSOR;  
  --
  -- Fin IAXIS-3591 17/07/2019       
  --
   /*******************************************************************************
    FUNCION f_corretaje
    Funci�n que obtiene los valores de sucursal, participacion y intermediario lider del recibo cuando existe Co-corretaje
    param in pnrecibo   -> N�mero de recibo
    return              -> Cursor con valores de cada intermediario
    ********************************************************************************/  
   FUNCTION f_corretaje(pnrecibo IN NUMBER, 
                        mensajes OUT t_iax_mensajes )
     RETURN SYS_REFCURSOR;  
  --
  -- Fin IAXIS-12960 05/03/2020      
  --
END pac_md_corretaje;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_CORRETAJE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_CORRETAJE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_CORRETAJE" TO "PROGRAMADORESCSI";
