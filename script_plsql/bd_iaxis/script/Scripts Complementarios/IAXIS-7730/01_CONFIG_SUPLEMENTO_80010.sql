DELETE FROM PDS_SUPL_COD_CONFIG WHERE CCONFIG = 'conf_212_80010_suplemento_tf';
DELETE FROM PDS_SUPL_FORM WHERE CCONFIG = 'conf_212_80010_suplemento_tf';
DELETE FROM PDS_SUPL_VALIDACIO WHERE CCONFIG = 'conf_212_80010_suplemento_tf';
DELETE FROM PDS_SUPL_CONFIG WHERE CCONFIG = 'conf_212_80010_suplemento_tf';

INSERT INTO PDS_SUPL_CONFIG(CCONFIG, CMOTMOV, SPRODUC, CMODO, CTIPFEC, TFECREC, SUPLCOLEC)
VALUES('conf_212_80010_suplemento_tf', 212, 80010, 'SUPLEMENTO', 1, 'F_SYSDATE', NULL);

INSERT INTO PDS_SUPL_COD_CONFIG(CCONSUPL, CCONFIG) VALUES('SUPL_BBDD', 'conf_212_80010_suplemento_tf');
INSERT INTO PDS_SUPL_COD_CONFIG(CCONSUPL, CCONFIG) VALUES('SUPL_TOTAL', 'conf_212_80010_suplemento_tf');

INSERT INTO PDS_SUPL_FORM(CCONFIG, TFORM) VALUES('conf_212_80010_suplemento_tf', 'BBDD');

INSERT INTO PDS_SUPL_VALIDACIO(CCONFIG, NSELECT, TSELECT) VALUES('conf_212_80010_suplemento_tf', 1, 'BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT cagente FROM seguros WHERE sseguro = :pssegpol MINUS SELECT cagente FROM estseguros WHERE sseguro = :psseguro ); END;');


DELETE FROM CFG_WIZARD WHERE SPRODUC = 80010 AND CMODO = 'SUPLEMENTO_212';
		 
INSERT INTO CFG_WIZARD (CEMPRES, CMODO, CCFGWIZ, SPRODUC, CIDCFG) VALUES ('24', 'SUPLEMENTO_212', 'CFG_CENTRAL', '80010', '240212');
INSERT INTO CFG_WIZARD (CEMPRES, CMODO, CCFGWIZ, SPRODUC, CIDCFG) VALUES ('24', 'SUPLEMENTO_212', 'CFG_FO', '80010', '240212');	


DELETE FROM PDS_SUPL_VALIDACIO WHERE CCONFIG = 'conf_230_80010_suplemento_tf';

Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_230_80010_suplemento_tf','1',' BEGIN SELECT COUNT (1) INTO :mi_cambio FROM (SELECT pac_persona.f_sperson_spereal(sperson), ffecfin FROM estassegurats WHERE sseguro = :psseguro MINUS SELECT sperson, ffecfin FROM asegurados WHERE sseguro = :pssegpol); END;');



DELETE FROM PDS_SUPL_VALIDACIO WHERE CCONFIG = 'conf_697_80010_suplemento_tf';

Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_697_80010_suplemento_tf','1','BEGIN
                       SELECT COUNT(1)
                         INTO :mi_cambio
                         FROM (SELECT CGARANT, NVL(pac_persona.f_sperson_spereal(sperson), sperson), NVL(NVL(pac_persona.f_sperson_spereal(SPERSON_TIT), SPERSON_TIT), 0), CTIPBEN, CPAREN, PPARTICIP
                                 FROM estbenespseg e
                                WHERE sseguro = :psseguro
                               MINUS
                               SELECT CGARANT, SPERSON, SPERSON_TIT, CTIPBEN, CPAREN, PPARTICIP
                                 FROM benespseg
                                WHERE  sseguro = :pssegpol
                                UNION
                                (SELECT CGARANT, SPERSON, SPERSON_TIT, CTIPBEN, CPAREN, PPARTICIP
                                 FROM benespseg
                                WHERE  sseguro = :pssegpol
                                MINUS
                                SELECT CGARANT, NVL(pac_persona.f_sperson_spereal(sperson), sperson), NVL(NVL(pac_persona.f_sperson_spereal(SPERSON_TIT), SPERSON_TIT), 0), CTIPBEN, CPAREN, PPARTICIP
                                 FROM estbenespseg e
                                WHERE sseguro = :psseguro)); END; ');
								
								

DELETE FROM PDS_SUPL_VALIDACIO WHERE CCONFIG = 'conf_288_80010_suplemento_tf';

Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_288_80010_suplemento_tf','1','BEGIN
			 SELECT COUNT(1) INTO :mi_cambio
			 FROM (SELECT CCLAESP, TCLAESP
			 FROM ESTCLAUSUESP
			 WHERE CCLAESP = 2
			 AND SSEGURO = :psseguro
			 MINUS
			 SELECT CCLAESP, TCLAESP
			 FROM CLAUSUESP
			 WHERE CCLAESP = 2
			 AND SSEGURO = :pssegpol); END;');
Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_288_80010_suplemento_tf','4','BEGIN
									 SELECT COUNT(1) INTO :mi_cambio
									FROM (SELECT SCLAGEN
									FROM CLAUSUSEG
									WHERE SSEGURO = :pssegpol
									MINUS
									SELECT SCLAGEN
									FROM ESTCLAUSUSEG
									WHERE SSEGURO = :psseguro); END;');
Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_288_80010_suplemento_tf','3','BEGIN
									 SELECT COUNT(1) INTO :mi_cambio
									FROM (SELECT SCLAGEN
									FROM ESTCLAUSUSEG
									WHERE SSEGURO = :psseguro
									MINUS
									SELECT SCLAGEN
									FROM CLAUSUSEG
									WHERE SSEGURO = :pssegpol); END;');
Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_288_80010_suplemento_tf','2','BEGIN
			 SELECT COUNT(1) INTO :mi_cambio
			 FROM (SELECT CCLAESP, TCLAESP
			 FROM CLAUSUESP
			 WHERE CCLAESP = 2
			 AND SSEGURO = :pssegpol
			 MINUS
			 SELECT CCLAESP, TCLAESP
			 FROM ESTCLAUSUESP
			 WHERE CCLAESP = 2
			 AND SSEGURO = :psseguro); END;');
								
			 
					 
COMMIT;
/				 