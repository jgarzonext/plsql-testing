UPDATE detsarlaft_rec SET cramo = NULL;
COMMIT;
ALTER TABLE detsarlaft_rec MODIFY( cramo VARCHAR2(100));
/
