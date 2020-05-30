DELETE FROM detsarlaft_rec d WHERE d.ssarlaft IS NULL;
COMMIT;
ALTER TABLE detsarlaft_rec MODIFY (ssarlaft NOT NULL);

/