--------------------------------------------------------
--  DDL for Type OB_IAX_CAMPANAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CAMPANAS" AS OBJECT
/******************************************************************************
   NOMBRE:  OB_IAX_CAMPANAS
   PROPÃ“SITO:     Objeto para contener los datos de las campañas.

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/08/2011   FAL                1. CreaciÃ³n del objeto.
******************************************************************************/
(
  ccodigo          NUMBER, -- codigo de la campaña
  tdescrip         VARCHAR2(200), -- descripción de la campaña
  cestado          NUMBER(1), -- estado de la campaña. Por defecto 'PE'
  testado          VARCHAR2(200), -- descripcion del estado de la campaña
  finicam          DATE, -- fecha inicio de la campaña
  ffincam          DATE, -- fecha fin de la campaña
  ivalini          NUMBER, -- Coste de lanzamiento de la campaña
  ipremio          NUMBER, -- Coste del premio de la campaña
  ivtaprv          NUMBER, -- Importe Previsto de las ventas de la campaña
  ivtarea          NUMBER, -- Importe Real de las ventas de la campaña
  cmedios          VARCHAR2(50), -- Medios de comunicación de la campaña (max.8 medios diferentes)
  nagecam          NUMBER, -- Num. de agentes  participantes en la campaña
  nagegan          NUMBER, -- Num. de agentes  ganadores en la campaña
  tobserv          VARCHAR2(200), -- Observaciones de la campaña
  cexccrr          NUMBER, -- Excluir pólizas con corretaje
  cexcnewp         NUMBER, -- Excluir pólizas futuras
  finirec          DATE, -- Fecha inicio Recaudo
  ffinrec          DATE, -- Fecha fin Recaudo
  cconven          NUMBER, -- Tipo de Convención
  campaprd         t_iax_campaprd, --     Colección de OB_IAX_CAMPAPRD
  campaage         t_iax_campaage, --     Colección de OB_IAX_CAMPAAGE
  campaage_ganador t_iax_campaage_ganador, --     Colección de OB_IAX_CAMPAAGE_GANADOR
  CONSTRUCTOR FUNCTION ob_iax_campanas RETURN SELF AS RESULT
)
;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CAMPANAS" AS
  CONSTRUCTOR FUNCTION ob_iax_campanas RETURN SELF AS RESULT IS
  BEGIN
    SELF.ccodigo  := NULL;
    SELF.tdescrip := NULL;
    SELF.cestado  := 0;
    SELF.testado  := NULL;
    SELF.finicam  := NULL;
    SELF.ffincam  := NULL;
    SELF.ivalini  := NULL;
    SELF.ipremio  := NULL;
    SELF.ivtaprv  := NULL;
    SELF.ivtarea  := NULL;
    SELF.cmedios  := NULL;
    SELF.nagecam  := NULL;
    SELF.nagegan  := NULL;
    SELF.cexccrr  := 0;
    SELF.cexcnewp := 0;
    SELF.finirec  := NULL;
    SELF.ffinrec  := NULL;
    SELF.cconven  := 0;
    RETURN;
  END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPANAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPANAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPANAS" TO "PROGRAMADORESCSI";
