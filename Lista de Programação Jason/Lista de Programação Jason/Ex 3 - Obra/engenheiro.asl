// Agent engenheiro in project cooperacao.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!planejar.
!assinar.

/* Plans */

+!planejar : true <- 
	.wait(300);
	.print("Vou realizar o projeto da obra ! ");
	.wait(100);
	.send(cliente,tell, planejar(true));
	.print("Pode executar a obra !");
	.wait(100);
	.send(tecnico,askOne, executar(true));
.

+!assinar : true <-
	.wait(9000);
	.print("Assinando entrega da obra");
	.send(cliente,askOne,recebimento);
.


