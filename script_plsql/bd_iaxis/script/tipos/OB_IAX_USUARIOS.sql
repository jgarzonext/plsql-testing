--------------------------------------------------------
--  DDL for Type OB_IAX_USUARIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_USUARIOS" AS object
/******************************************************************************
NOMBRE:    OB_IAX_USUARIOS
PROPÓSITO:      Objeto para contener los datos de los usuarios.
REVISIONES:
Ver        Fecha        Autor             Descripción
---------  ----------  ---------------  ------------------------------------
1.0        06/11/2008   AMC                1. Creación del objeto.
2.0        02/12/2009   XPL                2. BUg 12254, añadir CAUTLOG
3.0        11/04/2011   APD                3. 0018225: AGM704 - Realizar la modificación de precisión el cagente
4.0        22/10/2013   FAC                4. 28627 Agregar mantenimiento de usuarios los nivel de autorizacion PSU
5.0        21/02/2014   FAL                5. 0029965: RSA702 - GAPS renovación
6.0        03/08/2019   JMJRR              6. IAXIS-4994 Se agrega campo ccfgmarca
******************************************************************************/
(
  cusuari   VARCHAR2(20 byte),
  cidioma   NUMBER(2),
  cempres   NUMBER(2),
  tempres   VARCHAR2(200),
  tusunom   VARCHAR2(70 byte),
  cdelega   NUMBER, -- Bug 18225 - APD - 11/04/2011 - la precisión debe ser NUMBER
  tdelega   VARCHAR2(200),
  ejecucion NUMBER(1),
  sperson   NUMBER(10),
  fbaja     DATE,
  ctipusu   NUMBER(2),
  ttipusu   VARCHAR2(200),
  copcion   NUMBER(6),
  cautlog   NUMBER(1), --autologin o no, bug 12254
  tpwd      VARCHAR2(100 byte),
  falta     DATE,
  cempleado VARCHAR2(100 byte),
  ccfgwiz   VARCHAR2(50),
  ccfgform  VARCHAR2(50),
  ccfgacc   VARCHAR2(50),
  crolmen   VARCHAR2(20),
  cconsupl  VARCHAR2(20),
  ccfgdoc   VARCHAR2(50),
  caccprod  VARCHAR2(50),  -- BUG16471:DRA:26/10/2010
  ccfgmap   VARCHAR2(50),  -- BUG 21569 - 07/03/2012 - JMP
  cvispubli NUMBER(1),     --BUG21653 - 14/03/2012 - JTS
  crol      VARCHAR2(50),  -- BUG 23079 - 01/10/2012 - JTS
  cusuagru  NUMBER,        --BUG 28627 FAC:22/10/2013
  mail_usu  VARCHAR2(100), -- BUG 29965 - FAL - 07/02/2014
  telfusu   VARCHAR2(50),
  unidept   NUMBER(2),
  categprof NUMBER(2),
  --ini IAXIS-4994
  ccfgmarca VARCHAR2(50),
  --fin IAXIS-4994
  constructor
  FUNCTION ob_iax_usuarios
    RETURN self AS result );
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_USUARIOS" AS constructor
FUNCTION ob_iax_usuarios

  RETURN self AS result
IS
BEGIN
  self.cusuari := NULL;
  self.cidioma := NULL;
  self.cempres := NULL;
  self.tempres := NULL;
  self.tusunom := NULL;
  self.cdelega := NULL;
  self.tdelega := NULL;
  self.ejecucion := NULL;
  self.sperson := NULL;
  self.fbaja := NULL;
  self.ctipusu := NULL;
  self.ttipusu := NULL;
  self.copcion := NULL;
  self.tpwd := NULL;
  self.falta := NULL;
  self.cempleado := NULL;
  self.ccfgwiz := NULL;
  self.ccfgform := NULL;
  self.ccfgacc := NULL;
  self.crolmen := NULL;
  self.cconsupl := NULL;
  self.ccfgdoc := NULL;
  self.cautlog := NULL;
  self.caccprod := NULL;
  /* BUG16471:DRA:26/10/2010*/
  self.ccfgmap := NULL;
  /* BUG 21569 - 07/03/2012 - JMP*/
  self.cvispubli := NULL;
  /*BUG21653 - 14/03/2012 - JTS*/
  self.cusuagru := NULL;
  /*BUG 28627 :DRA:22/10/2013*/
  self.mail_usu := NULL;
  /* BUG 29965 - FAL - 07/02/2014*/
  self.telfusu := NULL;
  self.unidept := NULL;
  self.categprof := NULL;
  self.ccfgmarca := NULL; --IAXIS-4994 Se agrega campo ccfgmarca

  RETURN;
END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_USUARIOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_USUARIOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_USUARIOS" TO "PROGRAMADORESCSI";
