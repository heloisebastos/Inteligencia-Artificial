// Agent kate in project ProjetountellHow.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!dance.

/* Plans */

-!dance[source(self)]<-
	.print("eu nao sei dancar");
	.wait(1000);
	!dance.
+!dance:~dancar(sei)[source(bob)] <- .print("eu esqueci").



