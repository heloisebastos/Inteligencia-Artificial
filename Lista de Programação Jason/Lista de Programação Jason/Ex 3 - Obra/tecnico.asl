// Agent tecnico in project cooperacao.mas2j

/* Initial beliefs and rules */

execucao(0).
/* Initial goals */


!executar.
!processo.

/* Plans */

+!executar : true <- 
	.wait(500);
	.print("Vou executar a obra");
	.wait(100);
	.send(engenheiro,askOne,assinar(true));
.
	
+!processo : execucao(X) & X<=12 <- 
	.wait(800);
	.print(" Executando obra, duração: ",X,"Semanas");
	-+execucao(X+2);
	.wait(100);
	!processo;
	.

+!processo : true <- .wait(0);
.



