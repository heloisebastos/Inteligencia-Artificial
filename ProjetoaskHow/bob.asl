// Agent bob in project ProjetoaskHow.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!teach(kate).

/* Plans */

+!teach(kate) <- 
	.print("isto e como fazemos...");
	.send(kate,tellHow,"+!luz(ligada)<- .print(\"luz ligada.\").");
	.wait(3000);
	.send(kate,achieve,luz(ligada)).
	
	+!luz(ligada)<-
	.print("luz ligada.").
