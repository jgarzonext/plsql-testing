--------------------------------------------------------
--  DDL for Package PAC_FICH_INTERM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_FICH_INTERM" AS
   /******************************************************************************
      NOMBRE:      PAC_FICH_INTERM
      PROP��SITO:   Este paquete tiene la finalidad de realizar la consolidaci��n (cierre) de todos los datos correspondientes a un intermediario dentro de un rango de fechas correspondiente.

      REVISIONES:
      Ver        Fecha        Autor             Descripci��n
      ---------  ----------  ---------------  ------------------------------------
      1.0        11/06/2016   FORREGO              1. Creacion
   ******************************************************************************/

	/*************************************************************************
   PROCEDURE PROCESO_BATCH_CIERRE:
   *************************************************************************/
   PROCEDURE proceso_batch_cierre(
      pmodo     IN NUMBER,
      pcempres  IN NUMBER,
      pmoneda   IN NUMBER,
      pcidioma  IN NUMBER,
      Pfperini  IN DATE,
      Pfperfin  IN DATE,
      Pfcierre  IN DATE,
      Pcerror   OUT NUMBER,
      psproces  OUT NUMBER,
      pfproces  OUT DATE);

  /**************************************************************************
        f_get_poliza
        Funci��n para seleccionar todas las p��lizas vigentes dentro del rango de tiempo establecido, esto con el fin de realizar un conteo de ��stas, sumatoria de sus primas.
   *************************************************************************/
    FUNCTION f_get_poliza(pcagente   IN agentes.cagente%TYPE,
                         pfperini  IN DATE,
                         pfperfin  IN DATE,
                         ptipo     IN NUMBER)
                         RETURN NUMBER;

  /**************************************************************************
        f_grabar_registro
        Con la informaci��n del cursor recibido se procesar�� cada registro y  deben tomar los datos correspondientes e insertarlos en la tabla FICHA_AGENTE cuando se trata de un cierre real, en caso contrario, cierre previo,  se insertar�� en la tabla FICHA_AGENTE_PREVIO Funci��n para seleccionar todas las p��lizas vigentes dentro del rango de tiempo establecido, esto con el fin de realizar un conteo de ��stas, sumatoria de sus primas.
   *************************************************************************/
   FUNCTION f_grabar_registro(pcagente   IN agentes.cagente%TYPE,
                         pmodo     IN NUMBER,
                         psproces  IN NUMBER,
                         pfperini  IN DATE,
                         pfperfin  IN DATE)
                         RETURN NUMBER;

  /**************************************************************************
        f_get_carteraven
*************************************************************************/
   FUNCTION f_get_carteraven(pcagente   IN agentes.cagente%TYPE,
                             ptipo     IN NUMBER)
                         RETURN NUMBER;


END PAC_FICH_INTERM;

/

  GRANT EXECUTE ON "AXIS"."PAC_FICH_INTERM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_FICH_INTERM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_FICH_INTERM" TO "PROGRAMADORESCSI";
