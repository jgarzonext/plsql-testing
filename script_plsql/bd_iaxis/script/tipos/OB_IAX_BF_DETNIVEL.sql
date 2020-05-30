--------------------------------------------------------
--  DDL for Type OB_IAX_BF_DETNIVEL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_DETNIVEL" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BF_DETNIVEL
   PROPÓSITO:  Contiene la información de niveles un subgrupo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creación del objeto.
******************************************************************************/
(
   cempres        NUMBER,   --    Código de Empresa
   tempres        VARCHAR2(200),   --    Empresa
   cgrup          NUMBER,   --    Código de Grupo de Bonus/Franquícias
   csubgrup       NUMBER,   --    Código de Subgrupo de Bonus/Franquícias
   cversion       NUMBER,   --    Código de Versión
   tgrup          VARCHAR2(200),   --Descripción del Grupo de Bonus/Franquícias'
   tgrupsubgrup   VARCHAR2(200),   --    Descripción Grupo/Subgrupo de Bonus/Franquícias
   cnivel         NUMBER,   --    Código Nivel dentro del Grupo/Subgrupo de Bonus/Franquícias
   tnivel         VARCHAR2(200),   --    Nivel
   norden         NUMBER,   --    Orden visualización
   cdtorec        NUMBER,   --    1 -> Recargo; 2 -> Descuento; 3 -> Franquicia
   formulaselecc  NUMBER,   --    Clave fórmula para confirmar si es seleccionable o no éste detalle
   tdtorec        VARCHAR2(200),   --    Tipo dto.
   tformulavalida VARCHAR2(200),   --    Fórmula
   formulasinies  NUMBER,   --    Clave fórmula a ejecutar para siniestros(si la necesitan)
   tformulasinies VARCHAR2(200),   --    Fórmula
   ctipnivel      NUMBER,   --    1 = Lista Valores; 2 = Libre
   ttipnivel      VARCHAR2(200),   --    Desc Nivel
   cvalor1        NUMBER,   --    1=Porcentaje; 2=Importe Fijo; 3=Descripción; 4 = SMMLV
   tvalor1        VARCHAR2(200),   --    Valor
   impvalor1      NUMBER,   --    Importe expresado según cvalor
   cvalor2        NUMBER,   --    1=Porcentaje; 2=Importe Fijo; 3=Descripción; 4 = SMMLV
   tvalor2        VARCHAR2(200),   --    Valor
   impvalor2      NUMBER,   --    Importe expresado según cvalor
   cimpmin        NUMBER,   --    1=Porcentaje; 2=Importe Fijo; 3=Descripción; 4 = SMMLV
   timpmin        VARCHAR2(200),   --    Valor
   impmin         NUMBER,   --    Importe expresado según cimpmin
   cimpmax        NUMBER,   --    1=Porcentaje; 2=Importe Fijo; 3=Descripción; 4 = SMMLV
   timpmax        VARCHAR2(200),   --    Valor
   impmax         NUMBER,   --    Importe expresado según cimpmax
   cdefecto       VARCHAR2(1),   --Si este valor aparecerá por defecto
   ccontratable   VARCHAR2(1),   --    S / N si se ofrecerá en contratación o sólo en mantenim.
   tcontratable   VARCHAR2(200),   --    S / N si se ofrecerá en contratación o sólo en mantenim.
   cinterviene    VARCHAR2(1),   --    S / N si interviene al incrementar o decrementar el nivel de Bbonus
   tinterviene    VARCHAR2(100),   --S / N si interviene al incrementar o decrementar el nivel de Bbonus
   lidioma        t_iax_bf_desnivel,   -- Descripciones nivel
   id_listlibre   NUMBER,
   lvalor1        NUMBER,
   lvalor2        NUMBER,
   limpmin        NUMBER,
   limpmax        NUMBER,
   listacvalor1   t_iax_bf_listlibre,
   listacvalor2   t_iax_bf_listlibre,
   listacimpmin   t_iax_bf_listlibre,
   listacimpmax   t_iax_bf_listlibre,
   CONSTRUCTOR FUNCTION ob_iax_bf_detnivel
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BF_DETNIVEL" AS
   CONSTRUCTOR FUNCTION ob_iax_bf_detnivel
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_DETNIVEL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_DETNIVEL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_DETNIVEL" TO "PROGRAMADORESCSI";
