--------------------------------------------------------
--  DDL for Type OB_IAX_AGENTES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AGENTES" AS OBJECT
/******************************************************************************
   NOMBRE:  OB_IAX_AGENTES
   PROP¿¿SITO:     Objeto para contener los datos de los agentes.

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/09/2008   AMC                1. Creaci¿¿n del objeto.
   2.0        08/06/2009   ETM                2.0010341: APR - Informaci¿¿n adicional al mto de agentes
   3.0        11/04/2011   APD                3. 0018225: AGM704 - Realizar la modificaci¿¿n de precisi¿¿n el cagente
   4.0        14/09/2011   APD                4. 0019169: LCOL_C001 - Campos nuevos a a¿¿adir para Agentes.
   5.0        01/03/2012   JMF                0021425 MDP - COM - AGENTES Secci¿¿n datos generales
   6.0        26/02/2013   LCF                6. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
   7.0        21/05/2014   FAL                7. 0031489: TRQ003-TRQ: Gap de comercial. Liquidaci¿n a nivel de Banco
   8.0        20/05/2015   MNUSTES            8. 33977-0201044 Prcesion de los campos cprovin, cpoblac
   9.0        16/01/2019   ACL                9. TCS_1: Se agrega el campo claveinter.
   10.0       01/02/2019   ACL                10. TCS_1569B: Se agrega campos de impuestos.
******************************************************************************/
(
   cagente        NUMBER,   -- cod.del agente -- Bug 18225 - APD - 11/04/2011 - la precisi¿¿n debe ser NUMBER
   cretenc        NUMBER(2),   -- cod. de retenci¿¿n
   tretenc        VARCHAR2(40),   -- descripci¿¿n de retenci¿¿n
   ctipiva        NUMBER(2),   -- cod. de iva
   ttipiva        VARCHAR2(40),   -- descripci¿¿n del iva
   ccomisi        NUMBER,   -- cod. de comisi¿¿n
   tcomisi        VARCHAR2(100),   -- descripci¿¿n de comisi¿¿n
   ctipage        NUMBER(2),   -- cod. de tipo de agente
   tctipage       VARCHAR2(100),   -- descripci¿¿n de tipo agente
   cactivo        NUMBER(3),   -- Agente activo (VF:31) -- bug 0021425 - 01/03/2012 - JMF
   tactivo        VARCHAR2(100),   -- descripci¿¿n de c¿¿digo
   cbancar        VARCHAR2(32),   -- cuenta bancaria
   ncolegi        VARCHAR2(10),   -- n¿¿de colegiado--BUG 0010341: APR - Informaci¿¿n adicional al mto de agentes
   fbajage        DATE,   -- fecha de baja
   sperson        NUMBER(10),   -- cod. de persona
   cdomici        NUMBER,   -- cod. de domicilio
   tnombre        VARCHAR2(100),   -- nombre del agente
   nnif           VARCHAR2(14),   -- nif del agente
   ctipban        NUMBER(1),   -- Tipo de cuenta bancaria
----------------------------------------
   -- Bug 19169 -- se a¿¿aden campos en el objeto
   finivigcom     DATE,   --Inicio vigencia del cuadro de comisi¿¿n asignado al agente
   ffinvigcom     DATE,   --    Fin vigencia del cuadro de comisi¿¿n asignado al agente
   csobrecomisi   NUMBER(2),   --     C¿¿digo de sobrecomisi¿¿n
   tsobrecomisi   VARCHAR2(100),   --     Descripci¿¿n del C¿¿digo de sobrecomisi¿¿n
   finivigsobrecom DATE,   --     Inicio vigencia del cuadro de sobrecomisi¿¿n asignado al agente
   ffinvigsobrecom DATE,   --     Fin vigencia del cuadro de sobrecomisi¿¿n asignado al agente
   talias         VARCHAR2(100),   --     Nombre corto del agente
   cliquido       NUMBER(3),   --     Indica si el Intermediario tiene autorizaci¿¿n para desconectarse, detener, directamente las comisiones. V.F. XX
   tliquido       VARCHAR2(100),   --     Descripci¿¿n de si el Intermediario tiene autorizaci¿¿n para desconectarse, detener, directamente las comisiones
--
   ctipadn        NUMBER(3),   --     Tipo de Administraci¿¿n de Negocio (ADN). V.F.XX
   ttipadn        VARCHAR2(100),   --     Descripci¿¿n del Tipo de ADN
   cagedep        NUMBER,   --     C¿¿digo agente ADN de la cual depente. Obligatorio si CTIPADN es 'ADN dependiente de otra ADN'
   tagedep        VARCHAR2(200),   --     Nombre agente ADN de la cual depente. Obligatorio si CTIPADN es 'ADN dependiente de otra ADN'
   ctipint        NUMBER(3),   --     Tipo de Intermediario. V.F. XX
   ttipint        VARCHAR2(100),   --     Descripci¿¿n del Tipo de Intermediario
   cageclave      NUMBER,   --     Identificador del agente agrupador de otras claves de Intermediarios
   tageclave      VARCHAR2(200),   --     Nombre del agente agrupador de otras claves de Intermediarios
   cofermercan    NUMBER(1),   --     Indica si se ha recibido o no el contrato firmado. (0.-No; 1.- S¿¿)
   frecepcontra   DATE,   --     Fecha de recepci¿¿n del contrato firmado. Se podr¿¿ informar s¿¿lo si el campo COFERMERCAN = 1
   cidoneidad     NUMBER(3),   --     Indica si cumple o no con los requisitos de capacitaci¿¿n para ser Intermediario. V.F. XX
   tidoneidad     VARCHAR2(100),   --     Descripci¿¿n de si cumple o no con los requisitos de capacitaci¿¿n para ser Intermediario
   spercomp       NUMBER(10),   --     Clientes ¿¿nicos identificados como compa¿¿¿¿as.
   ccompani       NUMBER,   -- C¿¿digo de compa¿¿ia
   tcompani       VARCHAR2(100),   --     Descripci¿¿n de Clientes ¿¿nicos identificados como compa¿¿¿¿as
   cofipropia     NUMBER(3),   --     Indica si el Intermediario tiene oficina propia. V.F. XX
   tofipropia     VARCHAR2(100),   --     Descripci¿¿n de si el Intermediario tiene oficina propia
   cclasif        NUMBER(3),   --     Indica la clasificaci¿¿n del Intermediario. V.F. XX
   tclasif        VARCHAR2(100),   --     Descripci¿¿n de la clasificaci¿¿n del Intermediario
   nplanpago      NUMBER(3),   --     Indica los meses a los que se aplica la subvenci¿¿n en la liquidaci¿¿n
   nnotaria       NUMBER(10),   --     Indica el n¿¿mero de notaria con el cual est¿¿ registrado el Intermediario
   cprovin        NUMBER,   -- Codigo de Provincia de la ciudad de notaria Bug 33977-0201044 20/05/2015 - precision NUMBER
   tprovin        VARCHAR2(200),   -- Descripcion de Provincia de la ciudad de notaria
   cpoblac        NUMBER,   -- C¿¿digo de Poblaci¿¿n de la ciudad de notaria Bug 33977-0201044 20/05/2015 - precision NUMBER
   tpoblac        VARCHAR2(200),   -- Descripcion de Poblaci¿¿n de la ciudad de notaria
   nescritura     NUMBER(10),   --     Indica el n¿¿mero de Escritura P¿¿blica asignada a la sociedad
   faltasoc       DATE,   --    Fecha de constituci¿¿n de la sociedad
   tgerente       VARCHAR2(100),   --     Nombre del agente
   tcamaracomercio VARCHAR2(150),   --     Nombre de la ciudad de la c¿¿mara de comercio
   soportearp     t_iax_soportearp_agente,   --     Colecci¿¿n de OB_IAX_SOPORTEARP_AGENTE
   prodparticipacion t_iax_prodparticipacion_age,   --     Colecci¿¿n de OB_IAX_PRODPARTICIPACION_AGENTE
   subvencion     t_iax_subvencion_agente,   --    Colecci¿¿n de OB_IAX_SUBVENCION_AGENTE
   -- Fin Bug 19169 -- se a¿¿aden campos en el objeto
   -- Bug 20999 - APD - 25/01/2012
   ccomisi_indirect NUMBER(2),   -- cod. de comisi¿¿n indirecta
   tcomisi_indirect VARCHAR2(100),   -- descripci¿¿n de comisi¿¿n indirecta
   finivigcom_indirect DATE,   --Inicio vigencia del cuadro de comisi¿¿n indirecta asignado al agente
   ffinvigcom_indirect DATE,   --    Fin vigencia del cuadro de comisi¿¿n indirecta asignado al agente
   -- fin Bug 20999 - APD - 25/01/2012
   -- ini bug 0021425 - 01/03/2012 - JMF
   ctipmed        NUMBER(3),   -- Tipo de mediador (VF:1062)
   ttipmed        VARCHAR2(200),   -- Descripcion Tipo de mediador (VF:1062)
   tnomcom        VARCHAR2(200),   -- Nombre comercial
   cdomcom        NUMBER(2),   -- Direcci¿¿n comercial del agente
   tdomcom        VARCHAR2(200),   -- Descripcion Direcci¿¿n comercial del agente
   ctipretrib     NUMBER(3),   -- Tipo de retribuci¿¿n (VF:1063)
   ttipretrib     VARCHAR2(200),   -- Descripcion Tipo de retribuci¿¿n (VF:1063)
   cmotbaja       NUMBER(3),   -- Motivo de baja agente (VF:1066)
   tmotbaja       VARCHAR2(200),   -- Descripcion Motivo de baja agente (VF:1066)
   cbloqueo       NUMBER(3),   -- Bloqueo agente  (VF:1067)
   tbloqueo       VARCHAR2(200),   -- Descripcion Bloqueo agente  (VF:1067)
   nregdgs        VARCHAR2(200),   -- N¿¿ de registros DGS
   finsdgs        DATE,   -- Fecha de inscripci¿¿n DGS
   crebcontdgs    NUMBER(3),   -- Contrato recibido: 0-No, 1-Si.
   agrupador      NUMBER(3),   -- Agrupador agentes (VF:1064)
   tagrupador     VARCHAR2(200),   -- Descripcion Agrupador agentes (VF:1064)
   cactividad     NUMBER(3),   -- Actividad principal agente (VF:1065)
   tactividad     VARCHAR2(200),   -- Descripcion Actividad principal agente (VF:1065)
   ctipoactiv     NUMBER(3),   -- Tipo de actividad agente (VF:1068)
   ttipoactiv     VARCHAR2(200),   -- Descripcion Tipo de actividad agente (VF:1068)
   pretencion     NUMBER(5, 2),   -- % Retenci¿¿n asignada al agente
   cincidencia    NUMBER(3),   -- Incidencias agente (VF:1069)
   tincidencia    VARCHAR2(200),   -- Descripcion Incidencias agente (VF:1069)
   crating        NUMBER(3),   -- Rating agente (VF:1070)
   trating        VARCHAR2(200),   -- Descripcion Rating agente (VF:1070)
   tvaloracion    VARCHAR2(500),   -- Valoraci¿¿n situaci¿¿n financiera: administraci¿¿n explicar¿¿ la resoluci¿¿n del an¿¿lisis
   cresolucion    NUMBER(3),   -- Resoluci¿¿n agente (VF:1071)
   tresolucion    VARCHAR2(200),   -- Descripcion Resoluci¿¿n agente (VF:1071)
   ffincredito    DATE,   -- Per¿¿odo cr¿¿dito
   nlimcredito    NUMBER,   --25803   -- L¿¿mite cr¿¿dito
   tcomentarios   VARCHAR2(1000),   -- Comentarios
   coblccc        NUMBER(2),   --Obligatoriedad CCC
   bancos         t_iax_age_banco,   --Bancos del agente
   entidadesaseg  t_iax_age_entidadaseg,   --entidades aseguradoras del agente
   asociaciones   t_iax_age_asociacion,   -- asociaciones del agente
   referencias    t_iax_age_referencia,
                                          --referencias del agente
   -- fin bug 0021425 - 01/03/2012 - JMF
   -- bug. 27949
   fultrev        DATE,
   fultckc        DATE,
   ctipbang       NUMBER,
   cbanges        VARCHAR2(50),
   cclaneg        VARCHAR2(50),
   --
   -- fin bug 0021425 - 01/03/2012 - JMF
   ctipage_liquida NUMBER,   -- BUG 31489 - FAL - 21/05/2014
   iobjetivo      NUMBER,
   ibonifica      NUMBER,
   pcomextr       NUMBER,
   ctipcal        NUMBER,
   cforcal        NUMBER,
   cmespag        NUMBER,
   pcomextrov     NUMBER,
   ppersisten     NUMBER,
   pcompers       NUMBER,
   ctipcalb       NUMBER,
   cforcalb       NUMBER,
   cmespagb       NUMBER,
   pcombusi       NUMBER,
   ilimiteb       NUMBER,
   ccodcon        VARCHAR2(20),
   claveinter     VARCHAR2(10),   -- TCS_1 - ACL - 16/01/2019
   cdescriiva     VARCHAR2(200),  -- TCS_1569B - ACL - 01/02/2019 
   descricretenc  VARCHAR2(200),  -- TCS_1569B - ACL - 01/02/2019 
   descrifuente   VARCHAR2(100),  -- TCS_1569B - ACL - 01/02/2019 
   cdescriica     VARCHAR2(100),  -- TCS_1569B - ACL - 01/02/2019 
   cexpide        NUMBER,
   --AAC_INI-CONF_379-20160927
   corteprod      NUMBER,
   --AAC_FI-CONF_379-20160927
   CONSTRUCTOR FUNCTION ob_iax_agentes
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AGENTES" AS
   CONSTRUCTOR FUNCTION ob_iax_agentes
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cagente := NULL;
      SELF.coblccc := NULL;
      SELF.cretenc := NULL;
      SELF.tretenc := NULL;
      SELF.ctipiva := NULL;
      SELF.ttipiva := NULL;
      SELF.ccomisi := NULL;
      SELF.tcomisi := NULL;
      SELF.ctipage := NULL;
      SELF.tctipage := NULL;
      SELF.cactivo := NULL;
      SELF.tactivo := NULL;
      SELF.cbancar := NULL;
      SELF.ncolegi := NULL;
      SELF.fbajage := NULL;
      SELF.sperson := NULL;
      SELF.cdomici := NULL;
      SELF.tnombre := NULL;
      SELF.nnif := NULL;
      SELF.ctipban := NULL;
----------------------------------------
   -- Bug 19169 -- se a¿¿aden campos en el objeto
      SELF.finivigcom := NULL;
      SELF.ffinvigcom := NULL;
      SELF.csobrecomisi := NULL;
      SELF.tsobrecomisi := NULL;
      SELF.finivigsobrecom := NULL;
      SELF.ffinvigsobrecom := NULL;
      SELF.talias := NULL;
      SELF.cliquido := NULL;
      SELF.tliquido := NULL;
--
      SELF.ctipadn := NULL;
      SELF.ttipadn := NULL;
      SELF.cagedep := NULL;
      SELF.tagedep := NULL;
      SELF.ctipint := NULL;
      SELF.ttipint := NULL;
      SELF.cageclave := NULL;
      SELF.tageclave := NULL;
      SELF.cofermercan := NULL;
      SELF.frecepcontra := NULL;
      SELF.cidoneidad := NULL;
      SELF.tidoneidad := NULL;
      SELF.spercomp := NULL;
      SELF.ccompani := NULL;
      SELF.tcompani := NULL;
      SELF.cofipropia := NULL;
      SELF.tofipropia := NULL;
      SELF.cclasif := NULL;
      SELF.tclasif := NULL;
      SELF.nplanpago := NULL;
      SELF.nnotaria := NULL;
      SELF.cpoblac := NULL;
      SELF.tpoblac := NULL;
      SELF.cprovin := NULL;
      SELF.tprovin := NULL;
      SELF.nescritura := NULL;
      SELF.faltasoc := NULL;
      SELF.tgerente := NULL;
      SELF.tcamaracomercio := NULL;
         -- Fin Bug 19169 -- se a¿¿aden campos en el objeto
      -- Bug 20999 - APD - 25/01/2012
      SELF.ccomisi_indirect := NULL;   -- cod. de comisi¿¿n indirecta
      SELF.tcomisi_indirect := NULL;   -- descripci¿¿n de comisi¿¿n indirecta
      SELF.finivigcom_indirect := NULL;   --Inicio vigencia del cuadro de comisi¿¿n indirecta asignado al agente
      SELF.ffinvigcom_indirect := NULL;   --    Fin vigencia del cuadro de comisi¿¿n indirecta asignado al agente
      -- fin Bug 20999 - APD - 25/01/2012

      -- ini bug 0021425 - 01/03/2012 - JMF
      SELF.ctipmed := NULL;
      SELF.ttipmed := NULL;
      SELF.tnomcom := NULL;
      SELF.cdomcom := NULL;
      SELF.tdomcom := NULL;
      SELF.ctipretrib := NULL;
      SELF.ttipretrib := NULL;
      SELF.cmotbaja := NULL;
      SELF.tmotbaja := NULL;
      SELF.cbloqueo := NULL;
      SELF.tbloqueo := NULL;
      SELF.nregdgs := NULL;
      SELF.finsdgs := NULL;
      SELF.crebcontdgs := NULL;
      SELF.agrupador := NULL;
      SELF.tagrupador := NULL;
      SELF.cactividad := NULL;
      SELF.tactividad := NULL;
      SELF.ctipoactiv := NULL;
      SELF.ttipoactiv := NULL;
      SELF.pretencion := NULL;
      SELF.cincidencia := NULL;
      SELF.tincidencia := NULL;
      SELF.crating := NULL;
      SELF.trating := NULL;
      SELF.tvaloracion := NULL;
      SELF.cresolucion := NULL;
      SELF.tresolucion := NULL;
      SELF.ffincredito := NULL;
      SELF.nlimcredito := NULL;
      SELF.tcomentarios := NULL;
      -- fin bug 0021425 - 01/03/2012 - JMF
      -- bug. 27949
      SELF.fultrev := NULL;
      SELF.fultckc := NULL;
      SELF.ctipbang := NULL;
      SELF.cbanges := NULL;
      SELF.cclaneg := NULL;
      --
      SELF.ctipage_liquida := NULL;   -- BUG 31489 - FAL - 21/05/2014
      SELF.iobjetivo := NULL;
      SELF.ibonifica := NULL;
      SELF.pcomextr := NULL;
      SELF.ctipcal := NULL;
      SELF.cforcal := NULL;
      SELF.cmespag := NULL;
      SELF.pcomextrov := NULL;
      SELF.ppersisten := NULL;
      SELF.pcompers := NULL;
      SELF.ctipcalb := NULL;
      SELF.cforcalb := NULL;
      SELF.cmespagb := NULL;
      SELF.pcombusi := NULL;
      SELF.ilimiteb := NULL;
      SELF.ccodcon := NULL;
	  SELF.claveinter := NULL;   -- TCS_1 - ACL - 16/01/2019
	  SELF.cdescriiva := NULL;	 -- TCS_1569B - ACL - 01/02/2019 
      SELF.descricretenc := NULL;	-- TCS_1569B - ACL - 01/02/2019 
      SELF.descrifuente := NULL;	-- TCS_1569B - ACL - 01/02/2019 
      SELF.cdescriica := NULL;		-- TCS_1569B - ACL - 01/02/2019 
      SELF.cexpide := NULL;
      --AAC_INI-CONF_379-20160927
      SELF.corteprod := NULL;
      --AAC_FI-CONF_379-20160927
      RETURN;
   END;
END;


/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AGENTES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGENTES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGENTES" TO "PROGRAMADORESCSI";
