// Agent kate in project Projeto_askOne.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!falarpara.

/* Plans */

+!falarpara : true <- 
	.print("qual seu nome ?");
	//kate pergunta pra bob
	.send(bob, askOne, nome(Nome),Reply);
	+Reply.
