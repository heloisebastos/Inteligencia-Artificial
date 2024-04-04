// Agent cliente in project cooperacao.mas2j

recebimento.

/* Initial beliefs and rules */



/* Initial goals */

!pedido.

/* Plans */



+!pedido : true <- 
	.wait(100);
	.print("Gostaria de um projeto !");
	.wait(100);
	.send(engenheiro,askOne, planejar(true));
	.



