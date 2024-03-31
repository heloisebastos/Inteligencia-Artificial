// Agent kate in project ProjetoBroadcast.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!talkTo.

/* Plans */

+!talkTo: true <- .print("I'm beautiful.");
	.broadcast(tell,kate(beautiful)).

