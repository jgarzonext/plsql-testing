--------------------------------------------------------
--  DDL for Procedure QUERYHTML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "GEDOX"."QUERYHTML" ( prowid IN VARCHAR2, PTIPO IN NUMBER, texto OUT VARCHAR2 ) IS
    mklob CLOB;
    line VARCHAR2(120);
    amt NUMBER := 120;

     v_igedox   varchar2(100);
     v_igedoxdb varchar2(100);
BEGIN
     v_igedox    := F_Parinstalagedox_T ( 'IGEDOX');
     v_igedoxdb  := F_Parinstalagedox_T ( 'IGEDOXDB');

 IF PTIPO = 1 THEN
     --ctx_doc.filter('gedox_idx',PROWID, mklob, TRUE);
     ctx_doc.filter(v_igedox, PROWID, mklob, TRUE);
     ctx_doc.filter(v_igedoxdb, PROWID, mklob, TRUE);

 ELSIF PTIPO = 2 THEN
     --ctx_doc.filter('gedox_url_idx',PROWID, mklob, TRUE);
     null;

 ELSIF PTIPO = 3 THEN
     --ctx_doc.filter('gedox_file_idx',PROWID, mklob, TRUE);
     null;

 END IF;    

  dbms_lob.READ(mklob, amt, 1, line);
  TEXTO  := LTRIM(TRANSLATE(line,CHR(10),' '));

END; 
 

/
