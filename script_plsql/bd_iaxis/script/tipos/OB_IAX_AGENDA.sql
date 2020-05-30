--------------------------------------------------------
--  DDL for Type OB_IAX_AGENDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AGENDA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_AGENDA
   PROP¿SITO:  Contiene la informaci¿n de la agenda
   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/11/2010   XPL                1. Creaci¿n del objeto.
   2.0        25/07/2011   ICV              0018845: CRT901 - Modificacionas tareas usuario: boton responder, grupos, envio de mail al crear tarea,etc
******************************************************************************/
(
   idapunte       NUMBER(8),
   cconapu        NUMBER(2),
   tcconapu       VARCHAR2(400),
   ctipapu        NUMBER(1),
   ttipapu        VARCHAR2(400),
   ttitapu        VARCHAR2(100),   --T?lo Apunte
   tapunte        VARCHAR2(3000),   --Texto Apunte
   fapunte        DATE,
   frecordatorio  DATE,
   cestapu        NUMBER(1),   -- Ultimo Movimiento - C??o Estado Apunte
   testapu        VARCHAR2(100),   -- Ultimo Movimiento - Desc.  Estado Apunte
   festapu        DATE,   --  Ultimo Movimiento - Fecha Estado Apunte
   idagenda       NUMBER(8),
   cusuari        VARCHAR2(20),   --     C??o Usuario Destino
   cgrupo         VARCHAR2(50),   --     C??o Grupo Destino
   tgrupodesc     VARCHAR2(300),   --Descripci??rupo Destino
   tgrupo         VARCHAR2(40),   --    Valor Grupo Destino
   cclagd         NUMBER(3),   --     C??o Clave Agenda
   tclagddesc     VARCHAR2(300),   --Descripci??lave
   tclagd         VARCHAR2(40),   --      Valor Clave Agenda
   cperagd        NUMBER(1),
   tperagd        VARCHAR2(200),
   cusualt        VARCHAR2(20),   --    C??o Usuario Alta
   falta          DATE,   --     Fecha Alta
   cusuari_ori    VARCHAR2(20),   --     C??o Usuario Origen
   cgrupo_ori     VARCHAR2(50),   --     C??o Grupo Origen
   tgrupodesc_ori VARCHAR2(50),   --     C??o Grupo Origen
   tgrupo_ori     VARCHAR2(40),   --    Valor Grupo Origen
   RESAPUN     VARCHAR2(200),   --    CONF-347-01/12/2016-RCS
   CONSTRUCTOR FUNCTION ob_iax_agenda
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AGENDA" AS
   CONSTRUCTOR FUNCTION ob_iax_agenda
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.idapunte := NULL;
      SELF.cconapu := NULL;
      SELF.tcconapu := '';
      SELF.ctipapu := NULL;
      SELF.ttipapu := '';
      SELF.ttitapu := '';
      SELF.tapunte := '';
      SELF.fapunte := NULL;
      SELF.frecordatorio := NULL;
      SELF.cestapu := NULL;
      SELF.testapu := '';
      SELF.festapu := f_sysdate;
      SELF.idagenda := NULL;
      SELF.cusuari := '';
      SELF.cgrupo := '';
      SELF.tgrupodesc := '';
      SELF.tgrupo := '';
      SELF.cclagd := NULL;
      SELF.tclagddesc := '';
      SELF.tclagd := '';
      SELF.cperagd := NULL;
      SELF.tperagd := '';
      SELF.cusualt := '';
      SELF.falta := NULL;
      SELF.cusuari_ori := '';
      SELF.cgrupo_ori := '';
      SELF.tgrupodesc_ori := '';
      SELF.tgrupo_ori := '';
	  SELF.RESAPUN := ''; --CONF-347-01/12/2016-RCS
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AGENDA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGENDA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGENDA" TO "PROGRAMADORESCSI";
