/* 
CONFIGURACIÓN CFG_FORM_PROPERTY PARA AXISCTR026, AXISCTR002, AXISCTR003 Y AXISCTR187 
*/

DELETE FROM CFG_FORM_PROPERTY
WHERE CFORM IN ('AXISCTR026', 'AXISCTR002', 'AXISCTR003','AXISCTR187')
AND CIDCFG IN (SELECT DISTINCT CIDCFG FROM CFG_FORM
 WHERE CFORM IN ('AXISCTR026', 'AXISCTR002', 'AXISCTR003','AXISCTR187'))
 AND CITEM IN ('NNUMIDE', 'TNOMBRE', 'CDOMICI', 'TCIUDAD', 'TTELEFONO', 'TCORREOELEC', 'TCIUDAD_ASE', 'TTELEFONO_ASE', 'TCORREOELEC_ASE', 'FNACIMI', 'CSEXO', 'SNIP', 'TSEXPER', 'TTELEFONO', 'FCARNET', 'FECRETROACT', 'CPAREN_ASEG', 'CDOMICI_GEST');
 --150 ROWS WAS DELETE
 COMMIT;
INSERT INTO CFG_FORM_PROPERTY VALUES (24,800101,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,240612,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,611001,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,201005,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR026','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,240612,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,800101,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,201005,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,611001,'AXISCTR026','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,201005,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,611001,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,240612,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,800101,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR026','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,800101,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,611001,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,240612,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,201005,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR026','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,800101,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,201005,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,240612,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,611001,'AXISCTR026','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,800101,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,201005,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,240612,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,611001,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR026','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,800101,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,240612,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,201005,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,611001,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR026','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,240612,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,611001,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,800101,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,201005,'AXISCTR026','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR026','CDOMICI_GEST', 1, 0);
COMMIT;
INSERT INTO CFG_FORM_PROPERTY VALUES (24,696001,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,160232,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,10009,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,673001,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,160231,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,16023,'AXISCTR002','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,696001,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,160231,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,160232,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,10009,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,673001,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,16023,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR002','CSEXO', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,160232,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,10009,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,673001,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,16023,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,696001,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,160231,'AXISCTR002','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR002','SNIP', 1, 0);
COMMIT;
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,230001,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,697001,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,603119,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,992002,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,677001,'AXISCTR003','FNACIMI', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,230001,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,697001,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,677001,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,992002,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,603119,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR003','TSEXPER', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,677001,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,230001,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,992002,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,697001,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,603119,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR003','SNIP', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,992002,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,603119,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,230001,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,697001,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,677001,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR003','FCARNET', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,677001,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,992002,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,603119,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,230001,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,697001,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR003','FECRETROACT', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808901,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806301,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806201,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808501,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808701,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808601,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806501,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,230001,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,992002,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,697001,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,603119,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,803801,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,806401,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,808801,'AXISCTR003','CPAREN_ASEG', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,677001,'AXISCTR003','CPAREN_ASEG', 1, 0);
COMMIT;
INSERT INTO CFG_FORM_PROPERTY VALUES (24,611001,'AXISCTR187','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,697001,'AXISCTR187','CDOMICI_GEST', 1, 0);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1,'AXISCTR187','CDOMICI_GEST', 1, 0);
COMMIT;

/