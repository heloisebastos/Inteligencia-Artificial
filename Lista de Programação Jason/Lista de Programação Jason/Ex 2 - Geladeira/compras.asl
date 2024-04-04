// Agent compras in project Geladeira_inteligente.mas2j



/* Initial beliefs and rules */



comprar(false).

/* Initial goals */
!compra_pao(Q).
!compra_leite(Q).
!compra_chocolate(Q).
!compra_ovos(Q).

/* Plans */
+!compra_pao(Q) : Q>=0 & comprar(true) <-
	.print("Comprando 4 pães.");
	Paes = Q+4;
	.send(geladeira, tell, pao(Paes));
	-comprar(true);
	.print("Pães comprados.");
	.
	
+!compra_leite(Q) : Q>=0 & comprar(true) <-
	.print("Comprando 4 caixas de leite.");
	Caixas_de_leite = Q+4;
	.send(geladeira, tell, leite(Caixas_de_leite));
	-comprar(true);
	.print("Leite comprado.");
	.
	
+!compra_chocolate(Q) : Q>=0 & comprar(true) <-
	.print("Comprando 2 chocolates.");
	Chocolates = Q+2;
	.send(geladeira, tell, chocolate(Chocolates));
	-comprar(true);
	.print("Chocolate comprado.");
	.
	
+!compra_ovos(Q) : Q>=0 & comprar(true) <-
	.print("Comprando 12 ovos.");
	Ovos = Q+12;
	.send(geladeira, tell, ovos(Ovos));
	-comprar(true);
	.print("Ovos comprados.");
	.
	
+!compra_pao (1) : true <- .wait(0);.
+!compra_chocolate (3) : true <- .wait(0);.
+!compra_ovos (4): true <- .wait(0);.
+!compra_leite (2) : true <- .wait(0);.
