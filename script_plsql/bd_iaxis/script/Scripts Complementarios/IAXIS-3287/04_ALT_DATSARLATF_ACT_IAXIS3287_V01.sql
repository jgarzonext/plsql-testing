UPDATE detsarlatf_act SET ctipoprod = NULL;
COMMIT;
ALTER TABLE detsarlatf_act MODIFY( CTIPOPROD VARCHAR2(100));
/
