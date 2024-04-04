// Agent registrador in project Mercado.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!start.
!registrar.
!produto.

/* Plans */
+!start : true <-.print("Começando o processo de registro").  
+!registrar : true <- 
	+leite(4);
	+carne(3);
	+arroz(2);
	+nutella(1);
	.
	
+!produto : true <- 
		.wait(300);
		.send(vendedor, tell, leite(4));
		.send(vendedor, tell, carne(3));
		.send(vendedor, tell, arroz(2));
		.
	





