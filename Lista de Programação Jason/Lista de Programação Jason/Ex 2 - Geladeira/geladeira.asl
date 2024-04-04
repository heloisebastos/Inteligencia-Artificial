// Agent geladeira in project Geladeira_inteligente.mas2j

/* Initial beliefs and rules */


/* Initial goals */


!estoque_inicial.
!pegar(Item, Q).
!comprar(Item).

/* Plans */
+!estoque_inicial : true <-
	.wait(500);
	.print(" ");
	.print("Inicialmente a geladeira possui: pao(4), leite(2), ovo(12) e chocolate(1)");
	+pao(4);
	+leite(2);
	+ovos(12);
	+chocolate(1);
	.
	
	
	// Pão
+!pegar(Item, Q) : Item == pao & pao(N) & N>=Q & pegar_pao(true)<-
	.print(Q, " pão/pães foi/foram consumido(s)");
	-+pao(N-Q);
	+comprar_pao(true);
	!comprar(pao);
	-comprar_pao(true);
	.
	
+!comprar(Item) : Item == pao & pao(Q) & Q<=1 & comprar_pao(true)<-
	.print("Precisa comprar pão.");
	.send(compras, tell, comprar(true));
	.send(compras, achieve, compra_pao(Q));
	-pao(Q);
	.
	
	
	// Leite
+!pegar(Item, Q) : Item == leite & leite(N) & N>=Q & pegar_leite(true)<-
	.print(Q, " caixa(s) de leite foi/foram consumido(s)");
	-+leite(N-Q);
	+comprar_leite(true);
	!comprar(leite);
	-comprar_leite(true);
	.
	
+!comprar(Item) : Item == leite & leite(Q) & Q<=1 & comprar_leite(true)<-
	.print("Precisa comprar leite.");
	.send(compras, tell, comprar(true));
	.send(compras, achieve, compra_leite(Q));
	-leite(Q);
	.
	
	// Chocolate
+!pegar(Item, Q) : Item == chocolate & chocolate(N) & N>=Q & pegar_chocolate(true)<-
	.print(Q, " chocolate(s) foi/foram consumido(s)");
	-+chocolate(N-Q);
	+comprar_chocolate(true);
	!comprar(chocolate);
	-comprar_chocolate(true);
	.
	
+!comprar(Item) : Item == chocolate & chocolate(Q) & Q>=0 & comprar_chocolate(true)<-
	.print("Precisa comprar chocolate.");
	.send(compras, tell, comprar(true));
	.send(compras, achieve, compra_chocolate(Q));
	-chocolate(Q);
	.
	
	// Ovos
+!pegar(Item, Q) : Item == ovos & ovos(N) & N>=Q & pegar_ovos(true)<-
	.print(Q, " ovo(s) foi/foram consumido(s)");
	-+ovos(N-Q);
	+comprar_ovos(true);
	!comprar(ovos);
	-comprar_ovos(true);
	.
	
+!comprar(Item) : Item == ovos & ovos(Q) & Q<6 & comprar_ovos(true)<-
	.print("Precisa comprar ovos.");
	.send(compras, tell, comprar(true));
	.send(compras, achieve, compra_ovos(Q));
	-ovos(Q);
	.
	
	+!comprar(leite) : true <- .wait(0);.
	+!pegar(leite,2) : true <- .wait(0);.
	+!comprar(pao) : true <- .wait(0);.
    +!pegar(Item,22) : true <- .wait(0);.
