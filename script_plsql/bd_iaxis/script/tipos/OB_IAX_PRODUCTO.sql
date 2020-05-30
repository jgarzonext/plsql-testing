--------------------------------------------------------
--  DDL for Type OB_IAX_PRODUCTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODUCTO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODUCTO
   PROP�SITO:  Contiene informaci�n del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creaci�n del objeto.
   2.0        15/05/2008   AMC                2. Se quite el campo PINTTEC
   3.0        04/06/2010   PFA                3. Se a�ade campo COMPANIAS
   4.0        23/08/2010   ICV                4. Se a�ade campo TTITULO
   5.0        15/12/2010   LCF                5. Modif. CCOMPANI
   6.0        01/11/2013   LPP                6. Se a�ade campo interficies
******************************************************************************/
(
   cempres        NUMBER,   -- C�digo empresa
   cramo          NUMBER,   -- C�digo ramo
   cmodali        NUMBER,   -- C�digo modalidad
   ctipseg        NUMBER,   -- C�digo tipo de seguro
   ccolect        NUMBER,   -- C�digo de colectividad
   sproduc        NUMBER,   -- Secuencia del producto
   cactivo        NUMBER,   -- Indica si el producto est� activo o no. (VF 36)
   tactivo        VARCHAR2(100),   -- Descripci�n producto activo
   ctermfin       NUMBER,   -- Contratable desde el terminal financiero, 0.- Si, 1.- No (VF 444)
   ttermfin       VARCHAR2(100),   -- Descripci�n terminal financiero
   ctiprie        NUMBER,   -- Tipo riesgo    (VF 14)
   ttiprie        VARCHAR2(100),   -- Descripci�n tipo riesgo
   cobjase        NUMBER,   -- Tipo de objeto asegurado  (VF 65)
   tobjase        VARCHAR2(100),   -- Descripci�n tipo riesgo
   csubpro        NUMBER,   -- C�digo de subtipo de producto  (VF 37)
   tsubpro        VARCHAR2(100),   -- Descripci�n subtipo de producto
   nmaxrie        NUMBER,   -- N�mero riesgos m�ximos
   c2cabezas      NUMBER,   -- 2 Cabezas
   cagrpro        NUMBER,   -- Codigo agrupaci�n de producto  (VF 283)
   tagrpro        VARCHAR2(100),   -- Descripci�n codigo agrupacion de producto
   cprprod        NUMBER,   -- Prestaciones del producto 0-Capital 1-Renta. Solo Ahorro y Rentas (VF 205)
   tprprod        VARCHAR2(100),   -- Descripci�n prestaciones del producto
   cramdgs        NUMBER,   -- C�digo ramo dgs
   tramdgs        VARCHAR2(100),   -- Descripci�n c�digo ramo dgs
   cdivisa        NUMBER,   -- Clave de Divisa
   tdivisa        VARCHAR2(100),   -- Descripci�n clave de divisa
   pgaexex        NUMBER,   -- % de Gastos Externos. Parte Externos
   pgaexin        NUMBER,   -- % de Gastos Externos. Parte Internos
   pgasext        NUMBER,   -- Porcentaje de gastos externos.
   pgasint        NUMBER,   -- Porcentaje de gastos internos
   ttitulo        VARCHAR2(40),   --Titulo del producto seg�n idioma del contexto
   ccompani       NUMBER,   -- C�digo compa��a
   tcompani       VARCHAR2(100),   -- Literal descripci�n companyia
   titulo         t_iax_prodtitulo,   -- Titulos producto
   gestion        ob_iax_prodgestion,   -- Datos gesti�n producto
   admprod        ob_iax_prodadministracion,   -- Datos administraci�n
   forpago        t_iax_prodformapago,   -- Datos forma pago
   dattecn        ob_iax_proddatostecnicos,   -- Datos tecnicos
   unitulk        ob_iax_productosulk,   -- Productos unit link
   datrent        ob_iax_productosren,   -- Productos rentas
   activid        t_iax_prodactividades,   -- Actividades producto
   garantias      t_iax_prodgarantias,   -- Garantias producto
   beneficiarios  t_iax_prodbeneficiarios,   -- Beneficiarios producto
   preguntas      t_iax_prodpreguntas,   -- Preguntas producto
   parametros     t_iax_prodparametros,   -- Parametros producto
   companias      t_iax_companiprod,   -- Compa�ias producto
   planpensiones  t_iax_planpensiones,   -- Plan Pensi�n JBN 27281: ENSA998-Mantenimiento de fondos y planes de pensiones
   interficies    t_iax_interficies,
   CONSTRUCTOR FUNCTION ob_iax_producto
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODUCTO" AS
/******************************************************************************
   NOMBRE:       OB_IAX_PRODUCTO
   PROP�SITO:  Contiene informaci�n del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creaci�n del objeto.
   2.0        13/10/2010   ICV                2. Se a�ade Campo TTITULO
   3.0        15/12/2010   LCF                3. Modif. CCOMPANI
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_producto
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cempres := 0;
      SELF.cramo := 0;
      SELF.cmodali := 0;
      SELF.ctipseg := 0;
      SELF.ttitulo := NULL;
      SELF.planpensiones := NULL;   --JBN 27281: ENSA998-Mantenimiento de fondos y planes de pensiones
      SELF.interficies := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODUCTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODUCTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODUCTO" TO "PROGRAMADORESCSI";
