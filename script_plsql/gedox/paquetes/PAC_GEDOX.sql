--------------------------------------------------------
--  DDL for Package PAC_GEDOX
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "GEDOX"."PAC_GEDOX" IS

  FUNCTION F_VERDOC ( PIDDOC IN NUMBER, PFICHERO OUT VARCHAR2 ) RETURN NUMBER;

  FUNCTION INDEXAR ( PJOB NUMBER DEFAULT NULL ) RETURN NUMBER;

  FUNCTION CATEGORIA ( PCAT IN NUMBER, PIDIOMA IN NUMBER, PTIPO IN NUMBER ) RETURN VARCHAR2;

  FUNCTION File_Load(pusuario IN VARCHAR2,v_file_name IN VARCHAR2
  		   						 	,v_file_Dest IN VARCHAR2 DEFAULT NULL,pdescrip IN VARCHAR2,ptipo IN NUMBER,
  		   						 	pestado IN NUMBER, -- 1 - INSERT 2-UPDATE
									pcat IN NUMBER,
									error OUT VARCHAR2,
									pIDDOC IN OUT NUMBER,									
									--JAVENDANO BUG: CONF-236 22/08/2016
									P_FARCHIV IN DATE DEFAULT NULL,
									P_FELIMIN IN DATE DEFAULT NULL,
									P_FCADUCI IN DATE DEFAULT NULL
									) RETURN NUMBER;

  -- Esta función se utiliza para la carga del documento generado con Reports Server en el IAS.									
    FUNCTION File_Load_RepServer(v_file_name IN VARCHAR2
                                   ,pform IN VARCHAR2
								   ,plistado IN VARCHAR2
  		   						 	,pdescrip IN VARCHAR2
									,error OUT VARCHAR2
									,pIDDOC IN OUT NUMBER) RETURN NUMBER;
									
  FUNCTION F_ACCESOCAT ( PIDCAT IN NUMBER, pusuario IN VARCHAR2 ) RETURN NUMBER;				
  
  FUNCTION F_MOVER_BLOBTMP ( psesion IN NUMBER , pfichero IN VARCHAR2 ) RETURN NUMBER;
  
  FUNCTION F_LENDOCTEMP ( psesion IN NUMBER ) RETURN NUMBER;
  
    					

END Pac_Gedox;

/
