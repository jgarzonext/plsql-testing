--------------------------------------------------------
--  DDL for Type OB_IAXPAR_GARANTIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAXPAR_GARANTIAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAXPAR_GARANTIAS
   PROPÓSITO:  Contiene la información de las garantias

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2007   ACC                1. Creación del objeto.
   2.0        18/05/2010   AMC                2. Bug 14284. El campo cpardep tiene que ser un varchar2
   3.0        30/04/2012   APD                3. 0022049: MDP - TEC - Visualizar garant�as y sub-garantias
   4.0        26/02/2013   LCF                4. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
   5.0        27/03/2013   MMS                5. 0026501: POSRA400-(POSRA400)-Vida Grupo (Voluntario)
******************************************************************************/
(
   cgarant        NUMBER,   -- código garantia
   descripcion    VARCHAR2(500),   -- descripción garantia
   norden         NUMBER,   -- número de orden
   ctipgar        NUMBER,   -- tipus garantia
   ctipcap        NUMBER,   -- tipus capital
   ctiptar        NUMBER,   -- tipus tarifa
   cgardep        NUMBER,   -- garantia que depende
   cpardep        VARCHAR2(20),   -- código de parámetro de garantía del cual depende
   pcapdep        NUMBER(5, 2),   -- porcentaje del capital garantia
   icapmax        NUMBER,   -- capital máximo
   icapmin        NUMBER,   -- capital minimo
   icapital       NUMBER,   -- valor capital fijo cuando ctipcap=1
   cformul        NUMBER,   -- código de fórmula para tarifar la garantia
   crevali        NUMBER,   -- código de revalorización
   irevali        NUMBER,   -- importe de revalorización
   prevali        NUMBER(13, 2),   -- porcentaje de revalorización
   icaprev        NUMBER,   -- importe capital max revalorización
   cmodtar        NUMBER,   -- se puede enseñar y modificar la tarifa
   cextrap        NUMBER,   -- se puede modificar la extraprima
   crecarg        NUMBER,   -- se puede añadir un recargo
   cbonusmalus    NUMBER,   -- aplica bonus malus (falta camp)
   cmodrev        NUMBER,   -- se puede modificar la revalorización
   cdtocom        NUMBER,   -- admite descuento comercial
   cimpcon        NUMBER,   -- aplica consorcio
   cimpdgs        NUMBER,   -- aplica dgs
   cimpips        NUMBER,   -- aplica ips
   cimpfng        NUMBER,   -- cálculo fng
   cimparb        NUMBER,   -- se calcula arbitrios
   creaseg        NUMBER,   -- codigo tipo reaseguro
   cdetalle       NUMBER,   -- Nos dice si la garantia tiene detalle o no
   cderreg        NUMBER,   -- Bug 0019578 - FAL - 26/09/2011 - derechos de registro
   --JRH 03/2008
   ctipo          NUMBER,   -- tipo cobertura
   --JRH 03/2008
   cpartida       NUMBER,   -- Bug 17988 - JBN - 21/03/2011 - AGM003 - Modificaci򬟰antalla garantias (axisctr007).
   cmoncap        NUMBER,   -- Moneda en que están expresados el capital de la garantía y los capitales mínimo y máximo
   tmoncap        VARCHAR2(1000),   -- Descripción Moneda en que están expresados el capital de la garantía y los capitales mínimo y máximo
   cmoncapint     VARCHAR2(100),   -- Código Moneda ECO_CODMONEDAS
   -- Bug 22049 - APD - 30/04/2012
   cnivgar        NUMBER,   -- Nivel de la garant�a: si es garant�a, sub-garant�a o sub-subgarant�a
   cvisniv        NUMBER,   -- Nivel de visi�n de la garant�a (v.f.1080)
   cvisible       NUMBER,   -- Garanita visible o no
   cgarpadre      NUMBER,   -- C�digo de la garant�a padre
   -- Bug 26501 - MMS - 27/03/2013
   cclacap        NUMBER,
   cclamin        NUMBER,
   cdefecto       NUMBER,
   icapdef        NUMBER,   -- Importe del capital por defecto
   ccapdef        NUMBER,   -- Capital por defecto que se calcula mediante una f�rmula
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
      SELF.cpartida := NULL;   -- Bug 17988 - JBN - 21/03/2011 - AGM003 - Modificaci�n pantalla garantias (axisctr007).
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
