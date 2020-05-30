--------------------------------------------------------
--  DDL for Type OB_IAX_PRODGESTION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODGESTION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODGESTION
   PROPÓSITO:  Contiene información de la gestión del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(
   cduraci        NUMBER,   -- Tipo de duración.  (VF 20)
   tduraci        VARCHAR2(100),   -- Descripción tipo duración
   ctempor        NUMBER,   -- Admite o no pólizas temporales  (VF 23)
   ttempor        VARCHAR2(100),   -- Descripción Admite o no pólizas temporales
   ndurcob        NUMBER,   -- Años a restar en la duración de pagos de primas
   cdurmin        NUMBER,   -- Duración minima  (VF 686)
   tdurmin        VARCHAR2(100),   -- Descripción duración minima
   nvtomin        NUMBER,   -- Nro.Años mínimo para el Vto. de la póliza
   cdurmax        NUMBER,   -- Duración máxima de la póliza.   (VF 209)
   tdurmax        VARCHAR2(100),   -- Descripción duración máxima póliza
   nvtomax        NUMBER,   -- Nro.Años máximo para el Vto. de la póliza. Se activa si informan CDURMAX
   ctipefe        NUMBER,   -- Tipo de efecto.  (VF 42)
   ttipefe        VARCHAR2(100),   -- Descripción tipo efecto
   nrenova        NUMBER,   -- Día renovación
   cmodnre        NUMBER,   -- Indicador de fecha de renovación modificable en contratación
   cprodcar       NUMBER,   -- Indica si tiene valor en PRODCARTERA
   crevali        NUMBER,   -- Tipo revalorización  (VF 62)
   trevali        VARCHAR2(100),   -- Descripción tipo revalorización
   prevali        NUMBER,   -- Porcentaje revalorización
   irevali        NUMBER,   -- Importe revalorización
   ctarman        NUMBER,   -- La tarificación puede ser manual  (VF 56)
   ttarman        VARCHAR2(100),   -- Descripción tarificación puede ser manual
   creaseg        NUMBER,   -- Reaseguro   (VF 134)
   treaseg        VARCHAR2(100),   -- Descripción reaseguro
   creteni        NUMBER,   -- Indicador de propuesta  (VF 66)
   treteni        VARCHAR2(100),   -- Descripción Indicador de propuesta
   cprorra        NUMBER,   -- Tipus prorrateig a aplicar suplements   (VF 174)
   tprorra        VARCHAR2(100),   -- Descripción Tipus prorrateig a aplicar suplements segons valors fixes 174
   cprimin        NUMBER,   -- Tipo de prima mínima  (VF 685)
   tprimin        VARCHAR2(100),   -- Descripción Tipo de prima mínima
   iprimin        NUMBER,   -- Importe mínimo prima de recibo en emisión
   cclapri        NUMBER,   -- Fórmula de càlcul de la prima mínima
   tclapri        VARCHAR2(100),   -- Descripción Fórmula de càlcul de la prima mínima
   ipminfra       NUMBER,   -- Prima minima fraccionada
   nedamic        NUMBER,   -- Edad mínima contratación (Vida y accidentes) Aseg. 2
   ciedmic        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Edad Min. Ctnr.
   nedamac        NUMBER,   -- Edad máxima contratación. (Vida y accidentes). Aseg. 2
   ciedmac        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Ctnr.
   nedamar        NUMBER,   -- Edad máxima renovación. (Vida y accidentes). Aseg. 2
   ciedmar        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Renov.
   nedmi2c        NUMBER,   -- Edad Min. Ctnr. 2ºAsegurado
   ciemi2c        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Min. Ctnr. 2ºAsegurado
   nedma2c        NUMBER,   -- Edad Max. Ctnr. 2ºAsegurado
   ciema2c        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Ctnr. 2ºAsegurado
   nedma2r        NUMBER,   -- Edad Max. Renov. 2ºAsegurado
   ciema2r        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Renov. 2ºAsegurado
   nsedmac        NUMBER,   -- Maximo de contratación de la suma de Edades.(productos 2-Cabezas)
   cisemac        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real
   cvinpol        NUMBER,   -- Indica que las pólizas del producto tienen que estar vinculadas a otras de otro producto
   cvinpre        NUMBER,   -- Indica que las pólizas del producto tienen que estar vinculadas a un préstamo
   ccuesti        NUMBER,   -- Necesita cuestionario de salud
   cctacor        NUMBER,   -- Indicador de si tiene libreta. 0-No, 1-Si
   cpreaviso      NUMBER,
   durperiodoprod t_iax_proddurperiodo,   -- Duraciones
   CONSTRUCTOR FUNCTION ob_iax_prodgestion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODGESTION" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODGESTION RETURN SELF AS RESULT IS
    BEGIN
    		SELF.CDURACI := 0;
    		SELF.TDURACI := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGESTION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGESTION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGESTION" TO "PROGRAMADORESCSI";
