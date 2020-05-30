DECLARE
  --
  v_constraint_name VARCHAR2(50);
  v_sentencia       VARCHAR2(500);
  existe_constraint EXCEPTION;
  PRAGMA EXCEPTION_INIT(existe_constraint, -955);
  --
BEGIN
  --
  SELECT constraint_name
    INTO v_constraint_name
    FROM all_constraints
   WHERE table_name = 'DETSARLAFT_REC'
     AND constraint_type = 'P'
     AND owner = user;
  --
  v_sentencia := 'alter index ' || v_constraint_name ||
                 ' rename to PK_DETSARLAFT_REC';
  --
  EXECUTE IMMEDIATE v_sentencia;
  --
  v_sentencia := 'alter table DETSARLAFT_REC rename constraint ' ||
                 v_constraint_name || ' to PK_DETSARLAFT_REC';
  --
  EXECUTE IMMEDIATE v_sentencia;
  --    
EXCEPTION WHEN existe_constraint 
  THEN
    DBMS_OUTPUT.put_line('Ya existe el índice y constraint en la tabla');
END;
/




