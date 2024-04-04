// Agent kate in project Projeto_Tell.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start : true <- .print("hello world.");
	.send(bob,tell,kate(hello)).
	

