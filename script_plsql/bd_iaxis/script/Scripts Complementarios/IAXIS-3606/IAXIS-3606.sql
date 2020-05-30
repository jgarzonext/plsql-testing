DELETE FROM PDS_POST_SUPL WHERE CCONFIG LIKE 'conf_915_80001_suplemento_tf' AND NORDEN = 1 AND TFUNCION like 'pk_suplementos.f_ins_contragaran_pol';
DELETE FROM PDS_SUPL_CONFIG WHERE CCONFIG LIKE 'conf_915_80001_suplemento_tf' AND CMOTMOV = 915 AND SPRODUC = 80001 AND CMODO LIKE 'SUPLEMENTO' AND CTIPFEC = 1 AND TFECREC LIKE 'F_SYSDATE';


INSERT INTO PDS_SUPL_CONFIG (CCONFIG,CMOTMOV,SPRODUC,CMODO,CTIPFEC,TFECREC) VALUES ('conf_915_80001_suplemento_tf',915,80001,'SUPLEMENTO',1,'F_SYSDATE');
INSERT INTO PDS_POST_SUPL (CCONFIG,NORDEN,TFUNCION) VALUES ('conf_915_80001_suplemento_tf',1,'pk_suplementos.f_ins_contragaran_pol');

COMMIT;

/