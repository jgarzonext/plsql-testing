--------------------------------------------------------
--  DDL for Type OB_IAX_AUTRIESGOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AUTRIESGOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_AUTRIESGOS
   PROP�SITO:  Contiene la informaci�n del riesgo si es autom�vil

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/08/2007   ACC                1. Creaci�n del objeto.
   2.0        17/08/2007   ACC                2. A�ado conductors y accesorios
   3.0        04/10/2010   JTS                3. Se a�ade triesgo
   4.0        17/12/2012   ECP                4. 0025143: LCOL_T031-Adaptar el modelo de datos de autos
   5.0        15/02/2013   JDS                5. 025964: LCOL - AUT - Experiencia
   6.0        17/12/2012   ECP                4. 0025143: LCOL_T031-Adaptar el modelo de datos de autos
   7.0        01/07/2013   RCL                7. 0024697: LCOL_T031-Tama�o del campo SSEGURO
   8.0        21/08/2013   JSV                8. 0027953: LCOL - Autos Garantias por Modalidad
   9.0        19/02/2014   RCL                9. 0030256: LCOL999-Modificar modelo autos a?adiendo : CPESO, CTRANSMISION, NPUERTAS
******************************************************************************/
(
   /* Com�n */
   sseguro        NUMBER,
   nriesgo        NUMBER(6),   -- Numero de riesgo
   cversion       VARCHAR2(11),   -- C�digo de Versi�n de Veh�culo, identificador del vehiculo
   tversion       VARCHAR2(100),   -- Descripcion de la version
   cmodelo        VARCHAR2(4),   -- Codigo del modelo vehiculo
   tmodelo        VARCHAR2(100),   -- Descripcion del modelo vehiculo
   cmarca         VARCHAR2(5),   -- Codigo de la marca
   tmarca         VARCHAR2(100),   -- Descripcion de la marca
   ctipveh        VARCHAR2(3),   -- Tipo de vehiculo
   ttipveh        VARCHAR2(100),   -- Descripcion del tipo de vehiculo
   cclaveh        VARCHAR2(5),   -- Clase de vehiculo
   tclaveh        VARCHAR2(100),   -- Descripcion de la clase de vehiculo
   cmatric        VARCHAR2(12),   --Matricula vehiculo
   ctipmat        NUMBER(6),   -- Tipo de matricula. Valor fijo = 290
   ttipmat        VARCHAR2(100),   -- Descripcion del tipo de matricula
   cuso           VARCHAR2(3),   -- Codigo Uso del vehiculo
   tuso           VARCHAR2(100),   -- Descripcion del uso del vehiculo
   csubuso        VARCHAR2(2),   -- Codigo subuso del vehiculo
   tsubuso        VARCHAR2(100),   -- Descripcion del subuso del vehiculo
   fmatric        DATE,   -- Fecha de primera matriculacion
   nkilometros    NUMBER(3),   -- Numero de kilometros anuales. Valor fijo = 295
   tkilometros    VARCHAR2(100),   -- Descripcion de los kilometros
   ivehicu        NUMBER(15, 4),   -- Importe del Vehiculo
   npma           NUMBER(10, 3),   -- Peso M�ximo Autorizado
   ntara          NUMBER(10, 3),   -- Peso en vacio
   npuertas       NUMBER(2),   -- Numero puertas
   nplazas        NUMBER(3),   -- Numero plazas del vehiculo
   cmotor         VARCHAR2(4),   -- codigo del motor
   tmotor         VARCHAR2(100),   -- Descripcion del motor
   cgaraje        NUMBER(3),   -- Utiliza garaje. Valor fijo = 296
   tgaraje        VARCHAR2(100),   -- Descripcion del garaje
   cvehb7         NUMBER(3),   -- Indica si procede de base siete o no. Valor fijo = 108
   cusorem        NUMBER(3),   -- Utiliza remolque. Valor fijo = 108 (si o no)
   cremolque      NUMBER(3),   -- Descripcion del remolque. Valor fijo = 297
   tremdesc       VARCHAR2(100),   -- Descripcion del remolque
   /* */

   /* Estriesgos + Riesgos */
   ccolor         NUMBER(3),   -- Color vehiculo
   tcolor         VARCHAR2(100),   -- Descripcion del color del vehiculo
   cvehnue        VARCHAR2(1),   -- Indica si el vehiculo es nuevo o no
   nbastid        VARCHAR2(20),   --Numero de bastidor
   /* */
   conductores    t_iax_autconductores,   --Conductores
   accesorios     t_iax_autaccesorios,   --Accesorios del vehiculo que no vienen de serie
   dispositivos   t_iax_autdispositivos,   --Accesorios del vehiculo que no vienen de serie
   --
   triesgo        VARCHAR2(200),
   cpaisorigen    NUMBER(3),   -- PA�S DE ORIGEN
   tpaisorigen    VARCHAR2(500),   --Descripci�n pa�s origen
   codmotor       VARCHAR2(100),   -- LIBRE
   -- ttipmotor      VARCHAR2(100),   --descripci�n tipo combustible.
   cchasis        VARCHAR2(100),   --C�DIGO CHASIS
   ivehinue       NUMBER(15, 4),   -- VALOR A NUEVO
   nkilometraje   NUMBER(15, 4),   -- KILOMETRAJE
   ccilindraje    NUMBER(15, 4),   -- CILINDRAJE
   cpintura       NUMBER(6),   -- TIPO DE PINTURA
   tpintura       VARCHAR2(500),   --descripci�n tipo pintura(valor fijo 760)
   ccaja          NUMBER(5),   -- TIPO DE CAJA CAMBIOS (valor fijo 8000907)
   tcaja          VARCHAR2(500),   --descripci�n tipo caja cambios
   ccampero       NUMBER(5),   -- TIPO CAMPERO(vf 758)
   tcampero       VARCHAR2(500),   --descripci�n tipo campero
   ctipcarroceria NUMBER(5),   -- TIPO CARROCER�A (vf 761)
   ttipcarroceria VARCHAR2(500),   --descripci�n tipo carroceria
   cservicio      NUMBER(5),   --Codigo de servicio (publico,particular, etc). Valor fijo 8000904
   tservicio      VARCHAR2(500),   --descripci�n servicio
   corigen        NUMBER(5),   --Codigo Origen (Nacional, Importado). Valor fijo 8000905
   torigen        VARCHAR2(500),   --descripci�n origen
   ctransporte    NUMBER(4),   --TRANSPORTE COMBUSTIBLE(S/N) (vf 307)
   ttransporte    VARCHAR2(500),   --descripci�n transporte
   ivehicufasecolda NUMBER(15, 4),   -- Valor Comercial Fase Colda
   ivehicufasecoldanue NUMBER(15, 4),   --Valor nuevo Fasecolda
   ttara          VARCHAR2(1000),   --descripci�n peso
   anyo           NUMBER,   --ANYO MODELO
   ffinciant      DATE,   -- Fecha anterior compa�ia
   ciaant         NUMBER,   -- compa�ia anterior
   cpeso          NUMBER(3),   --C�digo Peso
   tpeso          VARCHAR2(100),
   inspeccion_vigente VARCHAR2(100),   --tiene inspecci�n vigente
   --Descripci�n Peso
   --BUG 0027953/0151258 - JSV - 21/08/2013 - INI
   cmodalidad     VARCHAR2(10),   -- cod modalidad
   tmodalidad     VARCHAR2(100),
                             -- desc modalidad
   --BUG 0027953/0151258 - JSV - 21/08/2013 - FIN
   --Descripci�n autom�bil
   ctransmision   NUMBER,   --Codigo de tipo de transmision
   MEMBER PROCEDURE get_descripcion(
      pssolicit NUMBER,
      pnriesgo IN NUMBER,
      des OUT VARCHAR2,
      pmode VARCHAR2 DEFAULT 'EST'),
   CONSTRUCTOR FUNCTION ob_iax_autriesgos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AUTRIESGOS" AS
   CONSTRUCTOR FUNCTION ob_iax_autriesgos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.nriesgo := NULL;
      SELF.cversion := NULL;
      SELF.tversion := NULL;
      SELF.cmodelo := NULL;
      SELF.tmodelo := NULL;
      SELF.cmarca := NULL;
      SELF.tmarca := NULL;
      SELF.ctipveh := NULL;
      SELF.ttipveh := NULL;
      SELF.cclaveh := NULL;
      SELF.tclaveh := NULL;
      SELF.cmatric := NULL;
      SELF.ctipmat := NULL;
      SELF.ttipmat := NULL;
      SELF.cuso := NULL;
      SELF.tuso := NULL;
      SELF.csubuso := NULL;
      SELF.tsubuso := NULL;
      SELF.fmatric := NULL;
      SELF.nkilometros := NULL;
      SELF.tkilometros := NULL;
      SELF.ivehicu := NULL;
      SELF.npma := NULL;
      SELF.ntara := NULL;
      SELF.npuertas := NULL;
      SELF.nplazas := NULL;
      SELF.cmotor := NULL;
      SELF.tmotor := NULL;
      SELF.cgaraje := NULL;
      SELF.tgaraje := NULL;
      SELF.cvehb7 := NULL;
      SELF.cusorem := NULL;
      SELF.cremolque := NULL;
      SELF.tremdesc := NULL;
      SELF.ccolor := NULL;
      SELF.tcolor := NULL;
      SELF.cvehnue := NULL;
      SELF.nbastid := NULL;
      SELF.conductores := NULL;
      SELF.accesorios := NULL;
      SELF.triesgo := NULL;
      SELF.ffinciant := NULL;
      SELF.ciaant := NULL;
      SELF.cpeso := NULL;
      SELF.tpeso := NULL;
      SELF.ctransmision := NULL;
      RETURN;
   END;
   --DescripciÃƒÂ³n automÃƒÂ³bil
   MEMBER PROCEDURE get_descripcion(
      pssolicit NUMBER,
      pnriesgo IN NUMBER,
      des OUT VARCHAR2,
      pmode VARCHAR2 DEFAULT 'EST') IS
   BEGIN
      pac_mdobj_prod.p_get_descripcionauto(SELF, pssolicit, pnriesgo, des, pmode);
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTRIESGOS" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTRIESGOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTRIESGOS" TO "R_AXIS";
