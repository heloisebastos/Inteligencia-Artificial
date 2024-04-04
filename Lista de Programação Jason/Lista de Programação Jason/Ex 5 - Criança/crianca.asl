// Agent crianca in project crianca.mas2j

/* Initial beliefs and rules */
fome(nao).
sede(nao).
sono(nao).
/* Initial goals */

!start.
!comer.
!beber.
!dormir.
/* Plans */

+!start : true <- .print("Oi!").

+!comer : true <- 
	-+fome(sim);
	.print("Estou com fome, vou comer!");
	.wait(500);
	-+fome(nao);
	.print("Já comi, não estou mais com fome");
	.wait(800);
	.
+!beber : true <- 
	.wait(800);
	-+sede(sim);
	.print("Estou com sede, vou beber algo!");
	.wait(1000);
	-+sede(nao);
	.print("Já bebi, não estou mais com sede");
	.wait(1000);
	.
	+!dormir : true <- 
	.wait(2000);
	-+sono(sim);
	.print("Estou com sono, vou dormir!");
	.wait(2500);
	-+sono(nao);
	.print("Já dormi, não estou mais com sono");
	.
