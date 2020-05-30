--select * from TMP_POLIZAS_ACUERDO_PAGO

ALTER TABLE TMP_POLIZAS_ACUERDO_PAGO 
RENAME COLUMN ncertif to nrecibo;

ALTER TABLE TMP_POLIZAS_ACUERDO_PAGO ADD
(SALDO NUMBER);

--agrega literal en español
insert into axis_literales values (8,9909813,'Telefono');

update cfg_lanzar_informes set lparams = null WHERE SLITERA in (9910764); --cambiar el lparams de 1 a null
update cfg_lanzar_informes_params SET CTIPO = 1 where cmap in ( 'AcpagprimApp');--cambiar el tipo de parametro a 1 string

commit;
/