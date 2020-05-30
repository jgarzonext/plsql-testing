--------------------------------------------------------
--  DDL for Trigger TRG_CONTRATOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CONTRATOS" 
   AFTER UPDATE ON contratos
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SCONTRA = ' || :old.scontra;
BEGIN
   --
   p_his_procesosrea('CONTRATOS', vindica, 'NVERSIO', :old.nversio, :new.nversio);
   p_his_procesosrea('CONTRATOS', vindica, 'NPRIORI', :old.npriori, :new.npriori);
   p_his_procesosrea('CONTRATOS', vindica, 'FCONINI', :old.fconini, :new.fconini);
   p_his_procesosrea('CONTRATOS', vindica, 'NCONREL', :old.nconrel, :new.nconrel);
   p_his_procesosrea('CONTRATOS', vindica, 'FCONFIN', :old.fconfin, :new.fconfin);
   p_his_procesosrea('CONTRATOS', vindica, 'IAUTORI', :old.iautori, :new.iautori);
   p_his_procesosrea('CONTRATOS', vindica, 'IRETENC', :old.iretenc, :new.iretenc);
   p_his_procesosrea('CONTRATOS', vindica, 'IMINCES', :old.iminces, :new.iminces);
   p_his_procesosrea('CONTRATOS', vindica, 'ICAPACI', :old.icapaci, :new.icapaci);
   p_his_procesosrea('CONTRATOS', vindica, 'IPRIOXL', :old.iprioxl, :new.iprioxl);
   p_his_procesosrea('CONTRATOS', vindica, 'PPRIOSL', :old.ppriosl, :new.ppriosl);
   p_his_procesosrea('CONTRATOS', vindica, 'TCONTRA', :old.tcontra, :new.tcontra);
   p_his_procesosrea('CONTRATOS', vindica, 'TOBSERV', :old.tobserv, :new.tobserv);
   p_his_procesosrea('CONTRATOS', vindica, 'PCEDIDO', :old.pcedido, :new.pcedido);
   p_his_procesosrea('CONTRATOS', vindica, 'PRIESGOS', :old.priesgos, :new.priesgos);
   p_his_procesosrea('CONTRATOS', vindica, 'PDESCUENTO', :old.pdescuento, :new.pdescuento);
   p_his_procesosrea('CONTRATOS', vindica, 'PGASTOS', :old.pgastos, :new.pgastos);
   p_his_procesosrea('CONTRATOS', vindica, 'PPARTBENE', :old.ppartbene, :new.ppartbene);
   p_his_procesosrea('CONTRATOS', vindica, 'CREAFAC', :old.creafac, :new.creafac);
   p_his_procesosrea('CONTRATOS', vindica, 'PCESEXT', :old.pcesext, :new.pcesext);
   p_his_procesosrea('CONTRATOS', vindica, 'CGARREL', :old.cgarrel, :new.cgarrel);
   p_his_procesosrea('CONTRATOS', vindica, 'CFRECUL', :old.cfrecul, :new.cfrecul);
   p_his_procesosrea('CONTRATOS', vindica, 'SCONQP', :old.sconqp, :new.sconqp);
   p_his_procesosrea('CONTRATOS', vindica, 'NVERQP', :old.nverqp, :new.nverqp);
   p_his_procesosrea('CONTRATOS', vindica, 'IAGREGA', :old.iagrega, :new.iagrega);
   p_his_procesosrea('CONTRATOS', vindica, 'IMAXAGR', :old.imaxagr, :new.imaxagr);
   p_his_procesosrea('CONTRATOS', vindica, 'PDEPOSITO', :old.pdeposito, :new.pdeposito);
   p_his_procesosrea('CONTRATOS', vindica, 'CDETCES', :old.cdetces, :new.cdetces);
   p_his_procesosrea('CONTRATOS', vindica, 'CLAVECBR', :old.clavecbr, :new.clavecbr);
   p_his_procesosrea('CONTRATOS', vindica, 'CERCARTERA', :old.cercartera, :new.cercartera);
   p_his_procesosrea('CONTRATOS', vindica, 'NANYOSLOSS', :old.nanyosloss, :new.nanyosloss);
   p_his_procesosrea('CONTRATOS', vindica, 'CBASEXL', :old.cbasexl, :new.cbasexl);
   p_his_procesosrea('CONTRATOS', vindica, 'CLOSSCORRIDOR', :old.closscorridor, :new.closscorridor);
   p_his_procesosrea('CONTRATOS', vindica, 'CCAPPEDRATIO', :old.ccappedratio, :new.ccappedratio);
   p_his_procesosrea('CONTRATOS', vindica, 'SCONTRAPROT', :old.scontraprot, :new.scontraprot);
   p_his_procesosrea('CONTRATOS', vindica, 'CESTADO', :old.cestado, :new.cestado);
   p_his_procesosrea('CONTRATOS', vindica, 'NVERSIOPROT', :old.nversioprot, :new.nversioprot);
   p_his_procesosrea('CONTRATOS', vindica, 'IPRIMAESPERADAS', :old.iprimaesperadas, :new.iprimaesperadas);
   p_his_procesosrea('CONTRATOS', vindica, 'CTPREEST', :old.ctpreest, :new.ctpreest);
   p_his_procesosrea('CONTRATOS', vindica, 'PCOMEXT', :old.pcomext, :new.pcomext);
   --
END trg_contratos;


/
ALTER TRIGGER "AXIS"."TRG_CONTRATOS" ENABLE;
