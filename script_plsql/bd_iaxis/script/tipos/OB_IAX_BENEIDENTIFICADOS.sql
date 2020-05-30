--------------------------------------------------------
--  DDL for Type OB_IAX_BENEIDENTIFICADOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BENEIDENTIFICADOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BENEIDENTIFICADOS
   PROPàSITO:  Contiene informaci¢n de un beneficiario identificado.

   REVISIONES:
   Ver        Fecha        Autor             DescripciÇün
   ---------  ----------  ---------------  ------------------------------------
   1.0        19/10/2011   ICV                1. Creaci¢n del objeto.
   2.0        20/12/2012   MDS                2. 0024717: (POSPG600)-Parametrizacion-Tecnico-Descripcion en listas Tipos Beneficiarios RV - Cambiar descripcion en listas Tipos Beneficiar
   3.0        06/05/2014   ECP                3. 0031204: LCOL896-Soporte a cliente en Liberty (Mayo 2014) /0012459: Error en beneficiarios al duplicar Solicitudes
   4.0        10/06/2015   IGIL               4. 34866 - 206821_Beneficiarios adicion campo ctipocon
   4.1        28/07/2015   LMG                5. 34866 - 209952 - Se agrega campo ttipocon
******************************************************************************/
(
   --Ini 31204/12459 --ECP--06/05/2014
   cgarant        NUMBER(4),
   --Fin 31204/12459 --ECP--06/05/2014
   sperson        NUMBER(10),   -- Codigo de persona beneficiario
   sperson_tit    NUMBER(10),   -- Codigo de persona beneficiario titular
   finiben        DATE,   -- Fecha inicio beneficiario
   ffinben        DATE,   -- Fecha fin beneficiario
   ctipben        NUMBER(2),   -- Codigo de tipo de beneficiario
   ttipben        VARCHAR2(100),   -- Descripcion del tipo de beneficiario
   cparen         NUMBER(2),   -- Codigo de parentesco
   tparen         VARCHAR2(100),   -- Descripci¢n del parentesco
   pparticip      NUMBER(5, 2),   -- Porcentaje de participaci¢n
   ttipide        VARCHAR2(40),   -- Descripci¢n tipo de identificaci¢n
   nnumide        VARCHAR2(14),   -- Numero de documento de identificaci¢n
   nombre_ben     VARCHAR2(200),   -- Nombre y apellidos del beneficiario
   nombre_tit     VARCHAR2(200),   -- Nombre y apellidos del beneficiario titular
   norden         NUMBER(2),   -- Orden dentro del objeto
   cestado        NUMBER(2),   -- Codigo estado del beneficiario
   testado        VARCHAR2(100),   -- Descripcion estado del beneficiario
   cheredado      NUMBER(1),   -- Indica si el beneficiario es heredado 0-No 1-Si, Bug 30365/175325 - 03/06/2014
   ctipocon       NUMBER(2),   -- Tipo de contingencia en la que se afecta el beneficiario (VF 8001024)
   ttipocon       VARCHAR2(100),   -- Descripción de tipo de contingencia
   CONSTRUCTOR FUNCTION ob_iax_beneidentificados
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BENEIDENTIFICADOS" AS
   CONSTRUCTOR FUNCTION ob_iax_beneidentificados
      RETURN SELF AS RESULT IS
   BEGIN
      --Ini 31204/12459 --ECP--06/05/2014
      SELF.cgarant := 0;
      --Fin 31204/12459 --ECP--06/05/2014
      SELF.sperson := 0;
      SELF.sperson_tit := 0;
      SELF.finiben := NULL;
      SELF.ffinben := NULL;
      SELF.ctipben := 0;
      SELF.ttipben := NULL;
      SELF.cparen := 0;
      SELF.tparen := NULL;
      SELF.pparticip := 0;
      SELF.ttipide := NULL;
      SELF.nnumide := NULL;
      SELF.nombre_ben := NULL;
      SELF.nombre_tit := NULL;
      SELF.norden := 0;
      cestado := NULL;   -- Código estado del beneficiario
      testado := NULL;   -- Descripción estado del beneficiario
      cheredado := 0;   -- Indica si el beneficiario es heredado 0-No 1-Si, Bug 30365/175325 - 03/06/2014
      ctipocon := NULL;   -- Tipo de contingencia en la que se afecta el beneficiario (VF 8001024)
      ttipocon := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BENEIDENTIFICADOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BENEIDENTIFICADOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BENEIDENTIFICADOS" TO "PROGRAMADORESCSI";
