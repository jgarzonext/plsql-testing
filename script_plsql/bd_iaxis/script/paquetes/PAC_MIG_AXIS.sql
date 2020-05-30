--------------------------------------------------------
--  DDL for Package PAC_MIG_AXIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MIG_AXIS" IS
   /***************************************************************************
      NOMBRE:       PAC_MIG_AXIS
      PROP�SITO:    Proceso de traspaso de informacion de las tablas MIG_ a las
                    distintas tablas de AXIS
      REVISIONES:
      Ver        Fecha       Autor       Descripci�n
      ---------  ----------  ----------  --------------------------------------
      1.0        22-10-2008  JMC         Creaci�n del package
      2.0        02-06-2009  JMC         Se a�aden y modifican funciones para la
                                         migraci�n de DETMOVSEGURO, DETGARANSEG
                                         y MOVRECIBO. (bug 8402)
      3.0        12-06-2009  JMC         Se a�ade funci�n para la migraci�n de la
                                         tabla MIG_COMISIGARANSEG.
                                         Se a�aden mejoras en el proceso de
                                         borrado de las cargas. (bug 10395)
      4.0        30-09-2009  JMC         Se a�aden procesos para la carga de las
                                         tablas SEGUROS_ULK y TABVALCES.(bug 11115)
      5.0        22-10-2009  JMC         Se a�ade funci�n f_mig_parpersonas (bug 10054)
      6.0        05-11-2009  JMF         bug 0011578 Incorporar proceso post-migraci�n
                                         para la creaci�n del �ltimo movimiento de CESIONESREA
      7.0        02-12-2009  JMC         Bug 0012243: A�adir identificador de las cargas de las migraciones.
      8.0        21-12-2009  JMC         Bug 0012374: Migraci�n tabla PRESTAMOSEG.
                                                      Migraci�n nuevo modelo siniestros.
                                                      A�adir par�metro sproduc en p_post_instalacion_rea y
                                                      p_migra_cesiones.
      9.0        14-01-2010  JMC         Bug 0012557: Ajustes proceso migraci�n, para arreglar incidencias
                                                      detectadas migraci�n validaci�n 30/12/2009.
                                                      Se a�aden las funciones :
                                                      f_migra_sup_diferidosseg
                                                      f_migra_sup_acciones_dif
                                                      f_migra_pagosrenta
     10.0        15-01-2010  ICV         Bug 0011364: CEM - Traspasos - Carga Tablas
     11.0        11-05-2010  JMC         Bug 0014185: Se elimina las funciones del modelo antiguo de SINIESTROS.
     12.0        28-09-2010  AFM         Bug 0014954: CRE998 - Migraci�n m�dulo siniestros de OLDAXIS a NEWAXIS (se a�aden
                                                      las funciones  f_migra_sin_tramita_agenda y f_migra_sin_tramita_destinatario)
                                                                           JMC-Bug 0015640: Se a�ade funci�n f_migra_direcciones para la migraci�n de la
                                                      tabla mig_direcciones en caso que la/s direccion/es no se
                                                      encuentren en mig_personas.
     13.0        31-01-2011  JMF         Bug 0017015 CCAT702 - Migraci� i parametritzaci� de les dades referents a processos
     14.0        26-04-2011  JMC         Bug 0018334 LCOL702 - Carga p�lizas.
     15.0        07-11-2011  JMC         Bug 0020003: LCOL001-Adaptaci� migraci� persones
     16.0        22-02-2012  APD         Bug 0021121: MDP701 - TEC - DETALLE DE PRIMAS DE GARANTIAS
     17.0        25/05/2012  JMC         Bug 0022393: MdP - MIG - Viabilidad tarificaci�n productos de migraci�n de Hogar
     18.0        17/09/2013  SCO         Add Funci�n de migraci�n
     19.0        17/10/2013  SCO         Add Funci�n de migraci�n
     20.0        22/10/2015  ETM         Bug 34776/216124: MSV0007-Migraci�n MSV/ a�adir las tablas MIG_CTASEGURO_SHADOW Y MIG_SEGDISIN2
   ***************************************************************************/
   g_cestado      VARCHAR2(10);

   /***************************************************************************
                        FUNCTION f_codigo_axis
      Dado un valor de un c�digo de la empresa, nos devuelve el valor del
      c�digo en AXIS
         param in  pcempres:  C�digo empresa
         param in  pccodigo:  C�digo a convertir
         param in  pcvalemp:  Valor en empresa del c�digo
         param out pcvalaxis: Valor en AXIS del c�digo
         return:              C�digo error
   ***************************************************************************/
   FUNCTION f_codigo_axis(
      pcempres IN VARCHAR2,
      pccodigo IN VARCHAR2,
      pcvalemp IN VARCHAR2,
      pcvalaxis OUT VARCHAR2)
      RETURN NUMBER;

   /***************************************************************************
             FUNCTION f_lanza_post
       Funci�n que realiza las acciones post definidas en la tabla MIG_POST
          param in ptabla:    Tablas origen 'EST', 'POL'.
          param in out psseguro:  Seguro de las tablas origen. Salida, sseguro en la tabla definitiva
          param in psproduc:  Producto de la poliza
          param in pfefecto:  Fecha de efecto del movimiento
          param in pnmovimi   Numero de movimiento
          param out pmens
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_lanza_post(
      pncarga IN NUMBER,
      ptabla IN VARCHAR2,
      psseguro IN OUT seguros.sseguro%TYPE,
      psproduc productos.sproduc%TYPE,
      pfefecto DATE,
      pnmovimi IN NUMBER,
      pmens IN OUT VARCHAR2,
      pmodo IN VARCHAR2 DEFAULT 'GENERAL',
      pcactivi IN NUMBER DEFAULT 0)
      RETURN NUMBER;

   --   FUNCTION f_migra_carga(pncarga IN NUMBER, pntab IN NUMBER)
   --      RETURN NUMBER;
   /***************************************************************************
                        FUNCTION f_migra_personas
      Funci�n que inserta los registros grabados en MIG_PERSONAS, en las distintas
      tablas de personas de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_personas(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- BUG 10054 - 22-10-2009 - JMC - Funci�n para la migraci�n de la tabla PER_PARPERSONAS
   /***************************************************************************
                        FUNCTION f_migra_parpersonas
      Funci�n que inserta los registros grabados en MIG_PARPERSONAS, en la
      tabla de parametros de personas de AXIS. (PER_PARPERSONAS)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_parpersonas(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- FIN BUG 10054 - 22-10-2009 - JMC
   /***************************************************************************
                        FUNCTION f_migra_agentes
      Funci�n que inserta las personas grabadas en MIG_AGENTES, en las distintas
      tablas de agentes de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_agentes(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_seguros
      Funci�n que inserta las p�lizas grabadas en MIG_SEGUROS, en las distintas
      tablas de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_seguros(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_seguros_ren_aho
      Funci�n que inserta los registros grabados en MIG_SEGUROSREN_AHO, en las
      tablas SEGUROS_REN y SEGUROS_AHO de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_seguros_ren_aho(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_asegurados
      Funci�n que inserta los registros grabados en MIG_ASEGURADOS, en la tabla
      ASEGURADOS de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_asegurados(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_riesgos
      Funci�n que inserta los registros grabados en MIG_RIESGOS, en la tabla
      RIESGOS de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_riesgos(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- BUG 0018334 - 26-04-2011 - JMC - Carga p�lizas
   /***************************************************************************
                        FUNCTION f_migra_autriesgos
      Funci�n que inserta los registros grabados en MIG_AUTRIESGOS, en la tabla
      AUTRIESGOS de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 03/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_autriesgos(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_autdetriesgos
      Funci�n que inserta los registros grabados en MIG_AUTDETRIESGOS, en la tabla
      AUTDETRIESGOS de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 03/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_autdetriesgos(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
        FUNCTION f_migra_autdisriesgos
        Funci�n que inserta los registros grabados en MIG_AUTDISRIESGOS, en la tabla
        AUTDETRIESGOS de AXIS.
           param in  pncarga:     N�mero de carga.
           param in  pntab:       N�mero de tabla.
           param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 03/09/2012
           return:                0-OK, <>0-Error
     ***************************************************************************/
   FUNCTION f_migra_autdisriesgos(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

/***************************************************************************
      FUNCTION f_migra_autconductores
      Funci�n que inserta los registros grabados en MIG_AUTCONDUCTORES, en la tabla
      AUTCONDUCTORES de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 03/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_autconductores(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

/***************************************************************************
      FUNCTION f_migra_bonfranseg
      Funci�n que inserta los registros grabados en MIG_bonfranseg, en la tabla
      *bf_bonfranseg de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_bonfranseg(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_sitriesgo
      Funci�n que inserta los registros grabados en MIG_SITRIESGO, en la tabla
      SITRIESGO de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 03/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_sitriesgo(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- FIN BUG 0018334 - 26-04-2011 - JMC
   /***************************************************************************
                        FUNCTION f_migra_garanseg
      Funci�n que inserta los registros grabados en MIG_GARANSEG, en la tabla
      GARANSEG de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 03/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_garanseg(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- BUG : 10395 - 18-06-2009 - JMC - Proceso que determina que polizas tienen cuadro
   /***************************************************************************
                          PROCEDURE p_cuadro
        Procedimiento que despues de la carga de pregungaranseg, determina que
        p�lizas tienen que tener cuadros de amortizaci�n
           param in  pncarga:     N�mero de carga.
           param in  pntab:       N�mero de tabla.
     ***************************************************************************/
   PROCEDURE p_cuadro(pncarga IN NUMBER, pntab IN NUMBER, ptablas IN VARCHAR2 DEFAULT 'POL');

   -- FIN BUG : 10395 - 18-06-2009 - JMC
   /***************************************************************************
                        FUNCTION f_migra_detgaranseg
      Funci�n que inserta los registros grabados en MIG_DETGARANSEG, en la tabla
      DETGARANSEG de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 04/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   -- BUG 8402 - 15-05-2009 - JMC - Funci�n para la migraci�n de la tabla DETGARANSEG
   FUNCTION f_migra_detgaranseg(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- FIN BUG 8402 - 15-05-2009 - JMC
   /***************************************************************************
                        FUNCTION f_migra_comisigaranseg
      Funci�n que inserta los registros grabados en MIG_COMISIGARANSEG, en la tabla
      COMISIGARANSEG de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   -- BUG 10395 - 17-06-2009 - JMC - Funci�n para la migraci�n de la tabla COMISIGARANSEG
   FUNCTION f_migra_comisigaranseg(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- FIN BUG 10395 - 17-06-2009 - JMC

   /***************************************************************************
                        FUNCTION f_migra_pregunseg
      Funci�n que inserta los registros grabados en MIG_PREGUNSEG, en las tablas
      PREGUNSEG y PROGUNPOLSEG de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 04/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_pregunseg(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_preguntab
      Funci�n que inserta los registros grabados en MIG_PREGUNSEGTAB, en las tablas
      PREGUNSEGTAB
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 04/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_preguntab(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_ctaseguro
      Funci�n que inserta los registros grabados en MIG_CTASEGURO, en la tabla
      ctaseguro de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_ctaseguro(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

         -- BUG 34776 - 22-10-2015 - ETM - Funci�n para la migraci�n de MIG_CTASEGURO_SHADOW y SEGDISIN2 --INI
/***************************************************************************
      FUNCTION f_migra_ctaseguro_shadow
      Funci�n que inserta los registros grabados en MIG_CTASEGURO_SHADOW, en la tabla
      ctaseguro_shadow de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_ctaseguro_shadow(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

     --FIN BUG 34776 - 22-10-2015 - ETM - Funci�n para la migraci�n de MIG_CTASEGURO_SHADOW y SEGDISIN2 --INI
   /***************************************************************************
                        FUNCTION f_migra_ctaseguro_libreta
      Funci�n que inserta los registros grabados en MIG_CTASEGURO_LIBRETA, en la tabla
      CTASEGURO_LIBRETA de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_ctaseguro_libreta(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_pregungaranseg
      Funci�n que inserta los registros grabados en MIG_PREGUNGARANSEG, en la tabla
      PREGUNGARANSEG de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 04/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_pregungaranseg(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_clausuesp
      Funci�n que inserta los registros grabados en MIG_CLAUSUESP, en las tablas
      CLAUSUESP, CLAUBENSEG y CLAUSUSEG de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 04/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_clausuesp(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
     FUNCTION f_migra_age_corretaje
      Funci�n que inserta los registros grabados en MIG_AGE_CORRETAJE, en las tablas
      AGE_CORRETAJE de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_age_corretaje(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_movseguro
      Funci�n que inserta los registros grabados en MIG_MOVSEGURO, en las tablas
      MOVSEGURO, HISTORICOSEGUROS y DETMOVSEGURO de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 04/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_movseguro(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                          FUNCTION f_migra_recibos
        Funci�n que trata y traspasa la informaci�n de la tabla Intermedia
        MIG_RECIBOS (+MIG_SEGUROS), a las tablas de axis: RECIBOS y MOVRECIBO
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
           return            : 0 si valido, sino codigo error
     ***************************************************************************/
   FUNCTION f_migra_recibos(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                         FUNCTION f_migra_detrecibos
       Funci�n que trata y traspasa la informaci�n de la tabla Intermedia
       MIG_DETRECIBOS (+MIG_SEGUROS), a las tablas de axis: DETRECIBOS Y VDETRECIBOS
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
          return            : 0 si valido, sino codigo error
    ***************************************************************************/
   FUNCTION f_migra_detrecibos(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- BUG 8402 - 15-05-2009 - JMC - Se a�ade funci�n para la migraci�n de la tabla MOVRECIBO
   /***************************************************************************
                        FUNCTION f_migra_movrecibo
      Funci�n que inserta los registros grabados en MIG_MOVRECIBO, en la tabla
      movrecibo de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_movrecibo(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- FIN BUG 8402 - 15-05-2009 - JMC
   /***************************************************************************
                        FUNCTION f_migra_agensegu
      Funci�n que inserta los registros grabados en MIG_AGENSEGU, en la tabla
      agensegu de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_agensegu(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_seguros_ulk
      Funci�n que inserta los registros grabados en MIG_SEGUROS_FINV, en la
      tabla seguros_ulk de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 04/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_seguros_ulk(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- BUG 34776 - 22-10-2015 - ETM - Funci�n para la migraci�n de MIG_CTASEGURO_SHADOW y SEGDISIN2
   /***************************************************************************
        FUNCTION f_migra_segdisin2
        Funci�n que inserta los registros grabados en MIG_SEGDISIN2, en la
        tabla segdisin2 de AXIS.
           param in  pncarga:     N�mero de carga.
           param in  pntab:       N�mero de tabla.
           param in  ptablas      EST Simulaciones, POL P�lizas
           return:                0-OK, <>0-Error
     ***************************************************************************/
   FUNCTION f_migra_segdisin2(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   --FIN BUG 34776 - 22-10-2015 - ETM - Funci�n para la migraci�n de MIG_CTASEGURO_SHADOW y SEGDISIN2
     /***************************************************************************
                          FUNCTION f_migra_tabvalces
        Funci�n que inserta los registros grabados en MIG_TABVALCES, en la tabla
        tabvalces de AXIS.
           param in  pncarga:     N�mero de carga.
           param in  pntab:       N�mero de tabla.
           return:                0-OK, <>0-Error
     ***************************************************************************/
   FUNCTION f_migra_tabvalces(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   --INI BUG:12374 - 21-12-2009 - JMC --Creaci�n funci�n f_migra_prestamoseg
   /***************************************************************************
                         FUNCTION f_migra_prestamoseg
       Funci�n que inserta los registros grabados en MIG_PRESTAMOSEG, en la tabla
       tabvalces de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 04/09/2012
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_prestamoseg(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   --FIN BUG:12374 - 21-12-2009 - JMC
   --INI BUG:12374 - 22-12-2009 - JMC - Migraci�n nuevo modelo siniestros.
   /***************************************************************************
                         FUNCTION f_migra_sin_siniestro
       Funci�n que inserta los registros grabados en MIG_SIN_SINIESTRO, en la tabla
       sin_siniestro de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sin_siniestro(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL',
      pboldaxis IN BOOLEAN DEFAULT FALSE)
      RETURN NUMBER;

   /***************************************************************************
                         FUNCTION f_migra_sin_movsiniestro
       Funci�n que inserta los registros grabados en MIG_SIN_MOVSINIESTRO, en la tabla
       sin_movsiniestro de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sin_movsiniestro(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

/***************************************************************************
                         FUNCTION f_migra_sin_SINIESTRO_REFERENCIAS
       Funci�n que inserta los registros grabados en MIG_SIN_SINIESRO_REFERENCIAS, en la tabla
       sin_tramitacion de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sin_siniestro_referenc(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                         FUNCTION f_migra_sin_tramitacion
       Funci�n que inserta los registros grabados en MIG_SIN_TRAMITACION, en la tabla
       sin_tramitacion de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sin_tramitacion(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                         FUNCTION f_migra_sin_tramita_movimiento
       Funci�n que inserta los registros grabados en MIG_SIN_TRAMITA_MOVIMIENTO, en la tabla
       sin_tramita_movimiento de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sin_tramita_movimiento(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                         FUNCTION f_migra_sin_tramita_agenda
       Funci�n que inserta los registros grabados en MIG_SIN_TRAMITA_AGENDA, en la tabla
       sin_tramita_agenda de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sin_tramita_agenda(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
       FUNCTION f_migra_sin_tramita_personasrel
       Funci�n que inserta los registros grabados en MIG_SIN_TRAMITA_personasrel, en la tabla
       sin_tramita_destinatario de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sin_tramita_personasre(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
       FUNCTION f_migra_sin_tramita_dest
       Funci�n que inserta los registros grabados en MIG_SIN_TRAMITA_DEST, en la tabla
       sin_tramita_destinatario de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sin_tramita_dest(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                         FUNCTION f_migra_sin_tramita_reserva
       Funci�n que inserta los registros grabados en MIG_SIN_TRAMITA_RESERVA, en la tabla
       sin_tramita_reserva de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sin_tramita_reserva(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                         FUNCTION f_migra_sin_tramita_pago
       Funci�n que inserta los registros grabados en MIG_SIN_TRAMITA_PAGO, en la tabla
       sin_tramita_pago de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sin_tramita_pago(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL',
      pboldaxis IN BOOLEAN DEFAULT FALSE)
      RETURN NUMBER;

   /***************************************************************************
                         FUNCTION f_migra_sin_tramita_movpago
       Funci�n que inserta los registros grabados en MIG_SIN_TRAMITA_MOVPAGO, en la tabla
       sin_tramita_movpago de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sin_tramita_movpago(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                         FUNCTION f_migra_sin_tramita_pago_gar
       Funci�n que inserta los registros grabados en MIG_SIN_TRAMITA_PAGO_GAR, en la tabla
       sin_tramita_pago_gar de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sin_tramita_pago_gar(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   --INI BUG:12557 - 14-01-2010 - JMC - Incorporaci�n nuevas funciones
   /***************************************************************************
                         FUNCTION f_migra_sup_diferidosseg
       Funci�n que inserta los registros grabados en MIG_SUP_DIFERIDOSSEG, en la tabla
       sup_diferidosseg de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sup_diferidosseg(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                         FUNCTION f_migra_sup_acciones_dif
       Funci�n que inserta los registros grabados en MIG_SUP_ACCIONES_DIF, en la tabla
       sup_acciones_dif de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_sup_acciones_dif(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_pagosrenta
      Funci�n que inserta los registros grabados en MIG_PAGOSRENTA, en la tabla
      pagosrenta de AXIS (PAGOSRENTA y MOVPAGREN).
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_pagosrenta(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_comisionsegu
      Funci�n que inserta los registros grabados en MIG_COMISIONSEGU, en la tabla
      COMISIONSEGU de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 04/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_comisionsegu(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   --FIN BUG:12557 - 14-01-2010 - JMC
   /***************************************************************************
                        PROCEDURE p_migra_cargas
      Procedimiento que determina las cargas que estan pendientes de migrar y
      lanza dinamicamente la funci�n para migrar dichas cargas.
      ctaseguro de AXIS.
         param in  pide:     Identificador de las cargas.
         param in  pncarga:  N�mero de carga, si NULL todas.
   ***************************************************************************/
   PROCEDURE p_migra_cargas(
      pid IN VARCHAR2 DEFAULT NULL,   --BUG:12243 - 02-12-2009 - JMC - Se a�ade parametro pid
      ptipo IN VARCHAR2 DEFAULT 'M',   --BUG:14185 - 11-05-2010 - JMC - Se a�ade parametro ptipo
      pncarga IN NUMBER DEFAULT NULL,
      --BUG:14185 - 11-05-2010 - JMC - Se a�ade parametro pncarga
      pcestado IN VARCHAR2 DEFAULT 'RET',
      --BUG:14185 - 11-05-2010 - JMC - Se a�ade parametro pcestado
      ptabla IN VARCHAR2 DEFAULT 'POL',   -- BUG 23548 -- 18/09/2012
      pcmodo IN VARCHAR DEFAULT 'GENERAL');

   --   FUNCTION f_del_mig_emp_mig(pncarga IN NUMBER)
   --      RETURN NUMBER;

   /***************************************************************************
                        PROCEDURE p_borra_tabla_mig
      Procedimiento que dada una carga, la tabla MIG  retrocede o borra la
      migraci�n de dicha carga.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  pttab:       Nombre de la tabla.
   ***************************************************************************/
   PROCEDURE p_borra_tabla_mig(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      pttab IN VARCHAR2,
      ptipo IN VARCHAR2 DEFAULT 'M');

   /***************************************************************************
                        PROCEDURE p_borra_cargas
      Procedimiento que determina las cargas que estan es situaci�n de ser
      retrocedidas o borradas y lanza la funci�n para relizar dicha acci�n.
         param in  pcestado:    Estado 'DEL' para borrar, 'RET' para retroceder
   ***************************************************************************/
   PROCEDURE p_borra_cargas(
      pcestado IN VARCHAR2,
      pncarga IN NUMBER DEFAULT NULL,
      ptipo IN VARCHAR2 DEFAULT 'M');

      /***************************************************************************
                           FUNCTION f_strstd_mig
         Funci�n que elimina caracteres especiales y sustituye palabras acentuadas,
         sin acento para su comparaci�n con otra cadena.
   4         param in  pstr:     Cadena a tratar
            return:             Cadena tratada
      ***************************************************************************/
   FUNCTION f_strstd_mig(pstr IN VARCHAR2)
      RETURN VARCHAR2;

   -- ini Bug 0011578 - JMF - 05-11-2009
   PROCEDURE p_mig_cesiones   /*************************************************************************
                                                                             param in pcempres   :   empresa.
                                                           param in pfefecto   :   efecto movimiento
                                                           param in pcdetrea   :   genera detall per rebut o no: (PCDETREA 0-No(defecte) / 1-Si)
                                                           param in pctanca    :   traspassar cessions al tancament o no: (PCTANCA 0-No (defecte) 1-Si)
                                                           param in pultmov    :   nom�s genera les cessions del darrer moviment( pultmov = 0-NO (defecte) 1-Si)
                                                           param in puser      :   usuario necesario para reaseguro.
                                                           param in psproduc   :   producto a tratar si NULL todos
                                                        *************************************************************************/
                           (
      pcempres IN NUMBER,
      pfefecto IN DATE,
      pcdetrea IN NUMBER DEFAULT 0,
      pctanca IN NUMBER DEFAULT 0,
      pultmov IN NUMBER DEFAULT 0,
      puser IN VARCHAR2,
      psproduc IN NUMBER DEFAULT NULL   --BUG:12374 - 23-12-2009 - JMC - Par�metro producto
                                     );

   -- fin Bug 0011578 - JMF - 05-11-2009

   -- ini Bug 0011578 - JMF - 05-11-2009
   PROCEDURE p_post_instalacion_rea   /***************************************************************************
                                                                                         PROCEDURE P_POST_INSTALACION_REA
                                                                       Procedimiento que lanza tareas a realizar en la migraci�n de cesiones.
                                                                           param in pcempres   :   empresa.
                                                                           param in pfefecto   :   efecto movimiento
                                                                           param in pcdetrea   :   genera detall per rebut o no: (PCDETREA 0-No(defecte) / 1-Si)
                                                                           param in pctanca    :   traspassar cessions al tancament o no: (PCTANCA 0-No (defecte) 1-Si)
                                                                           param in pultmov    :   nom�s genera les cessions del darrer moviment( pultmov = 0-NO (defecte) 1-Si)
                                                                           param in puser      :   usuario necesario para reaseguro.
                                                                           param in psproduc   :   producto a tratar si NULL todos
                                                                    ***************************************************************************/
                                   (
      pcempres IN NUMBER,
      pfefecto IN DATE,
      pcdetrea IN NUMBER DEFAULT 0,
      pctanca IN NUMBER DEFAULT 0,
      pultmov IN NUMBER DEFAULT 0,
      puser IN VARCHAR2,
      psproduc IN NUMBER DEFAULT NULL   --BUG:12374 - 23-12-2009 - JMC - Par�metro producto
                                     );

   -- fin Bug 0011578 - JMF - 05-11-2009
   -- ini BUG 0012620 - 11/01/2010 - JMF - CEM - REA cessions de pagaments al proc�s de migraci�
   PROCEDURE p_mig_pagos_ces   /*************************************************************************
                                                                               param in pcempres   :   empresa.
                                                             param in pfefecto   :   efecto movimiento
                                                             param in puser      :   usuario necesario para reaseguro.
                                                             param in psproduc   :   producto a tratar si NULL todos
                                                          *************************************************************************/
                            (
      pcempres IN NUMBER,
      pfefecto IN DATE,
      puser IN VARCHAR2,
      psproduc IN NUMBER DEFAULT NULL);

   --fin bug 0012620

   -- ini Bug 0011364 - ICV - 05-01-2010
    /***************************************************************************
                        FUNCTION f_migra_depositarias_axis
      Funci�n que inserta los registros grabados en MIG_depositarias, en la tabla
      SIN_SINIESTRO de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_depositarias(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                         FUNCTION f_migra_planpensiones_axis
       Funci�n que inserta los registros grabados en planpensiones, en la tabla
       SIN_SINIESTRO de AXIS.
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_planpensiones(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_fonpensiones_axis
      Funci�n que inserta los registros grabados en MIG_fonpensiones, en la tabla
      SIN_SINIESTRO de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_fonpensiones(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                           FUNCTION f_migra_gestoras_axis
         Funci�n que inserta los registros grabados en MIG_gestoras, en la tabla
         SIN_SINIESTRO de AXIS.
            param in  pncarga:     N�mero de carga.
            param in  pntab:       N�mero de tabla.
            return:                0-OK, <>0-Error
      ***************************************************************************/
   FUNCTION f_migra_gestoras(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

    /***************************************************************************
                        FUNCTION f_migra_aseguradoras_axis
      Funci�n que inserta los registros grabados en MIG_aseguradoras, en la tabla
      SIN_SINIESTRO de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_aseguradoras(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_planpensiones_axis
      Funci�n que inserta los registros grabados en aseguradoras_planes, en la tabla
      SIN_SINIESTRO de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_aseguradoras_planes(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- fin Bug 0011364 - ICV - 05-01-2010
   -- BUG 0015640 - 06-09-2009 - JMC - Funci�n para la migraci�n de la tabla PER_DIRECCIONES
   /***************************************************************************
                        FUNCTION f_migra_direcciones
      Funci�n que inserta los registros grabados en MIG_DIRECCIONES, en la tabla
      PER_DIRECCIONES de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 04/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_direcciones(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL',
      pmig_pk IN VARCHAR2 DEFAULT NULL)
      RETURN NUMBER;

   -- FIN BUG 0015640 - 06-09-2009 - JMC

   -- BUG 0017015 - 31-01-2011 - JMF
   /***************************************************************************
                        FUNCTION f_migra_gescartas
      Funci�n que inserta los registros grabados en MIG_GESCARTAS, en la tabla
      gescartas de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_gescartas(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- BUG 0017015 - 31-01-2011 - JMF
   /***************************************************************************
                        FUNCTION f_migra_devbanpresentadores
      Funci�n que inserta los registros grabados en MIG_DEVBANPRESENTADORES, en la tabla
      devbanpresentadores de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_devbanpresentadores(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- BUG 0017015 - 31-01-2011 - JMF
   /***************************************************************************
                        FUNCTION f_migra_gescartas
      Funci�n que inserta los registros grabados en MIG_DEVBANORDENANTES, en la tabla
      devbanordenantes de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_devbanordenantes(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- BUG 0017015 - 31-01-2011 - JMF
   /***************************************************************************
                        FUNCTION f_migra_gescartas
      Funci�n que inserta los registros grabados en MIG_DEVBANRECIBOS, en la tabla
      devbanrecibos de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_devbanrecibos(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- BUG 20003 - 07-11-2011 - JMC - Funci�nes para las migraciones de las tablas:
   -- PER_PERSONAS_REL, PER_REGIMENFISCAL y PER_VINCULOS.
   /***************************************************************************
                        FUNCTION f_migra_personas_rel
      Funci�n que inserta los registros grabados en MIG_PERSONAS_REL, en la
      tabla de relaciones de personas de AXIS. (PER_PERSONAS_REL)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_personas_rel(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_regimenfiscal
      Funci�n que inserta los registros grabados en MIG_REGIMENFISCAL, en la
      tabla de regimen fiscales de personas de AXIS. (PER_REGIMENFISCAL)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 05/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_regimenfiscal(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_vinculos
      Funci�n que inserta los registros grabados en MIG_VINCULOS, en la
      tabla de vinculos de personas de AXIS. (PER_VINCULOS)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 05/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_vinculos(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- FIN BUG 20003 - 07-11-2011 - JMC
   /***************************************************************************
                        FUNCTION f_migra_empleados
      Funci�n que inserta los registros grabados en MIG_EMPLEADOS, en la
      tabla de empleados de AXIS. (EMPLEADOS)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_empleados(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_representantes
      Funci�n que inserta los registros grabados en MIG_REPRESENTANTES, en la
      tabla de representantes de AXIS. (REPRESENTANTES)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_representantes(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_productos_empleados
      Funci�n que inserta los registros grabados en MIG_PRODUCTOS_EMPLEADOS, en la
      tabla de productos por empleados de AXIS. (PRODUCTOS_EMPLEADOS)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_productos_empleados(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_tipo_empleados
      Funci�n que inserta los registros grabados en MIG_TIPO_EMPLEADOS, en la
      tabla de tipos de empleados de AXIS. (TIPO_EMPLEADOS)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_tipo_empleados(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                        FUNCTION f_migra_detprimas
      Funci�n que inserta los registros grabados en MIG_DETPRIMAS, en la tabla
      DETPRIMAS de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 05/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   -- Bug 21121 - APD - 22/02/2012 - se crea la funcion
   FUNCTION f_migra_detprimas(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   -- Bug 21686 - JMC - 25/05/2012 - Se a�ade funcion para migrar GARANDETCAP
   /***************************************************************************
                        FUNCTION f_migra_garandetcap
      Funci�n que inserta los registros grabados en MIG_GARANDETCAP, en la tabla
      GARANDETCAP de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 05/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_garandetcap(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

    -- Fin Bug 21686 - JMC - 25/05/2012
    --bfp bug 21947 ini
    /***************************************************************************
                        FUNCTION f_migra_garansegcom
      Funci�n que inserta los registros grabados en MIG_GARANSEGCOM, en la tabla
      PREGUNGARANSEG de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         param in  ptablas      EST Simulaciones POL P�lizas  -- 23289/120321 - ECP- 05/09/2012
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_garansegcom(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
                         FUNCTION f_migra_benespseg
       Funci�n que inserta los registros grabados en MIG_BENESPSEG, en la
       tabla de empleados de AXIS. (BENESPSEG)
          param in  pncarga:     N�mero de carga.
          param in  pntab:       N�mero de tabla.
          return:                0-OK, <>0-Error
    ***************************************************************************/
   FUNCTION f_migra_benespseg(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

--bfp bug 21947 fi

   -- Inicio Bug:24744-SCO-20130917
/***************************************************************************
   FUNCTION f_mig_validacion
   funci�n que realiza las validaciones de la tabla MIG_VALIDACION para cada producto del seguro
      psseguro       c�digo del seguro
      ptablas        tablas EST o SEG
   ***************************************************************************/
   FUNCTION f_mig_validacion(
      psseguro IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'EST',
      psproduc IN NUMBER,
      pmens OUT VARCHAR2)
      RETURN NUMBER;

-- Fin Bug:24744-SCO-20130917

   /***************************************************************************
      FUNCTION f_trata_preguntas_migracion - SCO-20131017
      funci�n que a�ade las garant�as que faltan y comprueba las preguntas de p�liza, riesgo y garant�as
      para las p�lizas cargadas por fichero en modo migraci�n
         psseguro       c�digo del seguro
   ***************************************************************************/
   FUNCTION f_trata_preguntas_migracion(psseguro IN NUMBER, ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

   /***************************************************************************
       FUNCTION f_migra_antiguedades
       funci�n para migrar las antiguedades

       Bug 29738/163540 - 27/02/2014 - AMC
    ***************************************************************************/
   FUNCTION f_migra_antiguedades(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL',
      pmig_pk IN VARCHAR2 DEFAULT NULL)
      RETURN NUMBER;

/***************************************************************************
      FUNCTION f_migra_gescobros
      Funci�n que inserta los registros grabados en MIG_GESCOBROS, en la tabla
      ASEGURADOS de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_gescobros(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

/***************************************************************************
      FUNCTION f_migra_coacuadro
      Funci�n que inserta los registros grabados en MIG_COACUADRO, en la tabla
      COACUADRO de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_coacuadro(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

/***************************************************************************
      FUNCTION f_migra_coacedido
      Funci�n que inserta los registros grabados en MIG_COACEDIDO, en la tabla
      COACEDIDO de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_coacedido(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

/***************************************************************************
      FUNCTION f_migra_detalle_riesgos
      Funci�n que inserta los registros grabados en MIG_DETALLE_RIESGOS, en la tabla
      ASEGURADOS_INNOM de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_detalle_riesgos(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

/***************************************************************************
      FUNCTION f_migra_convenio_seg
      Funci�n que inserta los registros grabados en MIG_CNV_CONV_EMP_SEG, en la tabla
      CNV_CONV_EMP_SEG de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_convenio_seg(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

--INI -- ETM --BUG 34776/202076--
   /***************************************************************************
      FUNCTION f_migra_bloqueoseg
      Funci�n que inserta los bloqueos grabados en MIG_BLOQUEOSEG, en las distintas
      tablas de agentes de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_bloqueoseg(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

--FIN -- ETM --BUG 34776/202076--

   --INI -- JLB --BUG 34776/213932--
   /***************************************************************************
      FUNCTION f_migra_psu_retenidas
      Funci�n que inserta las polizas retenidas en MIG_PSU_RETENIDAS, en PSU_RETENIDAS
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_psu_retenidas(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

-- FIN -- JLB

   -- ini rllf 28092015 migrar participaci�n de beneficios
/***************************************************************************
      FUNCTION f_migra_pbex
      Funci�n que inserta los registros grabados en MIG_COACEDIDO, en la tabla
      COACEDIDO de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_pbex(pncarga IN NUMBER, pntab IN NUMBER, ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;

-- fin rllf 28092015 migrar participaci�n de beneficios

   -- ini rllf 05102015 migrar reemplazos de p�lizas
/***************************************************************************
      FUNCTION f_migra_pbex
      Funci�n que inserta los registros grabados en MIG_REEMPLAZOS, en la tabla
      COACEDIDO de AXIS.
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_reemplazos(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;
-- fin rllf 05102015 migrar reemplazos de p�lizas
   /***************************************************************************
                        FUNCTION f_migra_personas_rel
      Funci�n que inserta los registros grabados en MIG_PERSONAS_REL, en la
      tabla de relaciones de personas de AXIS. (PER_PERSONAS_REL)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_sin_prof_profesionales(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;
/***************************************************************************
      FUNCTION f_migra_sin_prof_indicadores
      Funci�n que inserta los registros grabados en MIG_PROF_INDICADORES, en la
      tabla de relaciones de personas de AXIS. (SIN_PROF_INDICADORES)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_sin_prof_indicadores(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;
/***************************************************************************
      FUNCTION f_migra_sin_prof_rol
      Funci�n que inserta los registros grabados en MIG_PROF_ROL, en la
      tabla de relaciones de personas de AXIS. (SIN_PROF_ROL)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_sin_prof_rol(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;
/***************************************************************************
      FUNCTION f_migra_sin_prof_contactos
      Funci�n que inserta los registros grabados en MIG_PROF_CONTACTOS, en la
      tabla de relaciones de personas de AXIS. (SIN_PROF_CONTACTOS)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_sin_prof_contactos(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;
/***************************************************************************
      FUNCTION f_migra_sin_prof_ccc
      Funci�n que inserta los registros grabados en MIG_SIN_PROF_CCC, en la
      tabla de relaciones de personas de AXIS. (SIN_PROF_CCC)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_sin_prof_ccc(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;
/***************************************************************************
      FUNCTION f_migra_sin_prof_repre
      Funci�n que inserta los registros grabados en MIG_SIN_PROF_REPRE, en la
      tabla de relaciones de personas de AXIS. (SIN_PROF_REPRE)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_sin_prof_repre(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;
/***************************************************************************
      FUNCTION f_migra_sin_prof_sede
      Funci�n que inserta los registros grabados en MIG_SIN_PROF_SEDE, en la
      tabla de relaciones de personas de AXIS. (SIN_PROF_SEDE)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_sin_prof_sede(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;
/***************************************************************************
      FUNCTION f_migra_sin_prof_estados
      Funci�n que inserta los registros grabados en MIG_SIN_PROF_ESTADOS, en la
      tabla de relaciones de personas de AXIS. (SIN_PROF_ESTADOS)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_sin_prof_estados(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;
/***************************************************************************
      FUNCTION f_migra_sin_prof_zonas
      Funci�n que inserta los registros grabados en MIG_SIN_PROF_ZONAS, en la
      tabla de relaciones de personas de AXIS. (SIN_PROF_ZONAS)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_sin_prof_zonas(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;
/***************************************************************************
      FUNCTION f_migra_sin_prof_carga
      Funci�n que inserta los registros grabados en MIG_SIN_PROF_CARGA, en la
      tabla de relaciones de personas de AXIS. (SIN_PROF_CARGA)
         param in  pncarga:     N�mero de carga.
         param in  pntab:       N�mero de tabla.
         return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_migra_sin_prof_carga(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;
   FUNCTION f_migra_sin_prof_observaciones(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
      RETURN NUMBER;
END pac_mig_axis;

/

  GRANT EXECUTE ON "AXIS"."PAC_MIG_AXIS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MIG_AXIS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MIG_AXIS" TO "PROGRAMADORESCSI";
