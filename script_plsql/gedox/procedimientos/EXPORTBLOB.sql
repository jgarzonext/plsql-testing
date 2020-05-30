--------------------------------------------------------
--  DDL for Procedure EXPORTBLOB
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "GEDOX"."EXPORTBLOB" (p_file  IN  VARCHAR2,
                                        p_blob  IN  BLOB)
AS LANGUAGE JAVA
NAME 'BlobHandler.ExportBlob(java.lang.String, oracle.sql.BLOB)';

 

/
