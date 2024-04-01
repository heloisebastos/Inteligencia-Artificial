// Agent kate in project projeto_askOne.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!falarpara.

/* Plans */


+!falarpara  <- 
	.print("Qual seu nome ?");
	.send(bob,askAll,nome(Nome)).
	
+nome(bob):nome(X) & (X == bob)<- .print("O nome e bob").
+nome(alice):nome(X) & (X == alice)<- .print("O nome e alice").


