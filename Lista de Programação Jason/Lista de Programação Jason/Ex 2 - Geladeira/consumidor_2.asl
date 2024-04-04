// Agent consumidor_2 in project Geladeira_inteligente.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!tomar_leite.
!comer_chocolate.

/* Plans */

+!tomar_leite : true <-
	.wait(1500);
	.print("Vou tomar leite.");
	.send(geladeira, tell, pegar_leite(true));
	.send(geladeira, achieve, pegar(leite, 1));
	.send(geladeira, untell, pegar_leite(true));
	.
	
+!comer_chocolate : true <-
	.wait(2000);
	.print("Vou comer chocolate.");
	.send(geladeira, tell, pegar_chocolate(true));
	.send(geladeira, achieve, pegar(chocolate, 1));
	.send(geladeira, untell, pegar_chocolate(true));
	.
