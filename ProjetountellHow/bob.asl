// Agent bob in project ProjetountellHow.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!teach(kate).

/* Plans */

+!teach(kate) <- 
	.print("Ensino a dancar...");
	.wait(2000);
	.send(kate,tellHow,"@d+!dance <-.print(\"eu sei dancar!\");.wait(500);!dance.");
	.wait(5000);
	.send(kate,tell,dancar(sei)).
	
	@d
	+!dance<-
	.print("eu sei dnaçar");.wait(500);!dance.

