--Productos
--RC CLINICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 3, vmodalidad: 1
--select * from clausupro where cramo=802 and cmodali=1 and ctipseg=3 and ccolect=0;

DELETE FROM CLAUSUGAR WHERE sclapro between 4133 and 4137;

DELETE FROM CLAUSUPREG WHERE sclapro in (89475);

DELETE FROM CLAUSUPRO WHERE cramo=802 AND cmodali=1 AND ctipseg=3 AND ccolect=0;

--RC MEDICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 1
--select * from clausupro where cramo=802 and cmodali=1 and ctipseg=2 and ccolect=0;

DELETE FROM CLAUSUPREG WHERE sclapro in (89474);

DELETE FROM CLAUSUPRO WHERE cramo=802 AND cmodali=1 AND ctipseg=2 AND ccolect=0;

--RC GENERAL
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 9
--select * from clausupro where cramo=802 and cmodali=9 and ctipseg=1 and ccolect=0 order by sclapro ;

DELETE FROM CLAUSUGAR WHERE sclapro between 89346 and 89396;

DELETE FROM CLAUSUGAR WHERE sclapro = 89473;

DELETE FROM CLAUSUPREG WHERE sclapro between 89346 and 89396;

DELETE FROM CLAUSUPREG WHERE sclapro = 89473;

DELETE FROM CLAUSUPRO WHERE cramo=802 AND cmodali=9 AND ctipseg=1 AND ccolect=0;


--RC DERIVADA DE CONTRATO
--PESOS
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 5
--select * from clausupro where cramo=802 and cmodali=5 and ctipseg=1 and ccolect=0 order by sclapro ; 

DELETE FROM CLAUSUGAR WHERE sclapro between 88942 and 89467;

DELETE FROM CLAUSUPREG WHERE sclapro between 88942 and 89467;

DELETE FROM CLAUSUPRO WHERE cramo=802 AND cmodali=5 AND ctipseg=1 AND ccolect=0;

--DOLAR
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 6
--select * from clausupro where cramo=802 and cmodali=6 and ctipseg=1 and ccolect=0 order by sclapro;

DELETE FROM CLAUSUGAR WHERE sclapro between 88999 and 89469;

DELETE FROM CLAUSUPREG WHERE sclapro between 88999 and 89469;

DELETE FROM CLAUSUPRO WHERE cramo=802 AND cmodali=6 AND ctipseg=1 AND ccolect=0;

--EURO
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 6
--select * from clausupro where cramo=802 and cmodali=6 and ctipseg=2 and ccolect=0;

DELETE FROM CLAUSUGAR WHERE sclapro between 89063 and 89468;

DELETE FROM CLAUSUPREG WHERE sclapro between 89063 and 89468;

DELETE FROM CLAUSUPRO WHERE cramo=802 AND cmodali=6 AND ctipseg=2 AND ccolect=0;