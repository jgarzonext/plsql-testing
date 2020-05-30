delete from parinstalacion where cparame in ('WALLET_PASS','WALLET_PATH','P_FROM','P_FROM_PASS');
delete from CODPARAM where CPARAM in ('WALLET_PASS','WALLET_PATH','P_FROM','P_FROM_PASS');
--
insert into codparam (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
values ('WALLET_PATH', 4, 1, 'GEN', 123, 0, null, 1);
insert into codparam (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
values ('WALLET_PASS', 4, 1, 'GEN', 123, 0, null, 1);
--
insert into parinstalacion (CPARAME, CTIPPAR, TVALPAR, NVALPAR, FVALPAR)
values ('WALLET_PATH', 1, '/AXISBD/app/oracle/product/12.1.0/dbhome_1/owm/wallets/oracle', null, null);
insert into parinstalacion (CPARAME, CTIPPAR, TVALPAR, NVALPAR, FVALPAR)
values ('WALLET_PASS', 1, 'Confianza01', null, null);
--
insert into codparam (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
values ('P_FROM', 4, 1, 'GEN', 123, 0, null, 1);
insert into codparam (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
values ('P_FROM_PASS', 4, 1, 'GEN', 123, 0, null, 1);
--
insert into parinstalacion (CPARAME, CTIPPAR, TVALPAR, NVALPAR, FVALPAR)
values ('P_FROM', 1, 'abenavidez.ext@confianza.com.co', null, null);
insert into parinstalacion (CPARAME, CTIPPAR, TVALPAR, NVALPAR, FVALPAR)
values ('P_FROM_PASS', 1, 'Segur-15621', null, null);
--
COMMIT;
/