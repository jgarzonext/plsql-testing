/* Formatted on 16/06/2019 12:18*/
/* ****************************  16/06/2019  12:18 **********************************************************************
Versión           Descripción
01.               -Insert/update required records to configure the the questioso that it can show in supplimento.
                  
IAXIS-4320(Point-1)  25/05/2019 Neeraj,Chhaya(Nagpur).
********************************************************************************************************************* */



 update pregunpro 
	set cmodo='T' 
		where cmodali=11 and  --will update one records,so that it can work for both new policy and also for endrosments.
		cpregun=4780;

 update pregunpro 
	set cmodo='T' 
		where cmodali=10 and --will update two records,so that it can work for both new policy and also for endrosments.
		cpregun=4780;

 commit;
 /