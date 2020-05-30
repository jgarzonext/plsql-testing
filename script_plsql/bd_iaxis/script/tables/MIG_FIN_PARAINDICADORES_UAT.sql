BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_FIN_PARAINDICADORES_UAT','TABLE');
END;
/
create table MIG_FIN_PARAINDICADORES_UAT
(
  mig_pk             VARCHAR2(50),
  mig_fk             VARCHAR2(50),
  fecha_est_fin      DATE,
  vt_per_ant         NUMBER,
  ventas             NUMBER,
  costo_vt           NUMBER,
  gasto_adm          NUMBER,
  util_operac        NUMBER,
  gasto_fin          NUMBER,
  res_ant_imp        NUMBER,
  util_neta          NUMBER,
  invent             NUMBER,
  carte_clie         NUMBER,
  act_corr           NUMBER,
  prop_plnt_eqp      NUMBER,
  tot_act_no_corr    NUMBER,
  act_total          NUMBER,
  o_fin_corto_plazo  NUMBER,
  provee_corto_plazo NUMBER,
  atc_corto_plazo    NUMBER,
  pas_corr           NUMBER,
  o_fin_largo_plazo  NUMBER,
  atc_largo_plazo    NUMBER,
  pas_no_corr        NUMBER,
  pas_total          NUMBER,
  patri_peri_ant     NUMBER,
  patri_ano_actual   NUMBER,
  resv_legal         NUMBER,
  cap_social         NUMBER,
  res_ejer_ant       NUMBER,
  prima_accion       NUMBER,
  resv_ocasi         NUMBER,
  valoriza           NUMBER,
  asignado           NUMBER,
  sucrea             VARCHAR2(20),
  fechaing           DATE,
  modulo             VARCHAR2(20),
  fuente_informacion INTEGER
);
/