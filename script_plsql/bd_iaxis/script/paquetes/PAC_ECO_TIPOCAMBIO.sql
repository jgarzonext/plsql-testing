--------------------------------------------------------
--  DDL for Package PAC_ECO_TIPOCAMBIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_ECO_TIPOCAMBIO" IS
/****************************************************************************
   NOMBRE:      pac_eco_tipocambio
   PROP�SITO:   Funciones y procedimientos para el tratamieto tipos de cambio.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ----------------------------------
   1.0        05/05/2009   LPS              1. Creaci�n del package.(Copia de Liberty)
   2.0        26/10/2011   JMP              2. 0018423: LCOL000 - Multimoneda
****************************************************************************/
   TYPE r_cursor IS REF CURSOR;

   TYPE t_cambio IS RECORD(
      moneda_inicial eco_tipocambio.cmonori%TYPE,
      moneda_final   eco_tipocambio.cmondes%TYPE,
      fecha          eco_tipocambio.fcambio%TYPE,
      tasa           eco_tipocambio.itasa%TYPE,
      usuario        eco_tipocambio.cusualt%TYPE
   );   -- DRA 5-11-2007: Bug Mantis 3356

/*************************************************************************
   FUNCTION f_consulta_cambios
   Obtiene el texto asociado a una moneda para un idioma concreto.
   param in p_criterios: Record type t_cambio con los criterios.
   return              : Devuelve una referencia a un cursor ( ya abierto ) con los datos referentes a los cambios de moneda. Se
        le pueden pasar criterios para la selecci�n y se hace con el mismo record, rellenando aquellos que
        deben intervenir en la selecci�n.
                     --> ���� Al final se debe cerrar el cursor !!!!. <--
        Estructura que devuelve el cursor:
            * moneda_inicial       (eco_tipocambio.cmonori%TYPE)
            * moneda_final         (eco_tipocambio.cmondes%TYPE)
            * fecha                (eco_tipocambio.fcambio%TYPE)
            * tasa                 (eco_tipocambio.itasa%TYPE)
*************************************************************************/
   FUNCTION f_consulta_cambios(p_criterios IN t_cambio)
      RETURN NUMBER;

/*************************************************************************
   FUNCTION f_datos_cambio_actualizar
   Devuelve los datos asociados a una cambio.
   p_moneda_inicial IN   : c�digo de moneda inicial
   p_moneda_final IN     : c�digo de moneda final
   p_fecha_cambio IN     : fecha del cambio
   return                : Record type t_cambio
*************************************************************************/
   FUNCTION f_datos_cambio_actualizar(
      p_moneda_inicial IN eco_tipocambio.cmonori%TYPE,
      p_moneda_final IN eco_tipocambio.cmondes%TYPE,
      p_fecha_cambio IN eco_tipocambio.fcambio%TYPE)
      RETURN t_cambio;

/*************************************************************************
   PROCEDURE p_nuevo_cambio
   Permite crear una nueva registro de cambio de moneda
   p_cambio IN        : Record type t_cambio
*************************************************************************/
   PROCEDURE p_nuevo_cambio(p_cambio IN t_cambio);

/*************************************************************************
   PROCEDURE p_actualiza_cambio
   Permite actualizar un registro de cambio de moneda
   p_cambio IN        : Record type t_cambio
*************************************************************************/
   PROCEDURE p_actualiza_cambio(p_cambio IN t_cambio);

/*************************************************************************
   PROCEDURE p_borra_cambio
   Permite borrar un registro de cambio de moneda
   p_moneda_inicial IN : C�digo de moneda inicial.
   p_moneda_final IN   : C�digo de moneda final.
   p_fecha_cambio IN   : Fecha del cambio de moneda.
*************************************************************************/
   PROCEDURE p_borra_cambio(
      p_moneda_inicial IN eco_tipocambio.cmonori%TYPE,
      p_moneda_final IN eco_tipocambio.cmondes%TYPE,
      p_fecha_cambio IN eco_tipocambio.fcambio%TYPE);

/*************************************************************************
   PROCEDURE p_desbloquear_registro
   Permite desbloquear el registro que se hab�a bloqueado para la actualizaci�n
*************************************************************************/
   PROCEDURE p_desbloquear_registro;

/*************************************************************************
   FUNCTION f_ultima_modificacion
   Permite conocer el momento en que se realiz� la �ltima modificaci�n. Si no se ha modificado nunca       --
   devolver� un nulo.
   p_moneda_inicial IN : C�digo de moneda inicial.
   p_moneda_final IN   : C�digo de moneda final.
   p_fecha_cambio IN   : Fecha del cambio de moneda.
   return              : Fecha de la �ltima modificaci�n.
*************************************************************************/
   FUNCTION f_ultima_modificacion(
      p_moneda_inicial IN eco_tipocambio.cmonori%TYPE,
      p_moneda_final IN eco_tipocambio.cmondes%TYPE,
      p_fecha_cambio IN eco_tipocambio.fcambio%TYPE)
      RETURN DATE;

