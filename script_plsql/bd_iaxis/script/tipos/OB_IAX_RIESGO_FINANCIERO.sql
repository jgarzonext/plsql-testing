----3.1.1.4.1	OB_IAX_RIESGO_FINANCIERO (MODIFICAR)
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('OB_IAX_RIESGO_FINANCIERO','TYPE');
END;
/

create or replace TYPE            "OB_IAX_RIESGO_FINANCIERO" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_RIEGO_FINANCIERO
   PROPOSITO:  Contiene la informacion del calculo de riesgo de las personas

   REVISIONES:
   Ver         Fecha        Autor             Descripcion
   ---------  ----------   ---------------    ----------------------------------
   1.0        22/09/2011   MDS                1. Creacion del objeto
   1.1        05/07/2019   UST                1. Se adiciona los nuevo atributos (nprobincumplimiento, sdescripcion, npuntajeScore, scalificacion, ningminimoprobable, ncupogarantizado, stipopersona)


******************************************************************************/
(
   sperson        NUMBER,
   nriesgo        NUMBER,
   desriesgo        VARCHAR2(500),
   monto        NUMBER,
   fefecto        DATE,
   nprobincumplimiento NUMBER,
   sdescripcion VARCHAR2(100),
   npuntajescore NUMBER,
   scalificacion        VARCHAR2(200),
   ningminimoprobable NUMBER,
   ncupogarantizado NUMBER,
   stipopersona        VARCHAR2(200),

   CONSTRUCTOR FUNCTION ob_iax_riesgo_financiero
      RETURN SELF AS RESULT
);
/

create or replace TYPE BODY            "OB_IAX_RIESGO_FINANCIERO" AS
   CONSTRUCTOR FUNCTION ob_iax_riesgo_financiero
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := 0;
      SELF.nriesgo := 0;
      SELF.desriesgo := NULL;
      SELF.monto := 0;
      SELF.fefecto := NULL;
      SELF.nprobincumplimiento := NULL;
      SELF.sdescripcion := NULL;
      SELF.npuntajescore := NULL;
      SELF.scalificacion := NULL;
      SELF.ningminimoprobable := NULL;
      SELF.ncupogarantizado := NULL;
      SELF.stipopersona := NULL;
      RETURN;
   END;
END;
/

  GRANT EXECUTE ON "AXIS"."OB_IAX_RIESGO_FINANCIERO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_RIESGO_FINANCIERO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_RIESGO_FINANCIERO" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_RIESGO_FINANCIERO" TO "AXIS00";

