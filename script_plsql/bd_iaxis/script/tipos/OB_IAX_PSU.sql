--------------------------------------------------------
--  DDL for Type OB_IAX_PSU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PSU" AS OBJECT(
   sseguro        NUMBER,   -- Identificativo interno de seguros y estseguros
   nmovimi        NUMBER,   -- N¿mero de Movimiento
   nocurre        NUMBER,   -- Veces que ha saltado en el mismo movimiento
   fmovimi        DATE,   -- Fecha del Movimiento
   ccontrol       NUMBER,   -- C¿digo Control realizado
   tcontrol       VARCHAR2(1000),   -- Descripci¿ del control realitzat
   cgarant        NUMBER,   -- Si s¿lo se aplica a esta garant¿a
   tgarant        VARCHAR2(1400),   -- descripci¿n de la garantia
   cnivelr        NUMBER,   -- C¿digo Nivel requerido
   tnivelr        VARCHAR2(1400),   -- descripci¿n del nivel requerido
   establoquea    VARCHAR2(1),   --Comportamiento Est¿ndar o Bloqueante
   ordenbloquea   NUMBER,   --   Orden aplicaci¿n reglas Exclusivas  Bloquentes
   autoriprev     VARCHAR2(1),   -- Autorizaci¿n en base a Autorizaci¿n Previa (S - N)
   nvalor         NUMBER,   -- Valor Num¿rico devuelto por el Control
   nvalorinf      NUMBER,   --     Valor inferior del tramo que abarca NVALOR
   nvalorsuper    NUMBER,   --     Valor superior del tramo que abarca NVALOR
   nvalortope     NUMBER,   --     Valor M¿ximo que se ha autorizado
   cusumov        VARCHAR2(1400),   -- Usuario que realiza el movimiento
   tusumov        VARCHAR2(1400),   -- Nombre Usuario que realiza el movimiento
   cnivelu        NUMBER,   -- C¿digo Nivel Usuario
   tnivelu        VARCHAR2(1400),   -- Descripci¿n nivel usuario
   cautrec        NUMBER,   -- 1 = Aut, 2 = Rech, 0 = Pte (Valor xxxx)
   tautrec        VARCHAR2(1400),   -- Descripci¿n estado autorizaci¿n
   fautrec        DATE,   -- Fecha de Autorizaci¿n o Rechazo
   cusuaur        VARCHAR2(1400),   -- Usuario que Autoriza o Rechaza
   tusuaur        VARCHAR2(1400),   -- Nombre Usuario que Autoriza o Rechaza
   observ         VARCHAR2(1400),   -- Observaciones sobre la Autorizaci¿n o Rechazo
   autmanual      VARCHAR2(1),   --   Acci¿n Realizada de forma Autom¿tica o Manual (A - M)
   editar         NUMBER,
   tomador        VARCHAR2(1400),
   npoliza        NUMBER,
   nriesgo        NUMBER,
   triesgo        VARCHAR2(2000),
   tdesniv        VARCHAR2(1400),
   nocontinua     NUMBER,   --Bug 15459- 20/07/2010 -PFA- Afegir nou parametre nocontinua
   novisible      NUMBER,   --Bug 15459- 20/07/2010 -PFA- Afegir nou parametre novisible
   ccritico       NUMBER,
   numrisk        VARCHAR2(100),
   nversion       VARCHAR2(4),
   CONSTRUCTOR FUNCTION ob_iax_psu
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PSU" AS
   CONSTRUCTOR FUNCTION ob_iax_psu
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PSU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PSU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PSU" TO "PROGRAMADORESCSI";