/*************************************************************************
   FUNCTION f_cambio
   Devuelve la tasa de cambio para dos monedas y una fecha especificadas. La primera moneda ser� la de     --
   referencia y la segunda ser� la moneda en la que se quiere convertir el importe.
   p_moneda_inicial IN : C�digo de moneda inicial.
   p_moneda_final IN   : C�digo de moneda final.
   p_fecha_cambio IN   : Fecha del cambio de moneda.
   return              : Fecha de la �ltima modificaci�n.
*************************************************************************/
   FUNCTION f_cambio(
      p_moneda_inicial IN eco_tipocambio.cmonori%TYPE,
      p_moneda_final IN eco_tipocambio.cmondes%TYPE,
      p_fecha_cambio IN eco_tipocambio.fcambio%TYPE)
      RETURN eco_tipocambio.itasa%TYPE;

/*************************************************************************
   PROCEDURE p_guardar_historico
   Guarda el registro que le pasamos en el hist�rico haciendo las modificaciones que sean oportunas para
   que el hist�rico sea eficiente.
*************************************************************************/
   PROCEDURE p_guardar_historico(p_registro IN eco_tipocambio%ROWTYPE);

/*************************************************************************
   FUNCTION f_admite_cambios
   Esta funci�n me indicar� si puedo realizar cambios en los registros seleccionados, ya sean cambios de
   actualizaci�n o de borrado.
   p_moneda_inicial IN : C�digo de moneda inicial.
   p_moneda_final IN   : C�digo de moneda final.
   p_fecha IN          : Fecha del cambio.
   return              : TRUE o FALSE.
*************************************************************************/
   FUNCTION f_admite_cambios(
      p_moneda_inicial IN eco_tipocambio.cmonori%TYPE,
      p_moneda_final IN eco_tipocambio.cmondes%TYPE,
      p_fecha IN eco_tipocambio.fcambio%TYPE)
      RETURN BOOLEAN;

/*************************************************************************
   FUNCTION f_cuantos_registros
   Permite saber cuantos cambios se han informado para una combinaci�n de monedas.
   p_moneda_inicial IN : C�digo de moneda inicial.
   p_moneda_final IN   : C�digo de moneda final.
   return              : N�mero de cambios.
*************************************************************************/
   FUNCTION f_cuantos_registros(
      p_moneda_inicial IN eco_tipocambio.cmonori%TYPE,
      p_moneda_final IN eco_tipocambio.cmondes%TYPE)
      RETURN NUMBER;

/*************************************************************************
   FUNCTION f_importe_cambio
   Devuelve el importe en la moneda especificada a una fecha concreta                                      --
   (DRA 18-06-2008: Cambio el tipo del parametro p_redondear para usarlo en UPDATES                     --
   p_moneda_inicial IN : C�digo de moneda inicial.
   p_moneda_final IN   : C�digo de moneda final.
   p_importe IN        : importe en moneda inicial
   p_redondear IN      : '0' --> Si, '1' --> No
   return              : importe en la moneda final
*************************************************************************/
   FUNCTION f_importe_cambio(
      p_moneda_inicial IN eco_tipocambio.cmonori%TYPE,
      p_moneda_final IN eco_tipocambio.cmondes%TYPE,
      p_fecha IN eco_tipocambio.fcambio%TYPE,
      p_importe IN NUMBER,
      p_redondear IN NUMBER DEFAULT 1)
      RETURN NUMBER;

/*************************************************************************
   FUNCTION f_importe_tasa
   Devuelve el importe seg�n tasa redondeado ya seg�n decimales
   p_importe IN        : Importe
   p_tasa IN           : Tasa
   p_decimal IN        : Decimales
   return              : Importe seg�n tasa
*************************************************************************/
   FUNCTION f_importe_tasa(
      p_importe IN NUMBER,
      p_tasa IN eco_tipocambio.itasa%TYPE,
      p_decimal IN NUMBER)
      RETURN NUMBER;

/*************************************************************************
   FUNCTION f_cambio_no_inverso
   Permite detectar si se est� intentando dar de alta cambios inversos de tipo
   Ejem:         CMONORI = USD / CMONDES = CLP
           no se permitir�a inroducir el inverso
                 CMONORI = CLP / CMONDES = USD
   p_cambio IN         : Record Type t_cambio
   return              : N�mero de registros en eco_tipocambio.
*************************************************************************/
   FUNCTION f_cambio_no_inverso(p_cambio IN t_cambio)
      RETURN NUMBER;

-- BUG 18423 - 26/10/2011 - JMP - LCOL000 - Multimoneda
/*************************************************************************
   FUNCTION f_fecha_max_cambio
   Devuelve la m�xima fecha de cambio existente entre dos divisas que no
   supere una fecha dada
   pmonori             : C�digo de la moneda origen
   pmondes             : C�digo de la moneda destino
   pfecha              : Fecha m�xima de b�squeda
   return              : Fecha de cambio.
*************************************************************************/
   FUNCTION f_fecha_max_cambio(
      pmonori VARCHAR2,
      pmondes VARCHAR2,
      pfecha DATE DEFAULT f_sysdate)
      RETURN DATE;
-- FIN BUG 18423 - 26/10/2011 - JMP - LCOL000 - Multimoneda
END pac_eco_tipocambio;
 

/

  GRANT EXECUTE ON "AXIS"."PAC_ECO_TIPOCAMBIO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_ECO_TIPOCAMBIO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_ECO_TIPOCAMBIO" TO "PROGRAMADORESCSI";
