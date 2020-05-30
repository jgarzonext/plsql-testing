--------------------------------------------------------
--  DDL for Type OB_IAXPAR_GARANTIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAXPAR_GARANTIAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAXPAR_GARANTIAS
   PROP脫SITO:  Contiene la informaci贸n de las garantias

   REVISIONES:
   Ver        Fecha        Autor             Descripci贸n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2007   ACC                1. Creaci贸n del objeto.
   2.0        18/05/2010   AMC                2. Bug 14284. El campo cpardep tiene que ser un varchar2
   3.0        30/04/2012   APD                3. 0022049: MDP - TEC - Visualizar garant韆s y sub-garantias
   4.0        26/02/2013   LCF                4. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
   5.0        27/03/2013   MMS                5. 0026501: POSRA400-(POSRA400)-Vida Grupo (Voluntario)
******************************************************************************/
(
   cgarant        NUMBER,   -- c贸digo garantia
   descripcion    VARCHAR2(500),   -- descripci贸n garantia
   norden         NUMBER,   -- n煤mero de orden
   ctipgar        NUMBER,   -- tipus garantia
   ctipcap        NUMBER,   -- tipus capital
   ctiptar        NUMBER,   -- tipus tarifa
   cgardep        NUMBER,   -- garantia que depende
   cpardep        VARCHAR2(20),   -- c贸digo de par谩metro de garant铆a del cual depende
   pcapdep        NUMBER(5, 2),   -- porcentaje del capital garantia
   icapmax        NUMBER,   -- capital m谩ximo
   icapmin        NUMBER,   -- capital minimo
   icapital       NUMBER,   -- valor capital fijo cuando ctipcap=1
   cformul        NUMBER,   -- c贸digo de f贸rmula para tarifar la garantia
   crevali        NUMBER,   -- c贸digo de revalorizaci贸n
   irevali        NUMBER,   -- importe de revalorizaci贸n
   prevali        NUMBER(13, 2),   -- porcentaje de revalorizaci贸n
   icaprev        NUMBER,   -- importe capital max revalorizaci贸n
   cmodtar        NUMBER,   -- se puede ense帽ar y modificar la tarifa
   cextrap        NUMBER,   -- se puede modificar la extraprima
   crecarg        NUMBER,   -- se puede a帽adir un recargo
   cbonusmalus    NUMBER,   -- aplica bonus malus (falta camp)
   cmodrev        NUMBER,   -- se puede modificar la revalorizaci贸n
   cdtocom        NUMBER,   -- admite descuento comercial
   cimpcon        NUMBER,   -- aplica consorcio
   cimpdgs        NUMBER,   -- aplica dgs
   cimpips        NUMBER,   -- aplica ips
   cimpfng        NUMBER,   -- c谩lculo fng
   cimparb        NUMBER,   -- se calcula arbitrios
   creaseg        NUMBER,   -- codigo tipo reaseguro
   cdetalle       NUMBER,   -- Nos dice si la garantia tiene detalle o no
   cderreg        NUMBER,   -- Bug 0019578 - FAL - 26/09/2011 - derechos de registro
   --JRH 03/2008
   ctipo          NUMBER,   -- tipo cobertura
   --JRH 03/2008
   cpartida       NUMBER,   -- Bug 17988 - JBN - 21/03/2011 - AGM003 - Modificaci颥煱antalla garantias (axisctr007).
   cmoncap        NUMBER,   -- Moneda en que est谩n expresados el capital de la garant铆a y los capitales m铆nimo y m谩ximo
   tmoncap        VARCHAR2(1000),   -- Descripci贸n Moneda en que est谩n expresados el capital de la garant铆a y los capitales m铆nimo y m谩ximo
   cmoncapint     VARCHAR2(100),   -- C贸digo Moneda ECO_CODMONEDAS
   -- Bug 22049 - APD - 30/04/2012
   cnivgar        NUMBER,   -- Nivel de la garant韆: si es garant韆, sub-garant韆 o sub-subgarant韆
   cvisniv        NUMBER,   -- Nivel de visi髇 de la garant韆 (v.f.1080)
   cvisible       NUMBER,   -- Garanita visible o no
   cgarpadre      NUMBER,   -- C骴igo de la garant韆 padre
   -- Bug 26501 - MMS - 27/03/2013
   cclacap        NUMBER,
   cclamin        NUMBER,
   cdefecto       NUMBER,
   icapdef        NUMBER,   -- Importe del capital por defecto
   ccapdef        NUMBER,   -- Capital por defecto que se calcula mediante una f髍mula
   -- Fin Bug 26501 - MMS - 27/03/2013
   -- fin Bug 22049 - APD - 30/04/2012
   preguntas      t_iaxpar_preguntas,   -- preguntes per garantia
   listacapitales t_iaxpar_garanprocap,   -- lista valores capitales
   incompgaran    t_iaxpar_incompgaran,   -- garantias incompatibles
   franquicias    t_iaxpar_franquicias,   -- franquicies
   CONSTRUCTOR FUNCTION ob_iaxpar_garantias
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAXPAR_GARANTIAS" AS
   CONSTRUCTOR FUNCTION ob_iaxpar_garantias
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cgarant := 0;
      SELF.descripcion := NULL;
      SELF.norden := 0;
      SELF.ctipgar := 0;
      SELF.ctipcap := 0;
      SELF.ctiptar := 0;
      SELF.cgardep := 0;
      SELF.cpardep := NULL;
      SELF.pcapdep := 0;
      SELF.icapmax := 0;
      SELF.icapmin := 0;
      SELF.cformul := 0;
      SELF.crevali := 0;
      SELF.irevali := 0;
      SELF.prevali := 0;
      SELF.icaprev := 0;
      SELF.cmodtar := 0;
      SELF.cextrap := 0;
      SELF.crecarg := 0;
      SELF.cbonusmalus := 0;
      SELF.cmodrev := 0;
      SELF.cdtocom := 0;
      SELF.cimpcon := 0;
      SELF.cimpdgs := 0;
      SELF.cimpips := 0;
      SELF.cimpfng := 0;
      SELF.cimparb := 0;
      SELF.creaseg := 0;
      SELF.cdetalle := 0;
      SELF.preguntas := NULL;
      SELF.listacapitales := NULL;
      SELF.incompgaran := NULL;
      SELF.franquicias := NULL;
      SELF.cpartida := NULL;   -- Bug 17988 - JBN - 21/03/2011 - AGM003 - Modificaci髇 pantalla garantias (axisctr007).
      -- Bug 22049 - APD - 30/04/2012
      SELF.cnivgar := NULL;
      SELF.cvisniv := NULL;
      SELF.cvisible := NULL;
      SELF.cgarpadre := NULL;
      -- fin Bug 22049 - APD - 30/04/2012
      -- Bug 26501 - MMS - 27/03/2013
      SELF.cclacap := NULL;
      SELF.cclamin := NULL;
      SELF.cdefecto := NULL;
      SELF.icapdef := NULL;
      SELF.ccapdef := NULL;
      -- Fin Bug 26501 - MMS - 27/03/2013
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_GARANTIAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_GARANTIAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_GARANTIAS" TO "PROGRAMADORESCSI";
