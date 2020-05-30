--------------------------------------------------------
--  DDL for Table REASINIAUX
--------------------------------------------------------

  CREATE TABLE "AXIS"."REASINIAUX" 
   (	"NSINIES" NUMBER, 
	"CGARANT" NUMBER(4,0), 
	"PTRAMO0" NUMBER(8,5), 
	"PTRAMO1" NUMBER(8,5), 
	"PTRAMO2" NUMBER(8,5), 
	"PTRAMO3" NUMBER(8,5), 
	"PTRAMO4" NUMBER(8,5), 
	"PTRAMO5" NUMBER(8,5), 
	"SPROCES" NUMBER, 
	"FCALCUL" DATE, 
	"IPAGO_ANY" NUMBER, 
	"IPAGO" NUMBER, 
	"IRECOBRO" NUMBER, 
	"VALORA" NUMBER, 
	"VALORA31D" NUMBER, 
	"PROVISIO" NUMBER, 
	"PROVISIO31D" NUMBER, 
	"ANYO" NUMBER(4,0), 
	"CAGENTE" NUMBER, 
	"CEMPRES" NUMBER(2,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CACTIVI" NUMBER(4,0), 
	"CAGRPRO" NUMBER(2,0), 
	"CRENOVA" NUMBER(1,0), 
	"SSEGURO" NUMBER, 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"CESTSIN" NUMBER(2,0), 
	"FESTSIN" DATE, 
	"FSINIES" DATE, 
	"FNOTIFI" DATE, 
	"PLOCAL" NUMBER(5,2), 
	"CTIPCOA" NUMBER(1,0), 
	"CPAGCOA" NUMBER(2,0), 
	"CTIPREA" NUMBER(1,0), 
	"SCONTRA" NUMBER(6,0), 
	"NVERSIO" NUMBER(2,0), 
	"PPROPI" NUMBER(5,2), 
	"SCONTRA_PROT" NUMBER(6,0), 
	"NVERSIO_PROT" NUMBER(2,0), 
	"PPROPI_PROT" NUMBER(5,2), 
	"IPRIOXL" NUMBER, 
	"ICAPAXL" NUMBER, 
	"IPAGOANY_COA" NUMBER, 
	"PROV_COA" NUMBER, 
	"PROV31D_COA" NUMBER, 
	"PAG_CUOPART" NUMBER, 
	"PROV_CUOPART" NUMBER, 
	"PROV31D_CUOPART" NUMBER, 
	"PAG_EXC" NUMBER, 
	"PROV_EXC" NUMBER, 
	"PROV31D_EXC" NUMBER, 
	"PAG_FACOB" NUMBER, 
	"PROV_FACOB" NUMBER, 
	"PROV31D_FACOB" NUMBER, 
	"PAG_FACUL" NUMBER, 
	"PROV_FACUL" NUMBER, 
	"PROV31D_FACUL" NUMBER, 
	"PAG_PROPI" NUMBER, 
	"PROV_PROPI" NUMBER, 
	"PROV31D_PROPI" NUMBER, 
	"PAG_PROSINXL" NUMBER, 
	"PROV_PROSINXL" NUMBER, 
	"PROV31D_PROSINXL" NUMBER, 
	"PAG_XL" NUMBER, 
	"PROV_XL" NUMBER, 
	"PROV31D_XL" NUMBER, 
	"PAG_PROREA" NUMBER, 
	"PROV_PROREA" NUMBER, 
	"PROV31D_PROREA" NUMBER, 
	"PAG_PRONREA" NUMBER, 
	"PROV_PRONREA" NUMBER, 
	"PROV31D_PRONREA" NUMBER, 
	"PAG_NOSTRE" NUMBER, 
	"PROV_NOSTRE" NUMBER, 
	"PROV31D_NOSTRE" NUMBER, 
	"IPAGO_NLIQ" NUMBER, 
	"IPAGO_LIQ" NUMBER, 
	"IPAGOANY_NLIQ" NUMBER, 
	"IPAGOANY_LIQ" NUMBER, 
	"IPAGOANY_COA_NLIQ" NUMBER, 
	"IPAGOANY_COA_LIQ" NUMBER, 
	"PAG_CUOPART_NLIQ" NUMBER, 
	"PAG_CUOPART_LIQ" NUMBER, 
	"PAG_EXC_NLIQ" NUMBER, 
	"PAG_EXC_LIQ" NUMBER, 
	"PAG_FACOB_NLIQ" NUMBER, 
	"PAG_FACOB_LIQ" NUMBER, 
	"PAG_FACUL_NLIQ" NUMBER, 
	"PAG_FACUL_LIQ" NUMBER, 
	"PAG_PROPI_NLIQ" NUMBER, 
	"PAG_PROPI_LIQ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."REASINIAUX"."NSINIES" IS 'N�mero de siniestro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CGARANT" IS 'Garantia (0 para el total del siniestro)';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PTRAMO0" IS '% cuopart (reaseguro)';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PTRAMO2" IS '% 1� excedente (reaseguro)';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PTRAMO3" IS '% 2� excedente (reaseguro)';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PTRAMO4" IS '% facob (reaseguro)';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PTRAMO5" IS '% facul (reaseguro)';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."SPROCES" IS 'Identificador proceso';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."FCALCUL" IS '�ltimo d�a del mes para el que se ha hecho el c�lculo';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."IPAGO_ANY" IS 'Suma por garantia pagos a�o actual hasta la fecha';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."IPAGO" IS 'Suma por garantia todos pagos del siniestro hasta la fecha';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."IRECOBRO" IS 'Suma por garantia recobros a�o actual hasta la fecha';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."VALORA" IS '�ltima valoraci�n hasta la fecha';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."VALORA31D" IS 'Valoraci�n a 31 dic. del a�o anterior';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROVISIO" IS 'Provisi�n con fecha la fecha';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROVISIO31D" IS 'Provisi�n a 31 dic. del a�o anterior';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."ANYO" IS 'A�o del siniestro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CAGENTE" IS 'Agente del seguro del siniestro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CEMPRES" IS 'Empresa del seguro del siniestro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CRAMO" IS 'Ramo del seguro del siniestro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CMODALI" IS 'Modalidad del seguro del siniestro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CTIPSEG" IS 'Tipo de seguro del seguro del siniestro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CCOLECT" IS 'Colectividad del seguro del siniestro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CACTIVI" IS 'Actividad del seguro del siniestro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CAGRPRO" IS 'Agrupaci�n del producto del seguro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CRENOVA" IS 'C�digo de renovaci�n 1: n.p. 0: cartera';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."SSEGURO" IS 'Identificador del seguro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."NPOLIZA" IS 'N�mero de p�liza';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."NCERTIF" IS 'N�mero de certificado';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CESTSIN" IS 'Estado del siniestro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."FESTSIN" IS 'Fecha del estado del siniestro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."FSINIES" IS 'Fecha del siniestro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."FNOTIFI" IS 'Fecha de notificaci�n del siniestro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PLOCAL" IS '% de coaseguro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CTIPCOA" IS 'Tipo de coaseguro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CPAGCOA" IS 'Tipo de pago (totalidad, nuestra parte)';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."CTIPREA" IS 'Tipo de reaseguro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."SCONTRA" IS 'Contrato de reaseguro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."NVERSIO" IS 'Versi�n del contrato de reaseguro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PPROPI" IS '% local';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."SCONTRA_PROT" IS 'Contrato de protecci�n del propio';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."NVERSIO_PROT" IS 'Versi�n del contrato de protecci�n del propio';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PPROPI_PROT" IS '% protecci�n del propio';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."IPRIOXL" IS 'Prioridad contrato XL';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."ICAPAXL" IS 'Capacidad contrato XL';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."IPAGOANY_COA" IS 'Ipago_any sin coaseguro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV_COA" IS 'Provisio sin coaseguro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV31D_COA" IS 'Provisio31d sin coaseguro';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_CUOPART" IS 'Ipagoany_coa * ptramo0/100';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV_CUOPART" IS 'prov_coa * ptramo0/100';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV31D_CUOPART" IS 'prov31d_coa * ptramo0/100';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_EXC" IS 'Ipagoany_coa * (ptramo2+ptramo3)/100';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV_EXC" IS 'prov_coa * (ptramo2+ptramo3)/100';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV31D_EXC" IS 'prov31d_coa * (ptramo2+ptramo3)/100';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_FACOB" IS 'Ipagoany_coa * ptramo4/100';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV_FACOB" IS 'prov_coa * ptramo4/100';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV31D_FACOB" IS 'prov31d_coa * ptramo4/100';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_FACUL" IS 'Ipagoany_coa * ptramo5/100';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV_FACUL" IS 'prov_coa * ptramo5/100';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV31D_FACUL" IS 'prov31d_coa * ptramo5/100';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_PROPI" IS 'Ipagoany_coa * ptramo0/100   (propi = sinxl + xl)';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV_PROPI" IS 'prov_coa * ptramo0/100   (propi = sinxl + xl)';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV31D_PROPI" IS 'prov31d_coa * ptramo0/100  (propi = sinxl + xl)';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_PROSINXL" IS 'Pagos propio sin XL';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV_PROSINXL" IS 'Provisi�n propio sin XL';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV31D_PROSINXL" IS 'Provisi�n 31dic. propio sin XL';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_XL" IS 'Pagos XL';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV_XL" IS 'Provisi�n XL';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV31D_XL" IS 'Provisi�n 31 dic. XL';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_PROREA" IS 'Si garantia se reasegura = pag_propi, sino 0';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV_PROREA" IS 'Si garantia se reasegura = prov_propi, sino 0';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV31D_PROREA" IS 'Si garantia se reasegura = prov31d_propi, sino 0';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_PRONREA" IS 'Si garantia se reasegura = 0, sino ipagoany_coa';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV_PRONREA" IS 'Si garantia se reasegura = 0, sino prov_coa';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV31D_PRONREA" IS 'Si garantia se reasegura = 0, sino prov31d_coa';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_NOSTRE" IS 'pag_prosinxl+pag_pronrea (s�lo a nivel siniestro)';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV_NOSTRE" IS 'prov_prosinxl+prov_pronrea (s�lo a nivel siniestro)';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PROV31D_NOSTRE" IS 'prov31d_prosinxl+prov31d_pronrea (s�lo a nivel siniestro)';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."IPAGO_NLIQ" IS 'ipago de pagos pendientes y aceptados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."IPAGO_LIQ" IS 'ipago de pagos pagados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."IPAGOANY_NLIQ" IS 'ipago_any de pagos pendientes y aceptados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."IPAGOANY_LIQ" IS 'ipago_any de pagos pagados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."IPAGOANY_COA_NLIQ" IS 'ipagoany_coa de pagos pendientes y aceptados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."IPAGOANY_COA_LIQ" IS 'ipagoany_coa de pagos pagados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_CUOPART_NLIQ" IS 'pag_cuopart de pagos pendientes y aceptados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_CUOPART_LIQ" IS 'pag_cuopart de pagos pagados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_EXC_NLIQ" IS 'pag_exc de pagos pendientes y aceptados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_EXC_LIQ" IS 'pag_exc de pagos pagados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_FACOB_NLIQ" IS 'pag_facob de pagos pendientes y aceptados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_FACOB_LIQ" IS 'pag_facob de pagos pagados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_FACUL_NLIQ" IS 'pag_facul de pagos pendientes y aceptados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_FACUL_LIQ" IS 'pag_facul de pagos pagados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_PROPI_NLIQ" IS 'pag_propi de pagos pendientes y aceptados';
   COMMENT ON COLUMN "AXIS"."REASINIAUX"."PAG_PROPI_LIQ" IS 'pag_propi de pagos pagados';
  GRANT UPDATE ON "AXIS"."REASINIAUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REASINIAUX" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."REASINIAUX" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."REASINIAUX" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."REASINIAUX" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."REASINIAUX" TO "PROGRAMADORESCSI";
