UPDATE CFG_FORM_PROPERTY
SET CVALUE = 1
WHERE CFORM = 'AXISCGA002'
AND CITEM = 'TCAUSA'
AND CPRPTY = 3
AND CIDCFG = 0;

INSERT INTO CFG_FORM_PROPERTY (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 0, 'AXISCGA002', 'CTENEDOR', 4, 99840292);

INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '1', 'CORIGEN', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '2', 'CORIGEN', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '3', 'CORIGEN', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '4', 'CORIGEN', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '5', 'CORIGEN', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '6', 'CORIGEN', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '7', 'CORIGEN', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '8', 'CORIGEN', 1, 1);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '9', 'CORIGEN', 1, 1);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '10', 'CORIGEN', 1, 1);

INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '1', 'TCAUSA', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '2', 'TCAUSA', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '3', 'TCAUSA', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '4', 'TCAUSA', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '5', 'TCAUSA', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '6', 'TCAUSA', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '7', 'TCAUSA', 1, 0);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '8', 'TCAUSA', 1, 1);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '9', 'TCAUSA', 1, 1);
INSERT INTO CFG_FORM_DEP (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840292, 'CTENEDOR', '10', 'TCAUSA', 1, 1);