// Agent garrafa in project Garrafa.mas2j

/* Initial beliefs and rules */
volume(1000).
/* Initial goals */

!start.
!estado_garrafa.
/* Plans */

+!start : true <- .print("Iniciando").
+!estado_garrafa : volume(X) & X>100 <- 
	.wait(100);
	.print("N�o � necess�rio encher a garrafa: ",X-100,"ml");
	-+volume(X-100);
	.wait(300);
	!estado_garrafa;
	.
	
	+!estado_garrafa : volume(X) & X<=100 <- 
	.wait(200);
	.print("A garrafa est� ficando vazia: ",X,"ml");
	.send(responsavel,tell,estado_garrafa(true));
	-+volume(1000);
	.wait(600);
	.print("A garrafa est� cheia novamente: ",X*10,"ml");
	!estado_garrafa;
	.
	
	

