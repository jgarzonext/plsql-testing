--------------------------------------------------------
--  DDL for Package PAC_MD_VALIDACIONES_AHO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_VALIDACIONES_AHO" AS
/******************************************************************************
   NOMBRE:       PAC_MD_VALIDACIONES_AHO
   PROP�SITO:  Funciones de validaciones para productos financieros

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        07/03/2008   JRH                1. Creaci�n del package.
******************************************************************************/


     --JRH 03/2008
    /*************************************************************************
       Valida la forma de pago de la renta seg�n la parametrizaci�n del producto
       param in psproduc  : c�digo de producto
       param in pforpagren  : c�digo de forma de pago de la renta
       param out mensajes : mensajes de error
       return             : 0 todo correcto
                            1 ha habido un error
    *************************************************************************/
    FUNCTION f_valida_forma_pago_renta(psproduc IN SEGUROS.SPRODUC%TYPE,
                                       pforpagren IN NUMBER,
                                       mensajes IN OUT T_IAX_MENSAJES) RETURN NUMBER;


    --JRH 03/2008
   /*************************************************************************
       Valida el % de reversi�n de la renta seg�n la parametrizaci�n del producto
       param in psproduc  : c�digo de producto
       param in prevers  : % Reversi�n
       param out mensajes : mensajes de error
       return             : 0 todo correcto
                            1 ha habido un error
    *************************************************************************/
    FUNCTION f_valida_pct_revers(psproduc IN SEGUROS.SPRODUC%TYPE,
                                 prevers IN NUMBER,
                                 mensajes IN OUT T_IAX_MENSAJES) RETURN NUMBER;


     --JRH 03/2008
    /*************************************************************************
     Valida el % de reserva fallec. de la renta seg�n la parametrizaci�n del producto
     param in psproduc  : c�digo de producto
     param in pfallec  : % fallecimiento
     param out mensajes : mensajes de error
     return             : 0 todo correcto
                          1 ha habido un error
  *************************************************************************/
    FUNCTION f_valida_percreservcap(psproduc IN SEGUROS.SPRODUC%TYPE,
                                    pfallec IN NUMBER,
                                    mensajes IN OUT T_IAX_MENSAJES) RETURN NUMBER;


   --JRH 03/2008
   /*************************************************************************
       Valida todos los datos de gesti�n financieros de golpe
       param in psproduc  : c�digo de producto
       param in gestion  : objeto OB_IAX_GESTION
       param out mensajes : mensajes de error
       return             : 0 todo correcto
                            1 ha habido un error
    *************************************************************************/
    FUNCTION f_valida_datosGest(psproduc IN SEGUROS.SPRODUC%TYPE,
                                gestion IN OB_IAX_GESTION,
                                mensajes IN OUT T_IAX_MENSAJES) RETURN NUMBER;


--JRH 03/2008
  /*************************************************************************
       Valida varios par�metros de capitales de garant�as
       param in psproduc  : c�digo de producto
       param in pcgarant  : garant�a
       param in picapital  : capital
       param in ptipo  : 1 para Nueva Producci�n.
       param out mensajes : mensajes de error
       return             : 0 todo correcto
                            1 ha habido un error
    *************************************************************************/
    FUNCTION f_valida_capitales_gar(psproduc IN SEGUROS.SPRODUC%TYPE,
                                    pcgarant IN NUMBER,
                                    picapital IN NUMBER,
                                    ptipo IN NUMBER,
                                    PFECHA in date,
                                    porigen in number default 2,
                                    mensajes IN OUT T_IAX_MENSAJES) RETURN NUMBER;


  --JRH 03/2008
  /*************************************************************************
       Valida las rentas irregulares
       param in nriesgo  : N�mero de riesgo
       param out mensajes : mensajes de error
       return             : 0 todo correcto
                            1 ha habido un error
    *************************************************************************/
   FUNCTION F_Valida_RentaIrreg(nriesgo number, mensajes IN OUT T_IAX_MENSAJES)
   RETURN NUMBER;


   --JRH 03/2008
   /*************************************************************************
       Valida el % periodo de revisi�n
       param in psproduc  : c�digo de producto
       param in pduracion  : duraci�n p�liza
       param in pperiodo  :periodo de revisi�n
       param in pfefecto  :fecha efecto
       param out mensajes : mensajes de error
       return             : 0 todo correcto
                            1 ha habido un error
    *************************************************************************/
    FUNCTION f_valida_periodo(psproduc IN SEGUROS.SPRODUC%TYPE,
                              pduracion IN NUMBER,
                              pperiodo IN NUMBER,
                              pfefecto IN DATE,
                              mensajes IN OUT T_IAX_MENSAJES) RETURN NUMBER ;
END PAC_MD_VALIDACIONES_AHO;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_VALIDACIONES_AHO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_VALIDACIONES_AHO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_VALIDACIONES_AHO" TO "PROGRAMADORESCSI";
