--------------------------------------------------------
--  DDL for Function FRAN_DECODE_BASE64
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "GEDOX"."FRAN_DECODE_BASE64" (p_clob_in in clob) return blob is

v_blob           blob;
v_offset         integer;
v_buffer_varchar varchar2(32000);
v_buffer_raw     raw(32000);
v_buffer_size    binary_integer := 32000;

begin

if p_clob_in is null then
return null;
end if;

dbms_lob.CREATETEMPORARY(v_blob, true);
v_offset := 1;
FOR i IN 1..CEIL(dbms_lob.GETLENGTH(p_clob_in) / v_buffer_size)
loop
dbms_lob.READ(p_clob_in, v_buffer_size, v_offset, v_buffer_varchar);
v_buffer_raw := utl_encode.BASE64_DECODE(utl_raw.CAST_TO_RAW(v_buffer_varchar));
dbms_lob.WRITEAPPEND(v_blob, utl_raw.LENGTH(v_buffer_raw), v_buffer_raw);
v_offset := v_offset + v_buffer_size;
end loop;

return v_blob;

end fran_decode_base64;

/
