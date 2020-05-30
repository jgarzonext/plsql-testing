--------------------------------------------------------
--  DDL for Table LIQRESREAAUXDET
--------------------------------------------------------
CREATE TABLE LIQRESREAAUXDET
(
  cempres              NUMBER,
  sproduc              NUMBER,
  cramo                NUMBER,
  npoliza              NUMBER,
  sseguro              NUMBER,
  nsinies              NUMBER NOT NULL,
  fefecto              DATE,
  fsinies              DATE,
  cgarant              NUMBER,
  scontra              NUMBER(6) NOT NULL,
  nversio              NUMBER(2) NOT NULL,
  nanyo                VARCHAR(4) NOT NULL,
  ctramo               NUMBER(2) NOT NULL,
  sproces              NUMBER NOT NULL,
  pcedido_total        NUMBER NOT NULL,
  ccompani             NUMBER NOT NULL,
  pcedido_cia          NUMBER NOT NULL,
  ctiprea              NUMBER(2),
  cmonres              VARCHAR2(30),
  isalres              NUMBER,
  isalres_moncia       NUMBER,
  isalres_moncia_c     NUMBER,
  iresperio            NUMBER,
  iresperio_moncia     NUMBER,
  iresperio_moncia_c   NUMBER,
  ctipram              NUMBER,
  isalresaant          NUMBER,
  isalresaant_moncia   NUMBER,
  isalresaant_moncia_c NUMBER,
  isalresaact          NUMBER,
  isalresaact_moncia   NUMBER,
  isalresaact_moncia_c NUMBER,
  iconstres            NUMBER,
  iconstres_moncia     NUMBER,
  iconstres_moncia_c   NUMBER,
  iaumenres            NUMBER,
  iaumenres_moncia     NUMBER,
  iaumenres_moncia_c   NUMBER,
  iliberares           NUMBER,
  iliberares_moncia    NUMBER,
  iliberares_moncia_c  NUMBER,
  idismires            NUMBER,
  idismires_moncia     NUMBER,
  idismires_moncia_c   NUMBER,
  falta                DATE NOT NULL,
  cusualta             VARCHAR2(20) NOT NULL,
  fmodif               DATE,
  cusumodif            VARCHAR2(20),
  fcierre              DATE NOT NULL
);
-- Add comments to the columns 
comment on column LIQRESREAAUXDET.cempres
  is 'Codigo de la empresa.';
comment on column LIQRESREAAUXDET.sproduc
  is 'Codigo del producto.';
comment on column LIQRESREAAUXDET.cramo
  is 'Codigo del ramo.';
comment on column LIQRESREAAUXDET.npoliza
  is 'No. identificador de la poliza.';
comment on column LIQRESREAAUXDET.sseguro
  is 'No. identificador de la poliza en iAxis.';
comment on column LIQRESREAAUXDET.nsinies
  is 'Identificador unico del siniestro.';
comment on column LIQRESREAAUXDET.fefecto
  is 'Fecha de efecto de la poliza.';
comment on column LIQRESREAAUXDET.fsinies
  is 'Fecha de efecto siniestro.';
comment on column LIQRESREAAUXDET.cgarant
  is 'Codigo de garantia afectada por el siniestro';
comment on column LIQRESREAAUXDET.scontra
  is 'Codigo del contrato de la cesion cedida.';
comment on column LIQRESREAAUXDET.nversio
  is 'Numero de version del contrato de la cesion cedida.';
comment on column LIQRESREAAUXDET.nanyo
  is 'anio del contrato de la cesion cedida.';
comment on column LIQRESREAAUXDET.nanyo
  is 'Tramo afectado en el contrato ((1-4)Proporcional 5-Facultativo)';
comment on column LIQRESREAAUXDET.sproces
  is 'Identificador de proceso de cierre.';
comment on column LIQRESREAAUXDET.pcedido_total
  is 'Porcentaje total de la cesion.';
comment on column LIQRESREAAUXDET.ccompani
  is 'Codigo de compania Reaseguradora';
comment on column LIQRESREAAUXDET.pcedido_cia
  is 'Porcentaje cedido correspondiente a la compañia.';
comment on column LIQRESREAAUXDET.ctiprea
  is 'Codigo de reasegurador Exterior-0 o Interior-1.'; 
comment on column LIQRESREAAUXDET.cmonres
  is 'Moneda de la reserva del siniestro.';    
comment on column LIQRESREAAUXDET.isalres
  is 'Importe de Reserva bruto moneda siniestro.';
comment on column LIQRESREAAUXDET.isalres_moncia
  is 'Importe de Reserva bruto moneda de la compania.';
