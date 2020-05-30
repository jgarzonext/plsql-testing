--------------------------------------------------------
--  DDL for Package PAC_CAMPANAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_CAMPANAS" IS
  /******************************************************************************
     NOMBRE:       PAC_CAMPANAS
     PROP�SITO:    Funciones de la capa l�gica para realizar acciones sobre la tabla CAMPANAS

     REVISIONES:
     Ver        Fecha        Autor             Descripci�n
     ---------  ----------  ---------------  ------------------------------------
     1.0        30/08/2011   FAL                1. Creaci�n del package.0019298: LCOL_C001 - Desarrollo de campa�as
  ******************************************************************************/

  /*************************************************************************
   Funci�n que realiza la b�squeda de campa�as a partir de los criterios de consulta entrados
   param in pccodigo     : codigo campa�a
   param in pcestado     : estado campa�a
   param in pfinicam     : fecha inicio campa�a
   param in pffincam     : fecha fin campa�a
   param out pquery      : select a ejcutar
        return             : 0 busqueda correcta
                          <> 0 busqueda incorrecta
  *************************************************************************/
  FUNCTION f_buscar(pccodigo IN VARCHAR2,
                    pcestado IN VARCHAR2,
                    pfinicam IN DATE,
                    pffincam IN DATE,
                    pquery   OUT VARCHAR2) RETURN NUMBER;

  /*************************************************************************
   Funci�n que permite ver/editar el detalle de la campa�a
   param in pccodigo     : codigo campa�a
   param out pquery      : select a ejcutar (recupera datos de la campa�a)
   param out pquery2     : select a ejcutar (recupera datos de los aprod/activ/garant asociados a la campa�a)
        return             : 0 edici�n correcta
                          <> 0 edici�n incorrecta
  *************************************************************************/
  FUNCTION f_editar(pccodigo IN VARCHAR2,
                    pquery   OUT VARCHAR2,
                    pquery2  OUT VARCHAR2,
                    pquery3  OUT VARCHAR2,
                    pquery4  OUT VARCHAR2) RETURN NUMBER;

  /*************************************************************************
   Funci�n que permite guardar los cambios realizados en  el detalle de la campa�a
   param in pccodigo     : codigo campa�a
   param in ptdescrip    : descripci�n campa�a
   param in pcestado     : estado campa�a
   param in pfinicam     : fecha inicio campa�a
   param in pffincam     : fecha fin campa�a
   param in pivalini     : coste lanzamiento campa�a
   param in pipremio     : coste premio campa�a
   param in pivtaprv     : importe previsto ventas campa�a
   param in pivtarea     : importe real ventas campa�a
   param in pcmedios     : medios de comunicaci�n campa�a
   param in pnagecam     : Num. agentes participan campa�a
   param in pnagegan     : Num. agentes ganadores campa�a.
   param in ptobserv     : observaciones campa�a
        return             : 0 grabaci�n correcta
                          <> 0 grabaci�n incorrecta
  *************************************************************************/
  FUNCTION f_grabar(pccodigo  IN VARCHAR2,
                    ptdescrip IN VARCHAR2,
                    pcestado  IN VARCHAR2,
                    pfinicam  IN DATE,
                    pffincam  IN DATE,
                    pivalini  IN NUMBER,
                    pipremio  IN NUMBER,
                    pivtaprv  IN NUMBER,
                    pivtarea  IN NUMBER,
                    pcmedios  IN VARCHAR2,
                    pnagecam  IN NUMBER,
                    pnagegan  IN NUMBER,
                    ptobserv  IN VARCHAR2,
                    pcexccrr  IN NUMBER,
                    pcexcnewp IN NUMBER,
                    pfinirec  IN DATE,
                    pffinrec  IN DATE,
                    pcconven  IN VARCHAR2) RETURN NUMBER;

  /*************************************************************************
   Funci�n que permite guardar los cambios realizados en  el detalle de la campa�a
   param in pccodigo     : c�digo campa�a
   param in psproduc     : c�digo producto asociado a campa�a
   param in pcactivi     : c�digo actividad asociado a campa�a
   param in pcgarant     : c�digo garantia asociado a campa�a
        return             : 0 grabaci�n correcta
                          <> 0 grabaci�n incorrecta
  *************************************************************************/
  FUNCTION f_grabar_campaprd(pccodigo IN VARCHAR2,
                             psproduc IN NUMBER,
                             pcactivi IN NUMBER,
                             pcgarant IN NUMBER) RETURN NUMBER;

  /*************************************************************************
   Funci�n que permite generar las cartas de alta/anulaci�n de la campa�a a los agentes asociados
   param in pccodigo     : codigo campa�a
        return             : 0 generaci�n cartas correcta
                          <> 0 generaci�n cartas incorrecta
  *************************************************************************/
  FUNCTION f_cartear(pctipocarta IN VARCHAR2, pccodigo IN VARCHAR2)
    RETURN NUMBER;

  -- 31/08/2011. FAL. 0019298: LCOL_C001 - Desarrollo de campa�as
  /*************************************************************************
   FUNCTION f_get_agentes_campa
   Funcion que permite buscar agentes que pueden participar en las campa�as
   param in pcmodo     : modo acceso (ASIGNAR'|'DESASIGNAR')
   param in pccodigo   : c�digo campa�a
   param in pfinicam   : fecha inicio campa�a
   param in pctipage   : tipo agente
   param in pcagente   : c�digo agente
   param out pquery    : select a ejecutar
   return              : number
  *************************************************************************/
  FUNCTION f_get_agentes_campa(pcmodo   IN VARCHAR2,
                               pccodigo IN NUMBER,
                               pfinicam IN DATE,
                               pctipage IN NUMBER,
                               pcagente IN NUMBER,
                               pempresa IN NUMBER,
                               pquery   OUT VARCHAR2) RETURN NUMBER;

  /*************************************************************************
   FUNCTION f_set_agentes_campa
   Funcion que permite asignar/eliminar agentes a las campa�a
   param in pcmodo     : modo acceso (ASIGNAR'|'DESASIGNAR')
   param in pccodigo   : c�digo campa�a
   param in pcagente   : fecha inicio campa�a
   param in pctipage   : tipo agente
   param in pfinicam   : c�digo agente
   param in pffincam   : fecha fin campa�a
   return              : number
  *************************************************************************/
  FUNCTION f_set_agentes_campa(pcmodo   IN VARCHAR2,
                               pccodigo IN NUMBER,
                               pcagente IN NUMBER,
                               pctipage IN NUMBER,
                               pfinicam IN DATE,
                               pffincam IN DATE,
                               pimeta   IN NUMBER) RETURN NUMBER;

  -- Fi Bug 0019298

  -- 31/08/2011. FAL. 0019298: LCOL_C001 - Desarrollo de campa�as
  /*************************************************************************
   FUNCTION f_get_productos_campa
   Funcion que perminte buscar productos/actividades/garantias de una EMPRESA a partir de los criterios de consulta entrados
   param in pcramo     : codigo del ramo
   param in psproduc   : c�digo del producto
   param in pcactivi   : codigo de la actividad
   param in pcgarant   : codigo de la garantia
   param in pcidioma   : codigo del idioma
   param out pquery  : select de los productos
   return              : number
  *************************************************************************/
  FUNCTION f_get_productos_campa(pcramo   IN NUMBER,
                                 psproduc IN NUMBER,
                                 pcactivi IN NUMBER,
                                 pcgarant IN NUMBER,
                                 pcidioma IN NUMBER,
                                 pquery   OUT VARCHAR2) RETURN NUMBER;

  /*************************************************************************
   FUNCTION f_set_productos_campa
   Funcion que permite asignar productos a las campa�a
   param in pccodigo     : codigo campa�a
   param in plistprod  : lista de productos seleccionados
   return              : number
  *************************************************************************/
  FUNCTION f_set_productos_campa(pccodigo IN NUMBER,
                                 psproduc IN NUMBER,
                                 pcactivi IN NUMBER,
                                 pcgarant NUMBER) RETURN NUMBER;

  -- Fi Bug 0019298
  /*************************************************************************
   FUNCTION f_get_campaprd
   Funcion que perminte buscar productos/actividades/garantias de una EMPRESA a partir de los criterios de consulta entrados
   param in pccodigo     : codigo del ramo
   param out pquery  : select de los productos
   return              : number
  *************************************************************************/
  FUNCTION f_get_campaprd(pccodigo IN NUMBER, pquery OUT VARCHAR2)
    RETURN NUMBER;

  -- Fi Bug 40601
  /*************************************************************************
   FUNCTION f_get_campa
   Funcion que perminte buscar campa�as de una EMPRESA a partir de los criterios de consulta entrados
   param in pccodigo     : codigo del ramo
   param out pquery  : select de los productos
   return              : number
  *************************************************************************/
  FUNCTION f_get_campa(pccodigo IN NUMBER, pquery OUT VARCHAR2) RETURN NUMBER;
  /*************************************************************************
   FUNCTION f_del_productos_campa
   Funcion que permite eliminar productos de una campa�a
   param in pccodigo     : codigo campa�a
   param in pcproduc  : c�digo de producto
   return              : number
  *************************************************************************/
  FUNCTION f_del_productos_campa(pccodigo IN NUMBER) RETURN NUMBER;

  /*************************************************************************
   FUNCTION f_get_agentecampanyes
   Funcion que perminte buscar las campa�as en las que est� un agente
   param in pcagente    : codigo de agente
   param out pquery  : select de llas campa�as
   return              : number
  *************************************************************************/
  FUNCTION f_get_agentecampanyes(pcagente IN NUMBER, pquery OUT VARCHAR2)
    RETURN NUMBER;

  /*************************************************************************
   FUNCTION f_set_ageganador
   Funcion que permite asignar productos a las campa�a
   param in pccodigo     : codigo campa�a
   param in pcagente     : agente
   param in ptganador    : ganador (S/N)
   return              : number
  *************************************************************************/
  FUNCTION f_set_ageganador(pccodigo  IN NUMBER,
                            pcagente  IN NUMBER,
                            ptganador IN VARCHAR2) RETURN NUMBER;

  FUNCTION f_ramos(pccodigo IN NUMBER) RETURN VARCHAR2;

  /*************************************************************************
   FUNCTION f_get_documentos
   Funcion que perminte mostrar los deocumentos de una campa�as
   param in pccodigo    : codigo de campa�a
   param out pquery  : select de los documentos
   return              : number
  *************************************************************************/
  FUNCTION f_get_documentos(pccodigo IN NUMBER, pquery OUT VARCHAR2)
    RETURN NUMBER;

  /***********************************************************************
     F_DESPRODUCTO: Obtenci�n del T�tulo o R�tulo de un Producto.
  ***********************************************************************/
  FUNCTION f_desproducto(psproduc IN NUMBER, pcidioma IN NUMBER)
    RETURN VARCHAR2;
  -- Fi Bug 40601
  /***********************************************************************
   f_get_agente_importe: Obtenci�n del Importe.
  ***********************************************************************/
  FUNCTION f_get_agente_importe(pcagente  IN NUMBER,
                                pccampana IN NUMBER,
                                pnmes     IN NUMBER,
                                pnano     IN NUMBER,
                                pcramo    IN NUMBER,
                                pcempres  IN NUMBER,
                                psproduc  IN NUMBER,
                                pcsucurs  IN NUMBER) RETURN SYS_REFCURSOR;

  /***********************************************************************
   F_DESPRODUCTO: Obtenci�n de la siniestralidad por Agente.
  ***********************************************************************/

  FUNCTION f_get_porc_agente_sinies(pcagente IN NUMBER) RETURN NUMBER;

  /***********************************************************************
   F_DESPRODUCTO: Obtenci�n de la siniestralidad por Agente.
  ***********************************************************************/

  FUNCTION f_get_campa_cierre(pctipo    IN NUMBER,
                              pcagente  IN NUMBER,
                              pccampana IN NUMBER,
                              pnmes     IN NUMBER,
                              pnano     IN NUMBER,
                              pcramo    IN NUMBER,
                              pcempres  IN NUMBER,
                              psproduc  IN NUMBER,
                              pcsucurs  IN NUMBER) RETURN SYS_REFCURSOR;

  /***********************************************************************
   F_DESPRODUCTO: Obtenci�n de la siniestralidad por Agente.
  ***********************************************************************/

  PROCEDURE proceso_batch_cierre(pmodo    IN NUMBER,
                                 pcempres IN NUMBER,
                                 pmoneda  IN NUMBER,
                                 pcidioma IN NUMBER,
                                 pfperini IN DATE,
                                 pfperfin IN DATE,
                                 pfcierre IN DATE,
                                 pcerror  OUT NUMBER,
                                 psproces OUT NUMBER,
                                 pfproces OUT DATE);

  /***********************************************************************
   F_DESPRODUCTO: Obtenci�n de la siniestralidad por Agente.
  ***********************************************************************/

  FUNCTION f_generar_correo(pctipo    IN NUMBER,
                            pcagente  IN NUMBER,
                            pccampana IN NUMBER,
                            pnmes     IN NUMBER,
                            pnano     IN NUMBER,
                            pcramo    IN NUMBER,
                            pcempres  IN NUMBER,
                            psproduc  IN NUMBER,
                            pcsucurs  IN NUMBER) RETURN NUMBER;

  /***********************************************************************
  f_envia_correo: Env�a mail
  ***********************************************************************/
  FUNCTION f_envia_correo RETURN NUMBER;
  -- Fi Bug 40601

END pac_campanas;

/

  GRANT EXECUTE ON "AXIS"."PAC_CAMPANAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_CAMPANAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_CAMPANAS" TO "PROGRAMADORESCSI";
