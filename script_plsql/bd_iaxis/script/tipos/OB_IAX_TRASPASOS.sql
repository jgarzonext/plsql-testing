--------------------------------------------------------
--  DDL for Type OB_IAX_TRASPASOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_TRASPASOS" AS OBJECT(
--****************************************************************************
--   NOMBRE:       OB_IAX_TRASPASOS
--   PROPÓSITO:  Contiene información de trapasos
--
--   REVISIONES:
--   Ver        Fecha       Autor           Descripción
--   ---------  ----------  --------------  ------------------------------------
--   1.0        05/11/2009  JGM             1. Creación del objeto.
--   2.0        18/10/2010  SRA             2. Se añaden los campos CTIPCONT y FCONTING
--   3.0        21-10-2011  JGR             3. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
--  4.0        01/07/2013  RCL            4. 0024697: LCOL_T031-Tamaño del campo SSEGURO
--   5.0        04-10-2013 DEV, HRE         5. 0028462: LCOL_T001-Cambio dimension NPOLIZA, NCERTIF
--******************************************************************************
   stras          NUMBER(8),   --    Identificador de traspaso
   sseguro        NUMBER,   --    Identificador de póliza
   nriesgo        NUMBER(4),   --    Identificador del riesgo
   npoliza        NUMBER,   --    Identificador de póliza, -- Bug 28462 - 08/10/2013 - HRE - Cambio de dimension SSEGURO
   ncertif        NUMBER,   --    Identificador de póliza -- Bug 28462 - 04/10/2013 - DEV - la precisión debe ser NUMBER
   sproduc        NUMBER(6),   --    Idenficador de póliza
   cagrpro        NUMBER(2),   --    Agrupación de producto (para distinguir PP de productos de ahorro)
   sperstom       NUMBER(10),   --    N. persona tomador
   nniftom        VARCHAR2(14),   --    N. de nif tomador
   tnomtom        VARCHAR2(100),   --    Nombre tomador
   spersase       NUMBER(10),   --    N. persona asegurado
   nnifase        VARCHAR2(14),   --    N. de nif asegurado
   tnomase        VARCHAR2(100),   --    Nombre asegurado
   fsolici        DATE,   --    Fecha de solicitud
   cinout         NUMBER(1),   --    Código entrada / salida (Valor fijo 679)
   tcinout        VARCHAR2(100),   --    Descripción ligada a CINOUT
   ctiptras       NUMBER(1),   --    Tipo de traspaso (Valor fijo 676)
   tctiptras      VARCHAR2(100),   --    Descripción ligada a CTIPTRAS
   cextern        NUMBER(1),   --    Indicador si es interno o externo. Valor fijo
   textern        VARCHAR2(100),   --    Descripción ligada CEXTERN
   ctipder        NUMBER(1),   --    Traspasa aportaciones (derechos consolidados) o prestaciones (derechos económicos). (Valor fijo 652)
   tctipder       VARCHAR2(100),   --    Descripción ligada a CTIPDER
   cestado        NUMBER(1),   --    Estado del traspaso (Valor fijo 675)
   tcestado       VARCHAR2(100),   --    Descripción ligada a CESTADO
   ctiptrassol    NUMBER(1),   --    Tipo de importe solicitado (Importe, porcentaje, participaciones…). Nuevo Valor fijo.
   tctiptrassol   VARCHAR2(100),   --    Descripción ligada a CTIPTRASSOL
   iimptemp       NUMBER(25, 10),   --    Importe del traspaso solicitado
   nporcen        NUMBER(6, 3),   --    Porcentaje del importe solicitado
   nparpla        NUMBER(15, 10),   --    Número de participaciones solicitadas
   iimporte       NUMBER(25, 10),   --    Importe traspasado
   fvalor         DATE,   --    Fecha valor del traspaso
   fefecto        DATE,   --    Fecha efecto del traspaso
   nnumlin        NUMBER(6),   --    Clave primaria de CTASEGURO
   fcontab        DATE,   --    Clave primaria de CTASEGURO
   ccodpla_dgs    VARCHAR2(10),   --   Código del plan para DGS
   ccodpla        NUMBER(6),   --    Código del plan al o del que se traspasa
   tccodpla       VARCHAR2(60),   --    Nombre del plan
   ccompani_dgs   VARCHAR2(10),   --    Código de compañía para DGS
   ccompani       NUMBER(4),   --    Código de compañía del o al que se traspasa un PPA o PIAS
   tcompani       VARCHAR2(40),   --    Nombre de la compañía
   ctipban        NUMBER(3),   --    Tipo de cuenta
   cbancar        VARCHAR2(50),   --    Código bancario del plan o fondo del o al que se traspasa
   tpolext        VARCHAR2(26),   --    Núm. de poliza o plan del que se traspasa.
   ncertext       NUMBER(4),   --    Certificado de la poliza que de la o a la que se traspasa (Campo para traspasos internos de AXIS)
   ssegext        NUMBER(6),   --    Núm. de seguros del plan a la que o del que se traspasa (Campo para traspasos internos de AXIS)
   planp          ob_iax_planpensiones,   --    Objeto con los datos del plan de pensiones del que o al que se traspasa (para PIAS y PPA
   fantigi        DATE,   --    Fecha de antigüedad del plan que se traspaso (TRASPASOS ENTRADA)
   iimpanu        NUMBER(25, 10),   --    Aportaciones realizadas durante el año en el que se trapasa (TRASPASOS ENTRADA)
   nparret        NUMBER(25, 6),   --    Participaciones retenidas en el plan origen
   iimpret        NUMBER(25, 10),   --    Aportaciones retenidas por un PPA o PIAS
   nsinies        VARCHAR2(14),   --    Número de siniestro del traspaso de salida.
   nparpos2006    NUMBER(25, 6),   --    Partcipaciones de aportaciones posteriores al 2006
   porcpos2006    NUMBER(5, 2),   --    Porcentaje aportaciones posteriores al 2006
   nparant2007    NUMBER(25, 6),   --    Participaciones de aportaciones anteriores al 2007
   porcant2007    NUMBER(5, 2),   --    Porcentaje aportaciones anteriores al 2007
   tmemo          VARCHAR2(500),   --    Observaciones del plan
   srefc234       VARCHAR2(13),   --    Referencia del envío de la Norma234
   cmotivo        NUMBER(3),   -- motivo de rechazo, anulación o traspaso
   cenvio         NUMBER(1),   --    Indica si el traspaso ha sido enviado
   tenvio         VARCHAR2(100),   -- Enviado (1) o pendiente de enviar (0)
   tprest         ob_iax_prestaciones,   -- Objeto con las prestaciones que se traspasan
   planaho        ob_iax_planahorro,
                                       -- Objeto con los datos del plan de ahorro
-- taporta        ob_iax_aportaciones  -- Objeto con aportaciones realizadas por una persona diferente al titular (partícipe) del plan
   ctipcont       NUMBER(2),   -- Contingencia acaecida
   fconting       DATE,   -- Fecha de contingencia
   CONSTRUCTOR FUNCTION ob_iax_traspasos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_TRASPASOS" AS
   CONSTRUCTOR FUNCTION ob_iax_traspasos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.stras := NULL;
      SELF.sseguro := NULL;
      SELF.nriesgo := NULL;
      SELF.npoliza := NULL;
      SELF.ncertif := NULL;
      SELF.sproduc := NULL;
      SELF.cagrpro := NULL;
      SELF.sperstom := NULL;
      SELF.nniftom := NULL;
      SELF.tnomtom := NULL;
      SELF.spersase := NULL;
      SELF.nnifase := NULL;
      SELF.tnomase := NULL;
      SELF.fsolici := f_sysdate;
      SELF.cinout := NULL;
      SELF.tcinout := NULL;
      SELF.ctiptras := NULL;
      SELF.tctiptras := NULL;
      SELF.cextern := NULL;
      SELF.textern := NULL;
      SELF.ctipder := NULL;
      SELF.tctipder := NULL;
      SELF.cestado := NULL;
      SELF.tcestado := NULL;
      SELF.ctiptrassol := 1;
      SELF.tctiptrassol := NULL;
      SELF.iimptemp := NULL;
      SELF.nporcen := NULL;
      SELF.nparpla := NULL;
      SELF.iimporte := NULL;
      SELF.fvalor := NULL;
      SELF.fefecto := NULL;
      SELF.nnumlin := NULL;
      SELF.fcontab := NULL;
      SELF.ccodpla_dgs := NULL;
      SELF.ccodpla := NULL;
      SELF.tccodpla := NULL;
      SELF.ccompani := NULL;
      SELF.ccompani_dgs := NULL;
      SELF.tcompani := NULL;
      SELF.ctipban := NULL;
      SELF.cbancar := NULL;
      SELF.tpolext := NULL;
      SELF.ncertext := NULL;
      SELF.ssegext := NULL;
      SELF.planp := NULL;
      SELF.fantigi := NULL;
      SELF.iimpanu := NULL;
      SELF.nparret := NULL;
      SELF.iimpret := NULL;
      SELF.nsinies := NULL;
      SELF.nparpos2006 := NULL;
      SELF.porcpos2006 := NULL;
      SELF.nparant2007 := NULL;
      SELF.porcant2007 := NULL;
      SELF.tmemo := NULL;
      SELF.srefc234 := NULL;
      SELF.cenvio := NULL;
      SELF.tenvio := NULL;
      SELF.tprest := NULL;
      SELF.planaho := NULL;
      SELF.cmotivo := NULL;
      SELF.ctipcont := NULL;
      SELF.fconting := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_TRASPASOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TRASPASOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TRASPASOS" TO "PROGRAMADORESCSI";
