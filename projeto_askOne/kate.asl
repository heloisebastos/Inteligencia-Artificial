// Agent kate in project projeto_askOne.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!falarpara.

/* Plans */


+!falarpara  <- 
	.print("Qual seu nome ?");
	.send(bob,askOne,nome(Nome)).
 +nome(bob):nome(X)&(X=bob)<- .print("O nome e bob").