comment on column LIQRESREAAUXDET.isalres_moncia_c
  is 'Importe de Reserva cedido total en moneda de la compania.';
comment on column LIQRESREAAUXDET.iresperio
  is 'Importe de Reserva del periodo del cierre en moneda siniestro.';
comment on column LIQRESREAAUXDET.iresperio_moncia
  is 'Importe de Reserva del periodo del cierre en moneda de la compania.';
comment on column LIQRESREAAUXDET.iresperio_moncia_c
  is 'Importede Reserva cedido del periodo del cierre en moneda de la compania.';
comment on column LIQRESREAAUXDET.ctipram
  is 'Tipram agrupador tabla codicontratos campo: DECODE(sconagr, NULL, 2, 1)';
comment on column LIQRESREAAUXDET.isalresaant
  is 'Saldo de la reserva del anio anterior (Moneda de la reserva)';
comment on column LIQRESREAAUXDET.isalresaant_moncia
  is 'Saldo de la reserva del anio anterior (Moneda de la compania)';
comment on column LIQRESREAAUXDET.isalresaant_moncia_c
  is 'Saldo de la reserva cedido del anio anterior x cia(Moneda de la compania)';
comment on column LIQRESREAAUXDET.isalresaact
  is 'Saldo de la reserva del anio actual (Moneda de la reserva)';
comment on column LIQRESREAAUXDET.isalresaact_moncia
  is 'Saldo de la reserva del anio actual (Moneda de la compania)';
comment on column LIQRESREAAUXDET.isalresaact_moncia_c
  is 'Saldo cedido de la reserva del anio actual x cia (Moneda de la compania)';
comment on column LIQRESREAAUXDET.iconstres
  is 'Importe de la constitucion de la reserva';
comment on column LIQRESREAAUXDET.iconstres_moncia
  is 'Importe de la constitucion de la reserva (Moneda de la compania)';
comment on column LIQRESREAAUXDET.iconstres_moncia_c
  is 'Importe de la constitucion de la reserva cedido x cia(Moneda de la compania)';
comment on column LIQRESREAAUXDET.iaumenres
  is 'Importe del aumento de la reserva';
comment on column LIQRESREAAUXDET.iaumenres_moncia
  is 'Importe del aumento de la reserva (Moneda de la compania)';
comment on column LIQRESREAAUXDET.iaumenres_moncia_c
  is 'Importe del aumento de la reserva cedido x cia (Moneda de la compania)';
comment on column LIQRESREAAUXDET.iliberares
  is 'Importe liberacion de la reserva (disminucion de la reserva del anio anterior)';
comment on column LIQRESREAAUXDET.iliberares_moncia
  is 'Importe liberacion de la reserva (disminucion de la reserva del anio anterior) (Moneda de la compania)';
comment on column LIQRESREAAUXDET.iliberares_moncia_c
  is 'Importe liberacion de la reserva cedido x cia (disminucion de la reserva del anio anterior) (Moneda de la compania)';
comment on column LIQRESREAAUXDET.idismires
  is 'Importe disminucion de la reserva del anio actual';
comment on column LIQRESREAAUXDET.idismires_moncia
  is 'Importe disminucion de la reserva del anio actual (Moneda de la compania)';
comment on column LIQRESREAAUXDET.idismires_moncia_c
  is 'Importe disminucion de la reserva del anio actual cedido x cia(Moneda de la compania)';
comment on column LIQRESREAAUXDET.falta
  is 'Fecha alta en tabla';
comment on column LIQRESREAAUXDET.cusualta
  is 'Usuario alta en tabla';
comment on column LIQRESREAAUXDET.fmodif
  is 'Fecha modificacion de tabla';
comment on column LIQRESREAAUXDET.cusumodif
  is 'Usuario de modificacion de tabla';
comment on column LIQRESREAAUXDET.fcierre
  is 'Fecha ffin del cierre generado.';
GRANT UPDATE ON LIQRESREAAUXDET TO R_AXIS;
GRANT SELECT ON LIQRESREAAUXDET TO R_AXIS;
GRANT INSERT ON LIQRESREAAUXDET TO R_AXIS;
GRANT DELETE ON LIQRESREAAUXDET TO R_AXIS;
GRANT SELECT ON LIQRESREAAUXDET TO CONF_DWH;
GRANT SELECT ON LIQRESREAAUXDET TO PROGRAMADORESCSI;
CREATE OR REPLACE SYNONYM AXIS00.LIQRESREAAUXDET FOR AXIS.LIQRESREAAUXDET; 
/