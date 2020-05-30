BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_LIQUIDALIN_UAT','TABLE');
END;
/
create table MIG_LIQUIDALIN_UAT
(
  mig_pk             VARCHAR2(50),
  mig_fk             VARCHAR2(50),
  mig_fk2            VARCHAR2(50),
  itotimp            NUMBER,
  itotalr            NUMBER,
  iprinet            NUMBER,
  icomisi            NUMBER,
  iretenccom         NUMBER,
  isobrecomision     NUMBER,
  iretencsobrecom    NUMBER,
  iconvoleducto      NUMBER,
  iretencoleoducto   NUMBER,
  ctipoliq           NUMBER(3),
  itotimp_moncia     NUMBER,
  itotalr_moncia     NUMBER,
  iprinet_moncia     NUMBER,
  icomisi_moncia     NUMBER,
  iretenccom_moncia  NUMBER,
  isobrecom_moncia   NUMBER,
  iretencscom_moncia NUMBER,
  iconvoleod_moncia  NUMBER,
  iretoleod_moncia   NUMBER,
  fcambio            DATE
);
/