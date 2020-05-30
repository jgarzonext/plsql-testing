--------------------------------------------------------
--  DDL for Package PAC_IAX_RESCATES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_RESCATES" AS
/******************************************************************************
   NOMBRE:       PAC_IAX_RESCATES
   PROP�SITO:  Funciones de rescates para productos financieros

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        25/03/2008   JRH                1. Creaci�n del package.
   2.0        07/05/2008   JRH             2. 0009596: CRE - Rescates y promoci�n n�mina en producto PPJ
******************************************************************************/

   --JRH 03/2008
   /*************************************************************************
      Valida y realiza la simulaci�n de un rescate
      param in psseguro  : p�liza
      param in pnriesgo  : riesgo
      param in fecha     : fecha del rescate
      pimporte           : Importe del rescate (nulo si es total)
      pccausin           : 4 en rescate total , 5 en rescate parcial.
      simResc out OB_IAX_SIMRESCATE : objeto simulaci�n rescate
      param out mensajes : mensajes de error
      return             : 0 si todo ha ido bien 1 en caso contrario.
   *************************************************************************/
   FUNCTION f_valor_simulacion(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfecha IN DATE,
      pimporte IN NUMBER,
      pccausin IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN ob_iax_simrescate;

    --JRH 03/2008
   /*************************************************************************
       Valida y realiza un rescate
       param in psseguro  : p�liza
       param in pnriesgo  : riesgo
       param in fecha     : fecha del rescate
       pimporte           : Importe del rescate (nulo si es total)
       pipenali           : Importe penalizaci�n
       tipoOper           : 4 en rescate total , 5 en rescate parcial.
       param out mensajes : mensajes de error
       return             : 0 todo correcto
                            1 ha habido un error
    *************************************************************************/
   FUNCTION f_rescate_poliza(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfecha IN DATE,
      pimporte IN NUMBER,
      pipenali IN NUMBER,   -- BUG 9596 - 19/05/2009 - JRH - 0009596: CRE - Rescates y promoci�n n�mina en producto PPJ  (pasar l apenalizaci�n por par�metro)
      tipooper IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

      --JRH 03/2008
     /*************************************************************************
      Valida si se puede realizar el rescate
      param in psseguro  : p�liza
      param in pnriesgo  : riesgo
      param in fecha     : fecha del rescate
      param in pccausin  : tipo oper ( 4 --> rescate total)
      param out mensajes : mensajes de error
      return             : 0 todo correcto
                           1 ha habido un error
   *************************************************************************/
   FUNCTION f_valida_permite_rescate(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfecha IN DATE,
      pccausin IN NUMBER,
      pimporte IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
/*declare
mensajes    T_IAX_MENSAJES;
capitalGaran   NUMBER;
 pdatuser     OB_IAX_USERS;
Salida Number;
sim OB_IAX_SIMRESCATE;
begin
Salida:=PAC_IAX_LOGIN.F_IAX_Login (
        'ICRE_T04',
        'ICRE_T04',
        pdatuser  ,
        mensajes
    );
sim:=PAC_IAX_RESCATES.f_Valor_Simulacion(110655,
                                         1,
                                         sysdate,
                                         null,
                                         4 ,
                                         mensajes  );
dbms_output.put_line('Salida:'||Salida);
if mensajes is not null then
    dbms_output.put_line('mensajes:'||mensajes.count);
    dbms_output.put_line('mensajes:'||mensajes(1).terror);
        dbms_output.put_line('mensajes:'||mensajes(1).cerror);
end if;
end;*/
/*

declare
mensajes    T_IAX_MENSAJES;
capitalGaran   NUMBER;
 pdatuser     OB_IAX_USERS;
Salida Number;
sim OB_IAX_SIMRESCATE;
dat OB_IAX_DATOSECONOMICOS;
begin
Salida:=PAC_IAX_LOGIN.F_IAX_Login (
        'ICRE_T01',
        'ICRE_T01',
        pdatuser  ,
        mensajes
    );
dat:=PAC_IAX_DATOSCTASEGURO.f_ObtDatEcon(110655,
                                         1,
                                         sysdate,
                                         mensajes  );
dbms_output.put_line('Salida:'||Salida);
if mensajes is not null then
    dbms_output.put_line('mensajes:'||mensajes.count);
    dbms_output.put_line('mensajes:'||mensajes(1).terror);
        dbms_output.put_line('mensajes:'||mensajes(1).cerror);
end if;
end;



*/
END pac_iax_rescates;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_RESCATES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_RESCATES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_RESCATES" TO "PROGRAMADORESCSI";
