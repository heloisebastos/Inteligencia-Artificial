// Agent vendedor in project Mercado.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!start.
!produtos.

/* Plans */

+!start : true <- .print("Verificando estoque").

+!produtos : true <-
					.wait(300);
					.send(registrador, askOne, leite(1), Reply);
					+Reply;
					.

