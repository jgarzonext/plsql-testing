--------------------------------------------------------
--  DDL for Type OB_IAX_PERSONAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PERSONAS" AS OBJECT
/******************************************************************************
NOMBRE:       OB_IAX_PERSONAS
PROP¿SITO:  Contiene la informaci¿n de las personas
REVISIONES:
Ver        Fecha        Autor             Descripci¿n
---------  ----------  ---------------  ------------------------------------
1.0        01/08/2007   ACC                1. Creaci¿n del objeto.
           26/03/2008   SBG                2. Creaci¿n del atributo SNIP.
           04/04/2008   JRH                3. Creaci¿n atributos spereal, tabla de contactos, cuentas y nacionalidades
4.0        11/04/2011   APD                4. 0018225: AGM704 - Realizar la modificaci¿n de precisi¿n el cagente
5.0        19/07/2011   ICV                5. 0018941: LCOL_P001 - PER - Personas relacionadas. Representante legal
6.0        23/09/2011   MDS                6. 0018943  Modulo SARLAFT en el mantenimiento de personas
7.0        04/11/2011   JGR                7. 0019985: LCOL_A001-Control de las matriculas (prenotificaciones)
8.0        19/11/2011   APD                8. 0019587: LCOL_P001 - PER - Validaciones dependiendo del tipo de documento
9.0        23/11/2011   APD                9. 0020126: LCOL_P001 - PER - Documentaci¿n en personas
10.0       28/12/2011   AMC               10. Se a¿ade los campos swrut y tdigitoide Bug 20613/101749 28/12/2011 - AMC
11.0        22/08/2016  HRE               11  CONF-186: Se incluye manejo de marcas.
******************************************************************************/
(
   sperson        NUMBER(10),   --C¿digo de Persona
   cagente        NUMBER,   --C¿digo del agente -- Bug 18225 - APD - 11/04/2011 - la precisi¿n debe ser NUMBER
   tagente        VARCHAR2(200),   --Descripcion del agente
   tapelli1       VARCHAR2(200),   --Descripcion del primer apellido --Bug 29738/166355 - 14/02/2014 - AMC
   tapelli2       VARCHAR2(60),   --Descripcion del segundo apellido
   tnombre        VARCHAR2(200),   --Descripci¿n del Nombre --Bug 29738/169099 - 13/03/2014 - AMC
   nordide        NUMBER(10),   --Numero orden para posibles Censos/Pasaportes repetidos
   ctipper        NUMBER(3),   --Tipo de persona. f¿sica o Jur¿dica(V.F. 85)
   ttipper        VARCHAR2(100),   --Descripci¿n del tipo de persona
   ctipide        NUMBER(3),   --Tipo de identificaci¿n persona ( V.F. 672.  NIf, pasaporte, etc.
   ttipide        VARCHAR2(100),   --Descripci¿n tipo de identificaci¿n persona
   nnumide        VARCHAR2(50),   --N¿mero de NIF
   fnacimi        DATE,   --Fecha de nacimiento
   csexper        NUMBER(2),   --C¿digo de Sexo: 1.- Hombre, 2.- Mujer. CVALOR: 11
   tsexper        VARCHAR2(100),   --Descripci¿n de Sexo
   cestper        NUMBER(2),   --Estado de la persona (V.F. 13)
   testper        VARCHAR2(100),   --Descripci¿n estado persona
   fjubila        DATE,   --Fecha de Jubilacion de la persona
   fdefunc        DATE,   --Fecha de Defunci¿n
   cusuari        VARCHAR2(20),   --C¿digo usuario modificaci¿n registro
   fmovimi        DATE,   --Fecha modificaci¿n registro
   cmutualista    NUMBER(1),   --Indica si es mutualista o no. 0.- No es mutualista, 1.- S¿ es mutualista
   cidioma        NUMBER(2),   --C¿digo idioma
   swpubli        NUMBER(1),   --Vale 1 si la persona es publica (la pueden ver todos), 0 en caso contrario
   snip           VARCHAR2(15),   --Identificador interno de la persona (de la entidad financiera)
   cprofes        VARCHAR2(6),   --Identificador de la profesi¿n
   cpais          NUMBER(5),   --Identificador del pais
   tprofes        VARCHAR2(100),   --Profesi¿n
   tpais          VARCHAR2(100),   --Pais
   tsiglas        VARCHAR2(200),   -- Nombre persona juridica --Bug 29738/166355 - 14/02/2014 - AMC
   spereal        NUMBER,   --identificador persona en tablas reales
   cestciv        NUMBER(2),   --C¿digo estado civil
   testciv        VARCHAR2(100),   --Descripci¿n del estado civil. Vf.: 12
   tnombre1       VARCHAR2(60),   --Primer nombre de la persona en caso de segundo nombre
   tnombre2       VARCHAR2(60),   --Segundo nombre de la persona en caso de segundo nombre
   swrut          NUMBER(1),   -- Bug 20613/101749 28/12/2011 - AMC
   tdigitoide     VARCHAR2(1),   -- Digitol de verificaci¿n Bug 20613/101749 28/12/2011 - AMC
   direcciones    t_iax_direcciones,   --Tabla contiene las direcciones
   contactos      t_iax_contactos,   --contactos de la persona
   ccc            t_iax_ccc,   --Cuentas dela persona
   nacionalidades t_iax_nacionalidades,   --Nacionalidades de la persona
   identificadores t_iax_identificadores,   --Identificadores asociados a la persona.
--vinculos        T_IAX_VINCULOS,            --vinculos de la persona
   irpf           t_iax_irpf,   --Datos de irpf
--irpfdescen        T_IAX_IRPFDESCEN,        --Datos de irpf de los descendientes
--irpfmayores        T_IAX_IRPFMAYORES,      --Datos de irpf de los mayores a su cargo.
   personas_rel   t_iax_personas_rel,   --Personas relacionadas
   hispersonas_rel   t_iax_personas_rel,   --Personas relacionadas
   regimen_fiscal t_iax_regimenfiscal,   --Regimen Fiscal
   datos_sarlaft  t_iax_sarlaft,   --Datos sarlaft
   datos_riesgo_financiero  t_iax_riesgo_financiero,   --Datos Riesgo
   tarjetas       t_iax_ccc,   --N¿mero de tarjeta de la persona
-- Bug 20126 - APD - 23/11/2011
   datos_documentacion t_iax_docpersona,   -- Datos de los documentos de una persona
   perautcarnets  t_iax_perautcarnets,
   perlopd        t_iax_perlopd,
   permarcas      t_iax_permarcas,--marcas asociadas a la persona, BUG CONF-186  - Fecha (22/08/2016) - HRE
   cestperlopd    NUMBER(5),   -- ¿ltimo estado de la LOPD
   testperlopd    VARCHAR2(200),   --descripci¿n ¿ltimo estado de la LOPD
   cpreaviso      NUMBER(1),   --Tiene o no preaviso
   tpreaviso      VARCHAR2(10),   --Tiene o no preaviso
   cocupacion     VARCHAR2(6),   -- Bug 25456/133727 - 16/01/2013 - AMC
   tocupacion     VARCHAR2(100),   -- Bug 25456/133727 - 16/01/2013 - AMC
   cciiu NUMBER,   -- Bug 398/jira CONF-841 - 09/06/201 - Bartolo Herrera
   dciiu VARCHAR2(100),   -- Bug 398/jira CONF-841 - 09/06/201 - Bartolo Herrera
   CONSTRUCTOR FUNCTION ob_iax_personas
      RETURN SELF AS RESULT
)
NOT FINAL
 ALTER TYPE "AXIS"."OB_IAX_PERSONAS" ADD ATTRIBUTE (impuestos T_IAX_IMPUESTOS) CASCADE
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PERSONAS" AS
   CONSTRUCTOR FUNCTION ob_iax_personas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := 0;
      SELF.tapelli1 := '';
      SELF.tapelli2 := '';
      SELF.nordide := 0;
      SELF.tnombre := '';
      SELF.nnumide := '';
      SELF.fnacimi := NULL;
      SELF.csexper := 0;
      SELF.tsexper := '';
      SELF.swpubli := 1;
      SELF.snip := NULL;
      SELF.spereal := NULL;   --JRH 04/2008
      SELF.direcciones := NULL;
      SELF.contactos := NULL;
      SELF.ccc := NULL;
      SELF.nacionalidades := NULL;
      SELF.identificadores := NULL;
      SELF.irpf := NULL;
      SELF.permarcas := NULL; --BUG CONF-186  - Fecha (22/08/2016) - HRE
      SELF.cestciv := 0;   --Codigo estado civil
      SELF.testciv := NULL;   --Valor Fijo 12
      SELF.tnombre1 := '';
      SELF.tnombre2 := '';
      SELF.datos_sarlaft := NULL;   -- Datos sarlaft de la persona
      SELF.datos_riesgo_financiero := NULL;
      SELF.tarjetas := NULL;   --N¿mero de tarjeta de la persona
      SELF.swrut := NULL;   -- Bug 20613/101749 28/12/2011 - AMC
      SELF.tdigitoide := NULL;   -- Bug 20613/101749 28/12/2011 - AMC
      SELF.cpreaviso := NULL;
      SELF.tpreaviso := NULL;
      SELF.cocupacion := NULL;   -- Bug 25456/133727 - 16/01/2013 - AMC
      SELF.tocupacion := NULL;   -- Bug 25456/133727 - 16/01/2013 - AMC
      SELF.cciiu := NULL;   -- Bug 398/jira CONF-841 - 09/06/201 - Bartolo Herrera
      SELF.dciiu := NULL;   -- Bug 398/jira CONF-841 - 09/06/201 - Bartolo Herrera

      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PERSONAS" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PERSONAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PERSONAS" TO "R_AXIS";
