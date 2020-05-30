--------------------------------------------------------
--  DDL for Type OB_CONMUTADOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_CONMUTADOR" AS OBJECT
-- BUG 9889 - 04/2009 - JRH  - Cuadre de los datos del cierre de ABRIL
/******************************************************************************
   NOMBRE:    OB_CONMUTADOR
   PROPÓSITO:      Objeto para contener los datos de los conmutadores

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/05/2009   JRH                1. Creación del objeto.
   2.0        25/05/2009   JRH                2. Bug 10228: CRE - Adaptar el PAC_CONMUTADORS per a que pugui treballar amb sobremortalitats
   3.0        01/05/2009   JRH                3. Bug 10228: CRE055 - Adaptar el PAC_CONMUTADORS per a que pugui treballar amb sobremortalitats
   4.0        15/01/2013   MDS                4. 0024497: POS101 - Configuraci?n Rentas Vitalicias

******************************************************************************/
(
   vmesanyo       NUMBER,
   vedadactx      NUMBER,
   vedadacty      NUMBER,
   vedadactx1     NUMBER,
   vedadacty1     NUMBER,
   vlxi           NUMBER,
   vlxi1          NUMBER,
   vlyi           NUMBER,
   vlyi1          NUMBER,
   vlxiini        NUMBER,
   vlyiini        NUMBER,
   vprog          NUMBER,
   vprogacum      NUMBER,
   vduraci        NUMBER,
   vfactreemb     NUMBER,
   vsobremort     NUMBER,
   n              NUMBER,
   --Conmutadores
   vqx            NUMBER,
   vqy            NUMBER,
   vdx            NUMBER,
   vdy            NUMBER,
   vdxy           NUMBER,
   vcx            NUMBER,
   vcy            NUMBER,
   vcxy           NUMBER,
   vnx            NUMBER,
   vny            NUMBER,
   vnxy           NUMBER,
   vnnx           NUMBER,
   vnny           NUMBER,
   vnnxy          NUMBER,
   vmxnr1         NUMBER,
   vmynr1         NUMBER,
   vmxynr1        NUMBER,
   vmx            NUMBER,
   vmy            NUMBER,
   vmxy           NUMBER,
   vux            NUMBER,
   vuy            NUMBER,
   vuxy           NUMBER,
   vjx            NUMBER,
   vjy            NUMBER,
   vjxy           NUMBER,
   vnx0           NUMBER,
   vny0           NUMBER,
   vnxy0          NUMBER,
   vnnx0          NUMBER,
   vnny0          NUMBER,
   vnnxy0         NUMBER,
   vux0           NUMBER,
   vuy0           NUMBER,
   vuxy0          NUMBER,
   vmx0           NUMBER,
   vmy0           NUMBER,
   vmxy0          NUMBER,
   vdx0           NUMBER,
   vdy0           NUMBER,
   vdxy0          NUMBER,
   vcx0           NUMBER,
   vcy0           NUMBER,
   vcxy0          NUMBER,
   vnxn           NUMBER,
   vnyn           NUMBER,
   vnxyn          NUMBER,
   vnnxn          NUMBER,
   vnnyn          NUMBER,
   vnnxyn         NUMBER,
   vuxn           NUMBER,
   vuyn           NUMBER,
   vuxyn          NUMBER,
   vmxn           NUMBER,
   vmyn           NUMBER,
   vmxyn          NUMBER,
   vdxn           NUMBER,
   vdyn           NUMBER,
   vdxyn          NUMBER,
   vnxn1          NUMBER,
   vnyn1          NUMBER,
   vnxyn1         NUMBER,
   vnnxn1         NUMBER,
   vnnyn1         NUMBER,
   vnnxyn1        NUMBER,
   vuxn1          NUMBER,
   vuyn1          NUMBER,
   vuxyn1         NUMBER,
   vmxn1          NUMBER,
   vmyn1          NUMBER,
   vmxyn1         NUMBER,
   vdxn1          NUMBER,
   vdyn1          NUMBER,
   vdxyn1         NUMBER,
   vexn1          NUMBER,
   veyn1          NUMBER,
   vcxn1          NUMBER,
   vcyn1          NUMBER,
   vcxyn1         NUMBER,
   vcxn           NUMBER,
   vcyn           NUMBER,
   vcxyn          NUMBER,
   vaxnpp         NUMBER,
   n_vaxpp        NUMBER,
   l_nvaxpp       NUMBER,
   axtkpp         NUMBER,
   axtnkpp        NUMBER,
   vaxnpu         NUMBER,
   n_vaxpu        NUMBER,
   l_nvaxpu       NUMBER,
   axtkpu         NUMBER,
   axtnkpu        NUMBER,
   --Interes
   vfacint1       NUMBER,
   vfacint2       NUMBER,
   vinter         NUMBER,
   vanyos         NUMBER,
   -- Bug 10228 - JRH - 01/05/2009 -  Bug 10228: CRE055 - Adaptar el PAC_CONMUTADORS per a que pugui treballar amb sobremortalitats
   vsx            NUMBER,
   vsy            NUMBER,
   vsxy           NUMBER,
   vsx0           NUMBER,
   vsy0           NUMBER,
   vsxn           NUMBER,
   vsyn           NUMBER,
   vsxyn          NUMBER,
   vsxn1          NUMBER,
   vsyn1          NUMBER,
   vsxyn1         NUMBER,
   vnxnr1         NUMBER,
   vnynr1         NUMBER,
   vnxynr1        NUMBER,
   vuxnr1         NUMBER,
   vuynr1         NUMBER,
   vuxynr1        NUMBER,
   vsxnr1         NUMBER,
   vsynr1         NUMBER,
   vsxynr1        NUMBER,
   vcxnr1         NUMBER,
   vcynr1         NUMBER,
   vcxynr1        NUMBER,
   vdxnr1         NUMBER,
   vdynr1         NUMBER,
   vdxynr1        NUMBER,
   --Fi Bug 10228

   --JRH POS
   px1            NUMBER,
   py1            NUMBER,
   pxy1           NUMBER,
   px1act         NUMBER,
   py1act         NUMBER,
   pxy1act        NUMBER,
   px1actrev      NUMBER,
   py1actrev      NUMBER,
   pxy1actrev     NUMBER,
   px1actacum     NUMBER,
   py1actacum     NUMBER,
   pxy1actacum    NUMBER,
   px1actrevacum  NUMBER,
   py1actrevacum  NUMBER,
   pxy1actrevacum NUMBER,
   qxact          NUMBER,
   qxactacum      NUMBER,
   interes        NUMBER,
   ipc            NUMBER,
   vacummx        NUMBER,
   vacummy        NUMBER,
   vacummxy       NUMBER,
   vrx            NUMBER,
   vry            NUMBER,
   vrxy           NUMBER,
   numpagas       NUMBER,   -- BUG 24497 - MDS - 15/01/2013: añadido número de pagas del mes
   cestado        NUMBER,   -- BUG 24497 - MDS - 15/01/2013: añadido estado de la persona
   cparen         NUMBER,   -- BUG 24497 - MDS - 15/01/2013: añadido parentesco de la persona con el titular
   vedad          NUMBER,   -- BUG 24497 - MDS - 15/01/2013: añadido edad a fecha de efecto de la póliza
   --FI JRH POS
   vrx0           NUMBER,
   vry0           NUMBER,
   vrxn           NUMBER,
   vryn           NUMBER,
   vrxyn          NUMBER,
   vrxn1          NUMBER,
   vryn1          NUMBER,
   vrxyn1         NUMBER,
   vrxnr1         NUMBER,
   vrynr1         NUMBER,
   vrxynr1        NUMBER,
   CONSTRUCTOR FUNCTION ob_conmutador
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_CONMUTADOR" AS
-- BUG 9889 - 04/2009 - JRH  - Cuadre de los datos del cierre de ABRIL
/******************************************************************************
   NOMBRE:    OB_CONMUTADOR
   PROPÓSITO:      Objeto para contener los datos de los conmutadores

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/05/2009   JRH                1. Creación del objeto.
   2.0        01/05/2009   JRH                2. Bug 10228: CRE055 - Adaptar el PAC_CONMUTADORS per a que pugui treballar amb sobremortalitats
******************************************************************************/
-- BUG 9889 - 04/2009 - JRH  - Cuadre de los datos del cierre de ABRIL
   CONSTRUCTOR FUNCTION ob_conmutador
      RETURN SELF AS RESULT IS
   BEGIN
      -- Bug 10228 - JRH - 01/05/2009 - 3.0                   3. Bug 10228: CRE055 - Adaptar el PAC_CONMUTADORS per a que pugui treballar amb sobremortalitats
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_CONMUTADOR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_CONMUTADOR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_CONMUTADOR" TO "PROGRAMADORESCSI";
