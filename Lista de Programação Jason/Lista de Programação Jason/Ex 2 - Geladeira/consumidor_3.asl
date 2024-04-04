// Agent consumidor_3 in project Geladeira_inteligente.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!comer_pao.

/* Plans */

+!comer_pao : true <- 
	.wait(3000);
	.print("Vou comer pão.");
	.send(geladeira, tell, pegar_pao(true));
	.send(geladeira, achieve, pegar(pao, 2));
	.send(geladeira, untell, pegar_pao(true));
	.
