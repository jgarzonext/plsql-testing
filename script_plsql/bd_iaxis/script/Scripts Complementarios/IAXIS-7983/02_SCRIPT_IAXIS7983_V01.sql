/* Formatted on 12/12/2019 18:30*/
/* **************************** 12/12/2019 18:30 **********************************************************************
Versi�n           Descripci�n
01.               -Este script crea la tabla de auditor�a HIS_COMRECIBO
IAXIS-7983         12/12/2019 Daniel Rodr�guez
***********************************************************************************************************************/
create table HIS_COMRECIBO
(
  nrecibo           NUMBER,
  nnumcom           NUMBER(6),
  cagente           NUMBER,
  cestrec           NUMBER(1),
  fmovdia           DATE,
  fcontab           DATE,
  icombru           NUMBER,
  icomret           NUMBER,
  icomdev           NUMBER,
  iretdev           NUMBER,
  nmovimi           NUMBER(4),
  icombru_moncia    NUMBER,
  icomret_moncia    NUMBER,
  icomdev_moncia    NUMBER,
  iretdev_moncia    NUMBER,
  fcambio           DATE,
  cgarant           NUMBER(4),
  icomcedida        NUMBER,
  icomcedida_moncia NUMBER,
  ccompan           NUMBER(3) not null,
  ivacomisi         NUMBER,
  creccia           VARCHAR2(50),
  ttrx              VARCHAR2(10), 
  ttraza            VARCHAR2(4000),
  cusualt           VARCHAR2(20),
  falta             DATE
) ;
-- Add comments to the table 
comment on table HIS_COMRECIBO
  is 'Comisiones del recibo';
-- Add comments to the columns 
comment on column HIS_COMRECIBO.nrecibo
  is 'N�mero de recibo';
comment on column HIS_COMRECIBO.nnumcom
  is 'N�mero calculo comision recibo';
comment on column HIS_COMRECIBO.cagente
  is 'C�digo de agente';
comment on column HIS_COMRECIBO.cestrec
  is 'Estado del recibo';
comment on column HIS_COMRECIBO.fmovdia
  is 'Fecha d�a que se hace el movimiento';
comment on column HIS_COMRECIBO.fcontab
  is 'Fecha contable';
comment on column HIS_COMRECIBO.icombru
  is 'Comisi�n bruta';
comment on column HIS_COMRECIBO.icomret
  is 'Retenci�n s/Comisi�n';
comment on column HIS_COMRECIBO.icomdev
  is 'Comisi�n devengada';
comment on column HIS_COMRECIBO.iretdev
  is 'Retenci�n devengada';
comment on column HIS_COMRECIBO.nmovimi
  is 'N�mero del movimiento que lo genera';
comment on column HIS_COMRECIBO.icombru_moncia
  is 'Comisi�n bruta en la moneda de la empresa';
comment on column HIS_COMRECIBO.icomret_moncia
  is 'Retenci�n s/comisi�n en la moneda de la empresa';
comment on column HIS_COMRECIBO.icomdev_moncia
  is 'Comisi�n devengada en la moneda de la empresa';
comment on column HIS_COMRECIBO.iretdev_moncia
  is 'Retenci�n s/comisi�n devengada en la moneda de la empresa';
comment on column HIS_COMRECIBO.fcambio
  is 'Fecha empleada para el c�lculo de los contravalores';
comment on column HIS_COMRECIBO.cgarant
  is 'C�digo de la garant�a';
comment on column HIS_COMRECIBO.icomcedida
  is 'Comisi�n cedida';
comment on column HIS_COMRECIBO.icomcedida_moncia
  is 'Comisi�n cedida moneda de la empresa';
comment on column HIS_COMRECIBO.ccompan
  is 'C�digo compa��a (Si es cero es por corretaje)';
comment on column HIS_COMRECIBO.ivacomisi
  is 'iva del intermediario si aplica, inter. unico o multiple';
comment on column HIS_COMRECIBO.creccia
  is 'Identificador de recibo (comisiones 20, 21) en sistema externo';
comment on column HIS_COMRECIBO.ttrx
  is 'Transacci�n realizada';  
comment on column HIS_COMRECIBO.ttraza
  is 'Pila de llamado en formato';  
comment on column HIS_COMRECIBO.cusualt
  is 'C�digo usuario alta del registro';
comment on column HIS_COMRECIBO.falta
  is 'Fecha alta del registro';  
  
-- Create/Recreate indexes 
create index HIS_COMRECIBO_I1 on HIS_COMRECIBO (CAGENTE);

-- Create/Recreate check constraints 
alter table HIS_COMRECIBO
  add constraint HIS_COMRECIBO_CAGENTE_NN
  check ("CAGENTE" IS NOT NULL);
alter table HIS_COMRECIBO
  add constraint HIS_COMRECIBO_CESTREC_NN
  check ("CESTREC" IS NOT NULL);
alter table HIS_COMRECIBO
  add constraint HIS_COMRECIBO_ICOMBRU_NN
  check ("ICOMBRU" IS NOT NULL);
alter table HIS_COMRECIBO
  add constraint HIS_COMRECIBO_ICOMRET_NN
  check ("ICOMRET" IS NOT NULL);
alter table HIS_COMRECIBO
  add constraint HIS_COMRECIBO_NNUMCOM_NN
  check ("NNUMCOM" IS NOT NULL);
alter table HIS_COMRECIBO
  add constraint HIS_COMRECIBO_NRECIBO_NN
  check ("NRECIBO" IS NOT NULL);
-- Grant/Revoke object privileges 
grant select on AXIS.HIS_COMRECIBO to R_AXIS;
create or replace synonym AXIS00.HIS_COMRECIBO for AXIS.HIS_COMRECIBO; 
/