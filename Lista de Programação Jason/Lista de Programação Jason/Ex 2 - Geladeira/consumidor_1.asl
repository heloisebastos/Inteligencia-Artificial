// Agent consumidor_1 in project Geladeira_inteligente.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!comer_pao.
!fazer_bolo.

/* Plans */

+!comer_pao : true <- 
	.wait(1000);
	.print("Vou comer pão.");
	.send(geladeira, tell, pegar_pao(true));
	.send(geladeira, achieve, pegar(pao, 1));
	.send(geladeira, untell, pegar_pao(true));
	.
	
+!fazer_bolo : true <-
	.wait(4500);
	.print("Vou fazer um bolo de chocolate");
	.send(geladeira, tell, pegar_ovos(true));
	.send(geladeira, achieve, pegar(ovos, 8));
	.send(geladeira, tell, pegar_leite(true));
	.send(geladeira, achieve, pegar(leite, 2));
	.send(geladeira, tell, pegar_chocolate(true));
	.send(geladeira, achieve, pegar(chocolate, 2));
	.send(geladeira, untell, pegar_ovos(true));
	.send(geladeira, untell, pegar_leite(true));
	.send(geladeira, untell, pegar_chocolate(true));
	.
