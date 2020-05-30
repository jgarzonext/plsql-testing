DELETE FROM detsarlatf_act d WHERE d.ssarlaft IS NULL;
COMMIT;
ALTER TABLE detsarlatf_act MODIFY (ssarlaft NOT NULL);
/


