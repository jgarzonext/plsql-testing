--------------------------------------------------------
--  DDL for Package PAC_IAX_CORRETAJE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE PAC_IAX_CORRETAJE AS
   /******************************************************************************
      NOMBRE:      PAC_IAX_CORRETAJE
      PROP�SITO:   Contiene las funciones de gesti�n del Co-corretaje

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        28/09/2011   DRA               1. 0019069: LCOL_C001 - Co-corretaje
      2.0        17/07/2019   DFR               2. IAXIS-3591: Visualizar los importes del recibo de manera ordenada 
                                                   y sin repetir conceptos.
      4.0        21/01/2020   JLTS              4. IAXIS-10627. Se ajust la funcin f_trapaso_intermediario incluyendo el parmetro NMOVIMI en f_partpolcorretaje y f_leecorretaje
      5.0        05/03/2020   JRVG              5. IAXIS-12960 Se crea la funci�n F_CORRETAJE
   ******************************************************************************/
   FUNCTION f_calcular_comision_corretaje(
      pcagente IN NUMBER,
      pnriesgo IN NUMBER,
      ppartici IN NUMBER,
      ppcomisi OUT NUMBER,
      ppretenc OUT NUMBER,
      mensajes OUT t_iax_mensajes)
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
   
   -- INI IAXIS-5428 01/11/2019
   /******************************************************************
    Funci�n f_trapaso_intermediario
    PROP�SITO:  Funci�n que traspasa los datos de corretaje
   *******************************************************************/
   FUNCTION f_trapaso_intermediario(
      pcagente IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
   -- FIN IAXIS-5428 01/11/2019
   
   -- Inicio IAXIS-12960 05/03/2020      
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

END pac_iax_corretaje;

/
