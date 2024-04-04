// Agent kate in project Projeto_unachieve.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!falarpara.

/* Plans */

+!falarpara : true <-
	.print("liga a luz,por gentileza.");
	//kate envia o objetivo a ser atingido
	.send(bob,achieve,luz(ligar)). 
	
	//kate pede pro bob mandar luz ligada
	+manter(ligada) <-
		.send(bob, unachieve, luz(ligar)).
	
	

