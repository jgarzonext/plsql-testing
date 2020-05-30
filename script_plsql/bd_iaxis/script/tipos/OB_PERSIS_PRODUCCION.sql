--------------------------------------------------------
--  DDL for Type OB_PERSIS_PRODUCCION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_PERSIS_PRODUCCION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_PERSIS_POLIZA
   PROPÓSITO:  Contiene la información del detalle de la póliza

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   JLB              1. Creación del objeto.
******************************************************************************/
(
   poliza         ob_iax_poliza,   --Objeto póliza
   vempresa       NUMBER,   --Código empresa
   vproducto      NUMBER,   --Código producto
   vmodalidad     NUMBER,   --Código modalidad
   vccolect       NUMBER,   --Código de Colectividad del Producto
   vcramo         NUMBER,   --Código de Ramo del Producto
   vctipseg       NUMBER,   --Código de Tipo de Seguro del Producto
   gidioma        NUMBER,   --:= pac_iax_common.f_get_cxtidioma(),   --Código idioma
   vagente        NUMBER,   --Código agente
   vsolicit       NUMBER,   --Código solicitud
   vssegpol       NUMBER,   --Código corresponde con el sseguro de la tabla SEGUROS cuando el estudio ha pasado a póliza
   vnmovimi       NUMBER,   --Código movimiento
   vfefecto       DATE,   --Fecha efecto
   vfvencim       DATE,   --Fecha vencimiento
   vpmode         VARCHAR2(3),   --Indica si se trabaja con SOL EST POL
   vsseguro       NUMBER,   --Código de seguro de un suplemento (uso exclusivo en modo suplemento)
   issuplem       NUMBER(1),   --BOOLEAN := FALSE,   --Indica si se esta tratando un suplemento
   issimul        NUMBER(1),   -- BOOLEAN, := FALSE,   --Indica que estamos tratando una simulación
   issave         NUMBER(1),   -- BOOLEAN, -- := FALSE,   --per si ha gravat i no sha de netejar
   isneedtom      NUMBER(1),   -- BOOLEAN, -- := TRUE,  --indica si s'ha de guardar el prenador o no
   isnewsol       NUMBER(1),   -- BOOLEAN, -- := FALSE,   --per determinar si alguns missatges s'han de mostrar
   isconsult      NUMBER(1),   -- BOOLEAN, -- := FALSE,   --indica que estem consulta una pòlissa ACC 13122008
   ismodifprop    NUMBER(1),   -- BOOLEAN, -- := FALSE,   --Indica si se esta modificando una propuesta retenida.
   isaltagar      NUMBER(1),   -- BOOLEAN, -- := FALSE,   --Indica si se trata de un alta de garantías
   imodifgar      NUMBER(1),   -- BOOLEAN, -- := FALSE,   --Indica si se trata de una modificación de garantías
   isbajagar      NUMBER(1),   -- BOOLEAN, -- := FALSE,   --Indica si se trata de un baja de garantías
   isaltacol      NUMBER(1),   -- BOOLEAN,  -- := FALSE   -- Indica si es alta de colectivo (alta del certificado 0)
   isnotainfor    NUMBER(1),
   vagenteprod    NUMBER,   --Código agente
   CONSTRUCTOR FUNCTION ob_persis_produccion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_PERSIS_PRODUCCION" AS
   CONSTRUCTOR FUNCTION ob_persis_produccion
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.poliza := ob_iax_poliza();
      SELF.gidioma := pac_iax_common.f_get_cxtidioma();
      SELF.issuplem := 0;   --:= FALSE;   --Indica si se esta tratando un suplemento
      SELF.issimul := 0;   --:= FALSE;   --Indica que estamos tratando una simulación
      SELF.issave := 0;   --:= FALSE;   --per si ha gravat i no sha de netejar
      SELF.isneedtom := 1;   --:= TRUE;  --indica si s'ha de guardar el prenador o no
      SELF.isnewsol := 0;   --:= FALSE;   --per determinar si alguns missatges s'han de mostrar
      SELF.isconsult := 0;   --:= FALSE;   --indica que estem consulta una pòlissa ACC 13122008
      SELF.ismodifprop := 0;   --:= FALSE;   --Indica si se esta modificando una propuesta retenida.
      SELF.isaltagar := 0;   --:= FALSE;   --Indica si se trata de un alta de garantías
      SELF.imodifgar := 0;   --:= FALSE;   --Indica si se trata de una modificación de garantías
      SELF.isbajagar := 0;   --:= FALSE;   --Indica si se trata de un baja de garantías
      SELF.isaltacol := 0;   --:= FALSE;  -- Indica si es alta de colectivo (alta del certificado 0)
      SELF.isnotainfor := 0;   --:=FALSE
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_PERSIS_PRODUCCION" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_PRODUCCION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_PERSIS_PRODUCCION" TO "R_AXIS";
