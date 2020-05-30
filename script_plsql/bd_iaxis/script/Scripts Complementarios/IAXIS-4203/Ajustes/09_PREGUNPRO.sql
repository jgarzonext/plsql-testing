DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE pregunpro WHERE cpregun = 6556 AND sproduc BETWEEN 80038 AND 80044;
	
	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6556,5,0,802,1,80038,2,16,'pac_propio_albsgt_conf.f_recupera_comision()',1,6,NULL,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);
	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6556,6,0,802,1,80039,2,16,'pac_propio_albsgt_conf.f_recupera_comision()',1,6,NULL,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);
	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6556,6,0,802,2,80040,2,16,'pac_propio_albsgt_conf.f_recupera_comision()',1,6,NULL,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);

	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6556,7,0,802,1,80041,2,16,'pac_propio_albsgt_conf.f_recupera_comision()',1,6,NULL,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);
	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6556,8,0,802,1,80042,2,16,'pac_propio_albsgt_conf.f_recupera_comision()',1,6,NULL,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);
	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6556,8,0,802,2,80043,2,16,'pac_propio_albsgt_conf.f_recupera_comision()',1,6,NULL,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);

	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6556,9,0,802,1,80044,2,6,'pac_propio_albsgt_conf.f_recupera_comision()',1,6,NULL,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);
	
	

	DELETE pregunpro WHERE cpregun = 6623 AND sproduc BETWEEN 80038 AND 80044;

	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6623,5,0,802,1,80038,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);
	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6623,6,0,802,1,80039,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);
	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6623,6,0,802,2,80040,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);

	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6623,7,0,802,1,80041,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);
	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6623,8,0,802,1,80042,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);
	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6623,8,0,802,2,80043,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);

	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6623,9,0,802,1,80044,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);


	DELETE pregunprogaran WHERE cpregun = 6623 AND sproduc BETWEEN 80038 AND 80044;

	
	DELETE pregunpro WHERE cpregun = 6549 AND sproduc BETWEEN 80038 AND 80044;

	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6549,5,0,802,1,80038,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);
	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6549,6,0,802,1,80039,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);
	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6549,6,0,802,2,80040,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);

	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6549,7,0,802,1,80041,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);
	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6549,8,0,802,1,80042,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);
	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6549,8,0,802,2,80043,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);

	INSERT INTO pregunpro (cpregun,cmodali,ccolect,cramo,ctipseg,sproduc,cpretip,npreord,tprefor,cpreobl,npreimp,cresdef,cofersn,ctabla,tvalfor,cmodo,cnivel,ctarpol,cvisible,esccero,visiblecol,visiblecert,crecarg,ccalcular,tmodalidad,ctipconv) 
		VALUES (6549,9,0,802,1,80044,3,22,NULL,1,22,0,1,NULL,NULL,'T','R',1,2,0,1,1,0,1,NULL,NULL);

	DELETE pregunprogaran WHERE cpregun = 6549 AND sproduc BETWEEN 80038 AND 80044;
	
	
	
	DELETE pregunpro WHERE cpregun = 2881 AND sproduc BETWEEN 80038 AND 80044;
	

	COMMIT;
	
END;
/