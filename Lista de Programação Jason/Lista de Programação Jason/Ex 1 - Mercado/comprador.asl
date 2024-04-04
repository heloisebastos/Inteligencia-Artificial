// Agent comprador in project Mercado.mas2j



/* Initial beliefs and rules */



/* Initial goals */


!comprar(leite).
!comprar(arroz).
!comprar(carne).
!comprar(nutella).


/* Plans */


+!comprar(leite) : true <- 
		.print("Quero comprar leite");
		.send(vendedor, askOne, leite(1), Reply);
		.wait(300);
		+Reply;
		.wait(500);
		.print("Leite comprado");
		.
					
+!comprar(arroz) : true <- 
		.print("Quero comprar arroz!!");
		.send(vendedor, askOne, arroz(2), Reply);
		.wait(500);
		+Reply;
		.wait(1000);
		.print("Arroz comprado");
		.					
+!comprar(carne) : true <- 
		.print("Quero comprar carne");
		.send(vendedor, askOne, carne(2), Reply);
		.wait(700);
		+Reply;
		.wait(1500);
		.print("Carne comprada");
		.
                                                                                
+!comprar(nutella) : true <- 
		.print("Quero comprar nutella");
		.send(vendedor, askOne, nutella(1), Reply);
		.wait(900);
		+Reply;
		.wait(2000);
		.print("Nutella comprada");
		.



