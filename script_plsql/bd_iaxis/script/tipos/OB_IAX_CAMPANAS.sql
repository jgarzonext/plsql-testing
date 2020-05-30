--------------------------------------------------------
--  DDL for Type OB_IAX_CAMPANAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CAMPANAS" AS OBJECT
/******************************************************************************
   NOMBRE:  OB_IAX_CAMPANAS
   PROPÓSITO:     Objeto para contener los datos de las campa�as.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/08/2011   FAL                1. Creación del objeto.
******************************************************************************/
(
  ccodigo          NUMBER, -- codigo de la campa�a
  tdescrip         VARCHAR2(200), -- descripci�n de la campa�a
  cestado          NUMBER(1), -- estado de la campa�a. Por defecto 'PE'
  testado          VARCHAR2(200), -- descripcion del estado de la campa�a
  finicam          DATE, -- fecha inicio de la campa�a
  ffincam          DATE, -- fecha fin de la campa�a
  ivalini          NUMBER, -- Coste de lanzamiento de la campa�a
  ipremio          NUMBER, -- Coste del premio de la campa�a
  ivtaprv          NUMBER, -- Importe Previsto de las ventas de la campa�a
  ivtarea          NUMBER, -- Importe Real de las ventas de la campa�a
  cmedios          VARCHAR2(50), -- Medios de comunicaci�n de la campa�a (max.8 medios diferentes)
  nagecam          NUMBER, -- Num. de agentes  participantes en la campa�a
  nagegan          NUMBER, -- Num. de agentes  ganadores en la campa�a
  tobserv          VARCHAR2(200), -- Observaciones de la campa�a
  cexccrr          NUMBER, -- Excluir p�lizas con corretaje
  cexcnewp         NUMBER, -- Excluir p�lizas futuras
  finirec          DATE, -- Fecha inicio Recaudo
  ffinrec          DATE, -- Fecha fin Recaudo
  cconven          NUMBER, -- Tipo de Convenci�n
  campaprd         t_iax_campaprd, --     Colecci�n de OB_IAX_CAMPAPRD
  campaage         t_iax_campaage, --     Colecci�n de OB_IAX_CAMPAAGE
  campaage_ganador t_iax_campaage_ganador, --     Colecci�n de OB_IAX_CAMPAAGE_GANADOR
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
